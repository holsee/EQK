defmodule QuakeMon.Mixfile do
  use Mix.Project

  def project do
    [app: :quake_mon,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:dialyxir, "~> 0.3.5", only: [:dev]}]
  end
end
