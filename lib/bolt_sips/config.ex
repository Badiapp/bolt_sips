defmodule Bolt.Sips.Config do
  @moduledoc """
  just hold the user config and offer some utility for accessing it
  """

  def get_config do
    Application.get_all_env(:bolt_sips)
  end

  def put_config(new_config) do
    new_config
    |> Enum.each(
      fn ({key, value}) ->
        Application.put_env(:bolt_sips, key, value)
      end
    )
  end
end
