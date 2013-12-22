class WelcomeController < ApplicationController
  def index
    @beta_signup = BetaSignup.new
  end

  def signup
    @beta_signup = BetaSignup.new(signup_params)
    if @beta_signup.save
      flash[:notice] = "Thanks for signing up! We'll be in touch."
    else
      flash[:error] = "Error: #{@beta_signup.errors.full_messages.first}"
    end
    redirect_to "/"
  end

  private

  def signup_params
    params.require(:beta_signup).permit(:email)
  end
end
