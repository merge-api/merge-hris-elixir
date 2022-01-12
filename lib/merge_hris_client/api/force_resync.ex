# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Api.ForceResync do
  @moduledoc """
  API calls for all endpoints tagged `ForceResync`.
  """

  alias MergeHRISClient.Connection
  import MergeHRISClient.RequestBuilder


  @doc """
  Force re-sync of all models. This is only available for organizations on Merge's Grow and Expand plans.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, MergeHRISClient.Model.SyncStatus.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec sync_status_resync_create(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.SyncStatus.t} | {:error, Tesla.Env.t}
  def sync_status_resync_create(connection, authorization, x_account_token, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/sync-status/resync")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.SyncStatus{}}
    ])
  end
end