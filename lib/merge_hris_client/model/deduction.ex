# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.Deduction do
  @moduledoc """
  # The Deduction Object ### Description The `Deduction` object is used to represent a deduction for a given employee's payroll run. One run could include several deductions.  ### Usage Example Fetch from the `LIST Deductions` endpoint and filter by `ID` to show all deductions.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"employee_payroll_run",
    :"name",
    :"employee_deduction",
    :"company_deduction",
    :"remote_data",
    :"remote_was_deleted"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"employee_payroll_run" => String.t | nil,
    :"name" => String.t | nil,
    :"employee_deduction" => float() | nil,
    :"company_deduction" => float() | nil,
    :"remote_data" => [MergeHRISClient.Model.RemoteData.t] | nil,
    :"remote_was_deleted" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.Deduction do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"remote_data", :list, MergeHRISClient.Model.RemoteData, options)
  end
end

