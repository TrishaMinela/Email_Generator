class EmailsController < ApplicationController
  def new
  end

  def generate
    name = params[:name]
    lastname = params[:lastname]
    email_type = params[:email_type].to_sym

    if email_type == :password_reset
      email = params[:email]
      new_password = params[:new_password]
      @generated_email = PasswordResetEmail.new(name, lastname, email, new_password).generate_email
    else
      @generated_email = WelcomeEmail.new(name, lastname).generate_email
    end

    render :generate
  end
end
