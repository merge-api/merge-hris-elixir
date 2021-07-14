# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.PayrollRun do
  @moduledoc """
  # The PayrollRun Object ### Description The `PayrollRun` object is used to represent a payroll run.  ### Usage Example Fetch from the `LIST PayrollRuns` endpoint and filter by `ID` to show all payroll runs.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"run_state",
    :"run_type",
    :"start_date",
    :"end_date",
    :"check_date",
    :"remote_data"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"run_state" => RunStateEnum | nil,
    :"run_type" => RunTypeEnum | nil,
    :"start_date" => DateTime.t | nil,
    :"end_date" => DateTime.t | nil,
    :"check_date" => DateTime.t | nil,
    :"remote_data" => [MergeHRISClient.Model.RemoteData.t] | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.PayrollRun do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"run_state", :struct, MergeHRISClient.Model.RunStateEnum, options)
    |> deserialize(:"run_type", :struct, MergeHRISClient.Model.RunTypeEnum, options)
    |> deserialize(:"remote_data", :list, MergeHRISClient.Model.RemoteData, options)
  end
end
