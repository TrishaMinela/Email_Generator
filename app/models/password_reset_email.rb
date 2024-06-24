require 'C:\Users\chris\Downloads\SearchInFiles\Email_Generator\email_generator\app\models\email_generator.rb'
class PasswordResetEmail < EmailGeneratorClass
    def initialize(name, lastname, email, new_password)
      super(name, lastname)
      @recipient_email = email
      @new_password = new_password
    end
  
    def generate_email
      <<-EMAIL
      Subject: Password Reset Instructions
  
      Dear #{@name} #{@lastname},
  
      Your password has been reset.
  
      Your new password is: #{@new_password}
  
      If you did not request a password reset, please click the link below.

      [Link]

      Best regards,
      The Homestays.com Support Team
      EMAIL
    end
  end
  