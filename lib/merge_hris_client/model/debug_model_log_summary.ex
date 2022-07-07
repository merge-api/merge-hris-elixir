# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.DebugModelLogSummary do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"url",
    :"method",
    :"status_code"
  ]

  @type t :: %__MODULE__{
    :"url" => String.t,
    :"method" => String.t,
    :"status_code" => integer()
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.DebugModelLogSummary do
  def decode(value, _options) do
    value
  end
end

