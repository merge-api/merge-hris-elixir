# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.AccountDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"integration",
    :"category",
    :"end_user_origin_id",
    :"end_user_organization_name",
    :"end_user_email_address",
    :"status"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"integration" => String.t | nil,
    :"category" => CategoryEnum | nil,
    :"end_user_origin_id" => String.t | nil,
    :"end_user_organization_name" => String.t | nil,
    :"end_user_email_address" => String.t | nil,
    :"status" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.AccountDetails do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"category", :struct, MergeHRISClient.Model.CategoryEnum, options)
  end
end
