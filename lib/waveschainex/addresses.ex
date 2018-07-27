defmodule Waveschainex.Address do
  use Tesla

  @doc """
  Account's balance

  ## Parameters

  - client : Tesla client
  - address (String.t): Address
  - opts: Optional parameters

  """
  @spec balance(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def balance(client, address, _opts \\ []) do
    get(client, "/addresses/balance/#{address}")
  end

  @doc """
  Read all data posted by an account using Data Transactions

  ## Parameters

  - client : Tesla client
  - address (String.t): Address
  - opts: Optional parameters

  """
  @spec data(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def data(client, address, _opts \\ []) do
    get(client, "/addresses/data/#{address}")
  end

  @doc """
  Generate a address from public key

  ## Parameters

  - client : Tesla client
  - public_key (String.t): Public key Base58-encoded
  - opts: Optional parameters

  """
  @spec public_key(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def public_key(client, public_key, _opts \\ []) do
    get(client, "/addresses/publicKey/#{public_key}")
  end
end
