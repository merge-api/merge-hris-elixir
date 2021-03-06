# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.Group do
  @moduledoc """
  # The Group Object ### Description The `Group` object is used to represent Group information that employees belong to. This is often referenced with an Employee object.  Please note: The teams object will fulfill most use cases. The Groups object is for power-users that want all types of groups at a company and the optionality of pulling multiple groups for an employee.  ### Usage Example Fetch from the `LIST Employee` endpoint and expand groups to view an employee's groups.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"parent_group",
    :"name",
    :"type",
    :"remote_data",
    :"remote_was_deleted"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"parent_group" => String.t | nil,
    :"name" => String.t | nil,
    :"type" => GroupTypeEnum | nil,
    :"remote_data" => [MergeHRISClient.Model.RemoteData.t] | nil,
    :"remote_was_deleted" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.Group do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"type", :struct, MergeHRISClient.Model.GroupTypeEnum, options)
    |> deserialize(:"remote_data", :list, MergeHRISClient.Model.RemoteData, options)
  end
end

