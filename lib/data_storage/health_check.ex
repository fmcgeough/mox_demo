defmodule MoxDemo.DataStorage.HealthCheck do
  @behaviour MoxDemo.Health.Check

  @impl MoxDemo.Health.Check
  def check_health do
    # check the health of our data storage
    :ok
  end
end
