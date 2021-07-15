# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.Earning do
  @moduledoc """
  # The Earning Object ### Description The `Earning` object is used to represent an earning for a given employee's payroll run. One run could include several earnings.  ### Usage Example Fetch from the `LIST Earnings` endpoint and filter by `ID` to show all earnings.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"employee_payroll_run",
    :"amount",
    :"type",
    :"remote_data"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"employee_payroll_run" => String.t | nil,
    :"amount" => float() | nil,
    :"type" => TypeEnum | nil,
    :"remote_data" => [%{optional(String.t) => AnyType}] | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.Earning do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"type", :struct, MergeHRISClient.Model.TypeEnum, options)
  end
end

