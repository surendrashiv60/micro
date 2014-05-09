class ComposeEmail < ActionMailer::Base
  default from: "info@techschema.com"
  def compose_sms_def(to, subject, message, file_name)
    @message = message
    attachments["#{file_name}"] = File.read("#{Rails.root}/public/upload/#{file_name}")
    mail(:to => to, :subject => subject)  
  end  
end
