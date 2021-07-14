# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.EndUserDetailsRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"end_user_email_address",
    :"end_user_organization_name",
    :"end_user_origin_id",
    :"categories",
    :"integration"
  ]

  @type t :: %__MODULE__{
    :"end_user_email_address" => String.t,
    :"end_user_organization_name" => String.t,
    :"end_user_origin_id" => String.t,
    :"categories" => [String.t] | nil,
    :"integration" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.EndUserDetailsRequest do
  def decode(value, _options) do
    value
  end
end
