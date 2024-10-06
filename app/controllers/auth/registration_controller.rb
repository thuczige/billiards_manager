class Auth::RegistrationController < AuthController
  def new
    session[:store_registration] ||= {}
    registration_session = session[:store_registration]

    if params[:resend].to_i == 1 && registration_session["email_verified_at"].blank?
      registration_session["email_verification_code"] = nil
    elsif params[:resend].to_i == 2 && registration_session["phone_number_verified_at"].blank?
      registration_session["phone_number_verification_code"] = nil
    end
  end

  def create
    registration_session = session[:store_registration]

    if registration_session["email"].blank? || registration_session["email_verification_code"].blank?
      # 1. Validation and render error (if any)
      # 2. Generate email verification code
      # 3. Send email verification code
      # 4. Save email info to session (if code sent successfully)
      registration_session["email"] = store_params[:email]
      registration_session["email_verification_code"] = "cipher"
    elsif registration_session["email_verified_at"].blank?
      if registration_session["email_verification_code"] == store_params[:email_verification_code]
        registration_session["email_verified_at"] = Time.zone.now
      else
        # Handle show error message
      end
    elsif registration_session["phone_number"].blank? || registration_session["phone_number_verification_code"].blank?
      # 1. Validation and render error (if any)
      # 2. Generate phone number verification code
      # 3. Send phone number verification code
      # 4. Save phone number info to session (if code sent successfully)
      registration_session["phone_number"] = store_params[:phone_number]
      registration_session["phone_number_verification_code"] = "cipher"
    elsif registration_session["phone_number_verified_at"].blank?
      if registration_session["phone_number_verified_at"] == store_params[:phone_number_verified_at]
        registration_session["phone_number_verified_at"] = Time.zone.now
      else
        # Handle show error message
      end
    else
      # Handle save data
    end

    redirect_to signup_path
  end

  private

  def store_params
    params.require(:store).permit(
      :email, :phone_number, :name,
      :email_verification_code, :phone_number_verification_code,
      :username, :password, :password_confirmation
    )
  end
end
