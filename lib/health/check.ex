defmodule MoxDemo.Health.Check do
  @moduledoc """
  Behaviour for calling a health check
  """
  @callback check_health :: :ok | {:error, String.t()}
end
