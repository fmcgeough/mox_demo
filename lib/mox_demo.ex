defmodule MoxDemo do
  @health_check Application.compile_env(
                  :mox_demo,
                  :storage_health_check,
                  MoxDemo.DataStorage.HealthCheck
                )

  def retrieve_data do
    case @health_check.check_health() do
      :ok ->
        {:ok, [1, 2, 3, 4]}

      err ->
        err
    end
  end
end
