require 'C:\Users\chris\Downloads\SearchInFiles\Email_Generator\email_generator\app\models\email_generator.rb'
class WelcomeEmail < EmailGeneratorClass
  def generate_email
    <<-EMAIL
    Subject: Welcome to Homestays.com!

    Dear #{@name} #{@lastname},

    Welcome to Homestays.com! We are thrilled to have you with us.

    Best regards,
    The Homestays.com Team
    EMAIL
  end
end
