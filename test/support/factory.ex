defmodule QuarantineCode.Factory do
  use ExMachina.Ecto, repo: QuarantineCode.Repo

  # This is a sample factory to make sure our setup is working correctly.
  def name_factory(_) do
    Faker.Name.name()
  end
end
