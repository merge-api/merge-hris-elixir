# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeHRISClient.Model.EmployeeRequest do
  @moduledoc """
  # The Employee Object ### Description The `Employee` object is used to represent an Employee for a company.  ### Usage Example Fetch from the `LIST Employee` endpoint and filter by `ID` to show all employees.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"remote_id",
    :"employee_number",
    :"company",
    :"first_name",
    :"last_name",
    :"display_full_name",
    :"groups",
    :"work_email",
    :"personal_email",
    :"mobile_phone_number",
    :"employments",
    :"home_location",
    :"work_location",
    :"manager",
    :"team",
    :"pay_group",
    :"ssn",
    :"gender",
    :"ethnicity",
    :"marital_status",
    :"date_of_birth",
    :"hire_date",
    :"start_date",
    :"employment_status",
    :"termination_date",
    :"avatar",
    :"custom_fields"
  ]

  @type t :: %__MODULE__{
    :"remote_id" => String.t | nil,
    :"employee_number" => String.t | nil,
    :"company" => String.t | nil,
    :"first_name" => String.t | nil,
    :"last_name" => String.t | nil,
    :"display_full_name" => String.t | nil,
    :"groups" => [String.t] | nil,
    :"work_email" => String.t | nil,
    :"personal_email" => String.t | nil,
    :"mobile_phone_number" => String.t | nil,
    :"employments" => [String.t] | nil,
    :"home_location" => String.t | nil,
    :"work_location" => String.t | nil,
    :"manager" => String.t | nil,
    :"team" => String.t | nil,
    :"pay_group" => String.t | nil,
    :"ssn" => String.t | nil,
    :"gender" => GenderEnum | nil,
    :"ethnicity" => EthnicityEnum | nil,
    :"marital_status" => MaritalStatusEnum | nil,
    :"date_of_birth" => DateTime.t | nil,
    :"hire_date" => DateTime.t | nil,
    :"start_date" => DateTime.t | nil,
    :"employment_status" => EmploymentStatusEnum | nil,
    :"termination_date" => DateTime.t | nil,
    :"avatar" => String.t | nil,
    :"custom_fields" => %{optional(String.t) => AnyType} | nil
  }
end

defimpl Poison.Decoder, for: MergeHRISClient.Model.EmployeeRequest do
  import MergeHRISClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"gender", :struct, MergeHRISClient.Model.GenderEnum, options)
    |> deserialize(:"ethnicity", :struct, MergeHRISClient.Model.EthnicityEnum, options)
    |> deserialize(:"marital_status", :struct, MergeHRISClient.Model.MaritalStatusEnum, options)
    |> deserialize(:"employment_status", :struct, MergeHRISClient.Model.EmploymentStatusEnum, options)
    |> deserialize(:"custom_fields", :map, MergeHRISClient.Model.AnyType, options)
  end
end

