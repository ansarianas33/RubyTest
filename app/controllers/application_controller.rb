class ApplicationController < ActionController::Base
  def send_email
    email = params[:email]
    subject = params[:subject]
    message = params[:message]
    ApplicationMailer.send_email(email, subject, message).deliver_now
    render json: { message: 'Email sent successfully!' }
  rescue StandardError => e
    render json: { error: e.message }, status: :unprocessable_entity
  end
end
