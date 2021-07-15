# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.Team do
  @moduledoc """
  # The Team Object ### Description The `Team` object is used to represent a Team within a company. `Employee` objects are often grouped this way. Note that in the Merge HRIS API, company subdivisions are all represented with `Teams`, rather than `Teams` and `Departments`.  ### Usage Example If you're building a way to filter by `Team`, you'd hit the `GET Teams` endpoint to fetch the `Teams`, and then use the `ID` of the team your user selects to filter the `GET Employees` endpoint.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"name",
    :"parent_team",
    :"remote_data"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"name" => String.t | nil,
    :"parent_team" => String.t | nil,
    :"remote_data" => [MergeHRISClient.Model.RemoteData.t] | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.Team do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"remote_data", :list, MergeHRISClient.Model.RemoteData, options)
  end
end

