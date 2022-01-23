defmodule Elixbacen.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :elixbacen,
      version: @version,
      elixir: "~> 1.12",
      description: "Library to get information about from claim's list of BACEN",
      source_url: "https://github.com/joao2391/elixbacen",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: [source_ref: "#{@version}", extras: ["README.md"], main: "readme"]
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
      {:httpoison, "~> 1.8"},
      {:floki, "~> 0.32.0"},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package do
    [
      maintainers: ["Joao Paulo de C. Lima"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/joao2391/elixbacen",
      }
    ]
  end

end
