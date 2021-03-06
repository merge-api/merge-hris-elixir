# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Api.PayrollRuns do
  @moduledoc """
  API calls for all endpoints tagged `PayrollRuns`.
  """

  alias MergeHRISClient.Connection
  import MergeHRISClient.RequestBuilder


  @doc """
  Returns a list of `PayrollRun` objects.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
    - :created_after (DateTime.t): If provided, will only return objects created after this datetime.
    - :created_before (DateTime.t): If provided, will only return objects created before this datetime.
    - :cursor (String.t): The pagination cursor value.
    - :ended_after (DateTime.t): If provided, will only return payroll runs ended after this datetime.
    - :ended_before (DateTime.t): If provided, will only return payroll runs ended before this datetime.
    - :include_deleted_data (boolean()): Whether to include data that was marked as deleted by third party webhooks.
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
    - :modified_after (DateTime.t): If provided, will only return objects modified after this datetime.
    - :modified_before (DateTime.t): If provided, will only return objects modified before this datetime.
    - :page_size (integer()): Number of results to return per page.
    - :remote_fields (String.t): Which fields should be returned in non-normalized form.
    - :remote_id (String.t): The API provider's ID for the given object.
    - :run_type (String.t): If provided, will only return PayrollRun's with this status. Options: ('REGULAR', 'OFF_CYCLE', 'CORRECTION', 'TERMINATION', 'SIGN_ON_BONUS')
    - :started_after (DateTime.t): If provided, will only return payroll runs started after this datetime.
    - :started_before (DateTime.t): If provided, will only return payroll runs started before this datetime.
  ## Returns

  {:ok, MergeHRISClient.Model.PaginatedPayrollRunList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec payroll_runs_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.PaginatedPayrollRunList.t} | {:error, Tesla.Env.t}
  def payroll_runs_list(connection, authorization, x_account_token, opts \\ []) do
    optional_params = %{
      :"created_after" => :query,
      :"created_before" => :query,
      :"cursor" => :query,
      :"ended_after" => :query,
      :"ended_before" => :query,
      :"include_deleted_data" => :query,
      :"include_remote_data" => :query,
      :"modified_after" => :query,
      :"modified_before" => :query,
      :"page_size" => :query,
      :"remote_fields" => :query,
      :"remote_id" => :query,
      :"run_type" => :query,
      :"started_after" => :query,
      :"started_before" => :query
    }
    %{}
    |> method(:get)
    |> url("/payroll-runs")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.PaginatedPayrollRunList{}}
    ])
  end

  @doc """
  Returns a `PayrollRun` object with the given `id`.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - id (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
    - :remote_fields (String.t): Which fields should be returned in non-normalized form.
  ## Returns

  {:ok, MergeHRISClient.Model.PayrollRun.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec payroll_runs_retrieve(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.PayrollRun.t} | {:error, Tesla.Env.t}
  def payroll_runs_retrieve(connection, authorization, x_account_token, id, opts \\ []) do
    optional_params = %{
      :"include_remote_data" => :query,
      :"remote_fields" => :query
    }
    %{}
    |> method(:get)
    |> url("/payroll-runs/#{id}")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.PayrollRun{}}
    ])
  end
end
