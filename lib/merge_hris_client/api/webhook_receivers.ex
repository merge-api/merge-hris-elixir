# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Api.WebhookReceivers do
  @moduledoc """
  API calls for all endpoints tagged `WebhookReceivers`.
  """

  alias MergeHRISClient.Connection
  import MergeHRISClient.RequestBuilder


  @doc """
  Creates a `WebhookReceiver` object with the given values.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - webhook_receiver_request (WebhookReceiverRequest):
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, MergeHRISClient.Model.WebhookReceiver.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec webhook_receivers_create(Tesla.Env.client, String.t, String.t, MergeHRISClient.Model.WebhookReceiverRequest.t, keyword()) :: {:ok, MergeHRISClient.Model.WebhookReceiver.t} | {:error, Tesla.Env.t}
  def webhook_receivers_create(connection, authorization, x_account_token, webhook_receiver_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/webhook-receivers")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_param(:body, :body, webhook_receiver_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MergeHRISClient.Model.WebhookReceiver{}}
    ])
  end

  @doc """
  Returns a list of `WebhookReceiver` objects.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%WebhookReceiver{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec webhook_receivers_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(MergeHRISClient.Model.WebhookReceiver.t)} | {:error, Tesla.Env.t}
  def webhook_receivers_list(connection, authorization, x_account_token, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/webhook-receivers")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%MergeHRISClient.Model.WebhookReceiver{}]}
    ])
  end
end