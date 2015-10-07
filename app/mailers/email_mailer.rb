class EmailMailer < ActionMailer::Base
  default from: "vitalij.desuk@gmail.com"

  def request(email)
    @email = email
    mail(to: "vitalij.desuk@gmail.com", 
    	subject: 'Request from a client')
  end
end
