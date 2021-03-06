# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Api.TimeOff do
  @moduledoc """
  API calls for all endpoints tagged `TimeOff`.
  """

  alias MergeHRISClient.Connection
  import MergeHRISClient.RequestBuilder


  @doc """
  Creates a `TimeOff` object with the given values.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - time_off_endpoint_request (TimeOffEndpointRequest):
  - opts (KeywordList): [optional] Optional parameters
    - :is_debug_mode (boolean()): Whether to include debug fields (such as log file links) in the response.
    - :run_async (boolean()): Whether or not third-party updates should be run asynchronously.
  ## Returns

  {:ok, MergeHRISClient.Model.TimeOffResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec time_off_create(Tesla.Env.client, String.t, String.t, MergeHRISClient.Model.TimeOffEndpointRequest.t, keyword()) :: {:ok, MergeHRISClient.Model.TimeOffResponse.t} | {:error, Tesla.Env.t}
  def time_off_create(connection, authorization, x_account_token, time_off_endpoint_request, opts \\ []) do
    optional_params = %{
      :"is_debug_mode" => :query,
      :"run_async" => :query
    }
    %{}
    |> method(:post)
    |> url("/time-off")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_param(:body, :body, time_off_endpoint_request)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MergeHRISClient.Model.TimeOffResponse{}}
    ])
  end

  @doc """
  Returns a list of `TimeOff` objects.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
    - :approver_id (String.t): If provided, will only return time off for this approver.
    - :created_after (DateTime.t): If provided, will only return objects created after this datetime.
    - :created_before (DateTime.t): If provided, will only return objects created before this datetime.
    - :cursor (String.t): The pagination cursor value.
    - :employee_id (String.t): If provided, will only return time off for this employee.
    - :include_deleted_data (boolean()): Whether to include data that was marked as deleted by third party webhooks.
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
    - :modified_after (DateTime.t): If provided, will only return objects modified after this datetime.
    - :modified_before (DateTime.t): If provided, will only return objects modified before this datetime.
    - :page_size (integer()): Number of results to return per page.
    - :remote_fields (String.t): Which fields should be returned in non-normalized form.
    - :remote_id (String.t): The API provider's ID for the given object.
    - :request_type (String.t): If provided, will only return TimeOff with this request type. Options: ('VACATION', 'SICK', 'PERSONAL', 'JURY_DUTY', 'VOLUNTEER', 'BEREAVEMENT')
    - :status (String.t): If provided, will only return TimeOff with this status. Options: ('REQUESTED', 'APPROVED', 'DECLINED', 'CANCELLED', 'DELETED')
  ## Returns

  {:ok, MergeHRISClient.Model.PaginatedTimeOffList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec time_off_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.PaginatedTimeOffList.t} | {:error, Tesla.Env.t}
  def time_off_list(connection, authorization, x_account_token, opts \\ []) do
    optional_params = %{
      :"approver_id" => :query,
      :"created_after" => :query,
      :"created_before" => :query,
      :"cursor" => :query,
      :"employee_id" => :query,
      :"include_deleted_data" => :query,
      :"include_remote_data" => :query,
      :"modified_after" => :query,
      :"modified_before" => :query,
      :"page_size" => :query,
      :"remote_fields" => :query,
      :"remote_id" => :query,
      :"request_type" => :query,
      :"status" => :query
    }
    %{}
    |> method(:get)
    |> url("/time-off")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.PaginatedTimeOffList{}}
    ])
  end

  @doc """
  Returns metadata for `TimeOff` POSTs.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, MergeHRISClient.Model.MetaResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec time_off_meta_post_retrieve(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.MetaResponse.t} | {:error, Tesla.Env.t}
  def time_off_meta_post_retrieve(connection, authorization, x_account_token, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/time-off/meta/post")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.MetaResponse{}}
    ])
  end

  @doc """
  Returns a `TimeOff` object with the given `id`.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - id (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
    - :remote_fields (String.t): Which fields should be returned in non-normalized form.
  ## Returns

  {:ok, MergeHRISClient.Model.TimeOff.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec time_off_retrieve(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.TimeOff.t} | {:error, Tesla.Env.t}
  def time_off_retrieve(connection, authorization, x_account_token, id, opts \\ []) do
    optional_params = %{
      :"include_remote_data" => :query,
      :"remote_fields" => :query
    }
    %{}
    |> method(:get)
    |> url("/time-off/#{id}")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.TimeOff{}}
    ])
  end
end
