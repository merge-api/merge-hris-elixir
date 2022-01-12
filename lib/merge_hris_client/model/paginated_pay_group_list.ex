# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.PaginatedPayGroupList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"next",
    :"previous",
    :"results"
  ]

  @type t :: %__MODULE__{
    :"next" => String.t | nil,
    :"previous" => String.t | nil,
    :"results" => [MergeHRISClient.Model.PayGroup.t] | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.PaginatedPayGroupList do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :list, MergeHRISClient.Model.PayGroup, options)
  end
end

