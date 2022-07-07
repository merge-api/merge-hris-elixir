# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.TimeOffResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"model",
    :"warnings",
    :"errors",
    :"logs"
  ]

  @type t :: %__MODULE__{
    :"model" => MergeHRISClient.Model.TimeOff.t,
    :"warnings" => [MergeHRISClient.Model.WarningValidationProblem.t],
    :"errors" => [MergeHRISClient.Model.ErrorValidationProblem.t],
    :"logs" => [MergeHRISClient.Model.DebugModeLog.t] | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.TimeOffResponse do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"model", :struct, MergeHRISClient.Model.TimeOff, options)
    |> deserialize(:"warnings", :list, MergeHRISClient.Model.WarningValidationProblem, options)
    |> deserialize(:"errors", :list, MergeHRISClient.Model.ErrorValidationProblem, options)
    |> deserialize(:"logs", :list, MergeHRISClient.Model.DebugModeLog, options)
  end
end

