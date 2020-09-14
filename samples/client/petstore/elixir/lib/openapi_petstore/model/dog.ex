# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenapiPetstore.Model.Dog do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"className",
    :"color",
    :"breed"
  ]

  @type t :: %__MODULE__{
    :"className" => String.t,
    :"color" => String.t | nil,
    :"breed" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenapiPetstore.Model.Dog do
  def decode(value, _options) do
    value
  end
end

