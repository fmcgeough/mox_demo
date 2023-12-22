defmodule MoxDemo.Support.Mocks do
  Mox.defmock(MoxDemo.DataStorage.HealthCheckMock, for: MoxDemo.Health.Check)
end
