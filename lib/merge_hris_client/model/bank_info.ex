# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.BankInfo do
  @moduledoc """
  # The BankInfo Object ### Description The `BankInfo` object is used to represent the Bank Account information for an Employee. This is often referenced with an Employee object.  ### Usage Example Fetch from the `LIST BankInfo` endpoint and filter by `ID` to show all bank information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"employee",
    :"account_number",
    :"routing_number",
    :"bank_name",
    :"account_type",
    :"remote_created_at",
    :"remote_data",
    :"remote_was_deleted"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"employee" => String.t | nil,
    :"account_number" => String.t | nil,
    :"routing_number" => String.t | nil,
    :"bank_name" => String.t | nil,
    :"account_type" => AccountTypeEnum | nil,
    :"remote_created_at" => DateTime.t | nil,
    :"remote_data" => [MergeHRISClient.Model.RemoteData.t] | nil,
    :"remote_was_deleted" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.BankInfo do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"account_type", :struct, MergeHRISClient.Model.AccountTypeEnum, options)
    |> deserialize(:"remote_data", :list, MergeHRISClient.Model.RemoteData, options)
  end
end

