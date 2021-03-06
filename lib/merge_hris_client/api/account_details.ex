# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Api.AccountDetails do
  @moduledoc """
  API calls for all endpoints tagged `AccountDetails`.
  """

  alias MergeHRISClient.Connection
  import MergeHRISClient.RequestBuilder


  @doc """
  Get details for a linked account.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, MergeHRISClient.Model.AccountDetails.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec account_details_retrieve(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.AccountDetails.t} | {:error, Tesla.Env.t}
  def account_details_retrieve(connection, authorization, x_account_token, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/account-details")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.AccountDetails{}}
    ])
  end
end
