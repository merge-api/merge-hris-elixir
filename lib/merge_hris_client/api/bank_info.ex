# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Api.BankInfo do
  @moduledoc """
  API calls for all endpoints tagged `BankInfo`.
  """

  alias MergeHRISClient.Connection
  import MergeHRISClient.RequestBuilder


  @doc """
  Returns a list of `BankInfo` objects.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
    - :account_type (String.t): If provided, will only return BankInfo's with this account type. Options: ('SAVINGS', 'CHECKING')
    - :bank_name (String.t): If provided, will only return BankInfo's with this bank name.
    - :created_after (DateTime.t): If provided, will only return objects created after this datetime.
    - :created_before (DateTime.t): If provided, will only return objects created before this datetime.
    - :cursor (String.t): The pagination cursor value.
    - :employee_id (String.t): If provided, will only return bank accounts for this employee.
    - :include_deleted_data (boolean()): Whether to include data that was marked as deleted by third party webhooks.
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
    - :modified_after (DateTime.t): If provided, will only return objects modified after this datetime.
    - :modified_before (DateTime.t): If provided, will only return objects modified before this datetime.
    - :order_by (String.t): Overrides the default ordering for this endpoint.
    - :page_size (integer()): Number of results to return per page.
    - :remote_fields (String.t): Which fields should be returned in non-normalized form.
    - :remote_id (String.t): The API provider's ID for the given object.
  ## Returns

  {:ok, MergeHRISClient.Model.PaginatedBankInfoList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec bank_info_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.PaginatedBankInfoList.t} | {:error, Tesla.Env.t}
  def bank_info_list(connection, authorization, x_account_token, opts \\ []) do
    optional_params = %{
      :"account_type" => :query,
      :"bank_name" => :query,
      :"created_after" => :query,
      :"created_before" => :query,
      :"cursor" => :query,
      :"employee_id" => :query,
      :"include_deleted_data" => :query,
      :"include_remote_data" => :query,
      :"modified_after" => :query,
      :"modified_before" => :query,
      :"order_by" => :query,
      :"page_size" => :query,
      :"remote_fields" => :query,
      :"remote_id" => :query
    }
    %{}
    |> method(:get)
    |> url("/bank-info")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.PaginatedBankInfoList{}}
    ])
  end

  @doc """
  Returns a `BankInfo` object with the given `id`.

  ## Parameters

  - connection (MergeHRISClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your test/production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - id (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
    - :remote_fields (String.t): Which fields should be returned in non-normalized form.
  ## Returns

  {:ok, MergeHRISClient.Model.BankInfo.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec bank_info_retrieve(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MergeHRISClient.Model.BankInfo.t} | {:error, Tesla.Env.t}
  def bank_info_retrieve(connection, authorization, x_account_token, id, opts \\ []) do
    optional_params = %{
      :"include_remote_data" => :query,
      :"remote_fields" => :query
    }
    %{}
    |> method(:get)
    |> url("/bank-info/#{id}")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeHRISClient.Model.BankInfo{}}
    ])
  end
end
