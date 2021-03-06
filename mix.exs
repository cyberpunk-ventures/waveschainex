defmodule Waveschainex.MixProject do
  use Mix.Project

  def project do
    [
      app: :waveschainex,
      version: "0.2.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:tesla, "~> 1.1"},
      {:jason, "~> 1.0"},
      {:assert_value, "~> 0.9"},
      {:atomic_map, "~> 0.9"},
      {:ex_doc, "0.18.4"}
    ]
  end

  defp package do
    [
      name: :waveschainex,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      description: "Elixir/Erlang client for WAVES blockchain REST API",
      maintainers: ["ontofractal"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/cyberpunk-ventures/waveschainex",
        "Cyberpunk Ventures" => "http://cyberpunk.ventures"
      }
    ]
  end
end
