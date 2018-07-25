# Waveschainex

Waveschainex is an Elixir/Erlang client for Waves REST API.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `waveschainex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:waveschainex, "~> 0.1.0"}
  ]
end
```

The docs can be found at [https://hexdocs.pm/waveschainex](https://hexdocs.pm/waveschainex).

## Implemented API methods

All functions are documented, covered by tests and include typespecs.

### Address module

* `balance(client, address, _opts \\ [])`: Account's balance

### Block module

* `at(client, height, _opts \\ [])`: Get block at specified height
* `height(client, _opts \\ [])`: Get blockchain height
* `last(client, _opts \\ [])`: Get last block data

### Asset module

* `balance(client, address, asset_id, _opts \\ [])`: Account balance by given asset
* `balances(client, address, _opts \\ [])`: Account's balances for all assets
* `details(client, asset_id, _opts \\ [])`: Provides detailed information about given asset

### Transaction module

* `info(client, id, _opts \\ [])`:  Get transaction info

### Node module

* `status(client, _opts \\ [])`: Get status of the running node
* `version(client, _opts \\ [])`: Get Waves node version
