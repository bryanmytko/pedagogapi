module Api::V1
  class ApiController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def not_found
      render :json => { errors: "Not found." }, status: 404
    end
  end
end
