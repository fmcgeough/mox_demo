defmodule MoxDemoTest do
  use ExUnit.Case

  import Mox

  alias MoxDemo.DataStorage.HealthCheckMock

  setup :set_mox_global
  setup :verify_on_exit!

  describe "retrieve_data/0" do
    test "if health check passes then data is returned" do
      expect(HealthCheckMock, :check_health, 1, fn -> :ok end)
      assert {:ok, _} = MoxDemo.retrieve_data()
    end

    test "if health checkf ails then error is returned" do
      error_string = "Storage unavailable"
      expect(HealthCheckMock, :check_health, 1, fn -> {:error, error_string} end)
      assert {:error, error_string} == MoxDemo.retrieve_data()
    end
  end
end
