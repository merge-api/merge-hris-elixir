# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.EmployeeEndpointRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"model"
  ]

  @type t :: %__MODULE__{
    :"model" => MergeHRISClient.Model.EmployeeRequest.t
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.EmployeeEndpointRequest do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"model", :struct, MergeHRISClient.Model.EmployeeRequest, options)
  end
end

