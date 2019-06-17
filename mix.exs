defmodule NiceBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :nice_bot,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {NiceBot.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_gram, "~> 0.6"},
      {:jason, "~> 1.1"}
    ]
  end
end
