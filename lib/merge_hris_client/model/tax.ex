# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.Tax do
  @moduledoc """
  # The Tax Object ### Description The `Tax` object is used to represent a tax for a given employee's payroll run. One run could include several taxes.  ### Usage Example Fetch from the `LIST Taxes` endpoint and filter by `ID` to show all taxes.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"employee_payroll_run",
    :"name",
    :"amount",
    :"employer_tax",
    :"remote_was_deleted"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"employee_payroll_run" => String.t | nil,
    :"name" => String.t | nil,
    :"amount" => float() | nil,
    :"employer_tax" => boolean() | nil,
    :"remote_was_deleted" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.Tax do
  def decode(value, _options) do
    value
  end
end

