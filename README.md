[![Elixbacen version](https://img.shields.io/hexpm/v/elixbacen.svg)](https://hex.pm/packages/elixbacen)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/elixbacen/)
[![Hex.pm](https://img.shields.io/hexpm/dt/elixbacen.svg)](https://hex.pm/packages/)

# Elixbacen

Elixbacen is a package that helps you to get informations from claim's list of BACEN (current quarter).

## Notes
Version 0.1.0:

- Added features to get top 03 information from claim's list of BACEN.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixbacen` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixbacen, "~> 0.1.0"}
  ]
end
```

## Features
```elixir
get_top03_bancos()

get_top03_demaisbancos()

get_top03_reclamacoes()

get_top03_administradoras_consorcio()
```

## Documentation

Documentation can be found at [https://hexdocs.pm/elixbacen](https://hexdocs.pm/elixbacen).

## License
[MIT](https://choosealicense.com/licenses/mit/)

