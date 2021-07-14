# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.TimeOffBalance do
  @moduledoc """
  # The TimeOffBalance Object ### Description The `TimeOffBalance` object is used to represent a Time Off Balance for an employee.  ### Usage Example Fetch from the `LIST TimeOffBalances` endpoint and filter by `ID` to show all time off balances.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"employee",
    :"balance",
    :"used",
    :"remote_data"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"employee" => String.t | nil,
    :"balance" => float() | nil,
    :"used" => float() | nil,
    :"remote_data" => [MergeHRISClient.Model.RemoteData.t] | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.TimeOffBalance do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"remote_data", :list, MergeHRISClient.Model.RemoteData, options)
  end
end
