class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_entry_message
    
  private

  def invalid_entry_message(invalid)
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity
  end
end
