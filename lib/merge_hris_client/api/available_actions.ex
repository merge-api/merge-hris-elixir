# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Api.AvailableActions do
  @moduledoc """
  API calls for all endpoints tagged `AvailableActions`.
  """

  alias MergeHRISClient.Connection
  import MergeHRISClient.RequestBuilder


  @doc """
  Returns a list of models and actions available for an account.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, MergeHRISClient.Model.AvailableActions.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec available_actions_retrieve(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.AvailableActions.t} | {:error, Tesla.Env.t}
  def available_actions_retrieve(connection, authorization, x_account_token, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/available-actions")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.AvailableActions{}}
    ])
  end
end
