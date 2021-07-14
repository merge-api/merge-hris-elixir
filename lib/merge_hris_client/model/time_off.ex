# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.TimeOff do
  @moduledoc """
  # The TimeOff Object ### Description The `TimeOff` object is used to represent a Time Off Request filed by an employee.  ### Usage Example Fetch from the `LIST TimeOffs` endpoint and filter by `ID` to show all time off requests.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"employee",
    :"approver",
    :"status",
    :"employee_note",
    :"units",
    :"amount",
    :"request_type",
    :"start_time",
    :"end_time",
    :"remote_data"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"employee" => String.t | nil,
    :"approver" => String.t | nil,
    :"status" => TimeOffStatusEnum | nil,
    :"employee_note" => String.t | nil,
    :"units" => UnitsEnum | nil,
    :"amount" => float() | nil,
    :"request_type" => RequestTypeEnum | nil,
    :"start_time" => DateTime.t | nil,
    :"end_time" => DateTime.t | nil,
    :"remote_data" => [MergeHRISClient.Model.RemoteData.t] | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.TimeOff do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, MergeHRISClient.Model.TimeOffStatusEnum, options)
    |> deserialize(:"units", :struct, MergeHRISClient.Model.UnitsEnum, options)
    |> deserialize(:"request_type", :struct, MergeHRISClient.Model.RequestTypeEnum, options)
    |> deserialize(:"remote_data", :list, MergeHRISClient.Model.RemoteData, options)
  end
end

