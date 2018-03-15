class Api::EndpointController < ApplicationController
  def index
    query = params[:query]
    variables = params[:variables]
    operation_name = params[:operationName]
    context = {}
    result = Schema.execute(query, variables: variables, context: context, operation_name: operation_name)
    render json: result, status: :ok
  end
end
