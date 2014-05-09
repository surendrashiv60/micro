class ComposeEmailController < ApplicationController
  before_filter :authorization
  def new
	@contact_groups = ContactGroup.where("is_active = ?", true)
  end

  def create
	@to_emails = params[:contact_email_list].join(",")
	@subject = params[:subject]
	@message = params[:message]
	@file_name = params[:attachment].original_filename
	@attachment = params[:attachment]
	File.open(Rails.root.join('public', 'upload', @attachment.original_filename), 'wb') do |file|
    		file.write(@attachment.read)
  	end
        
	ComposeEmail.compose_sms_def(@to_emails, @subject, @message, @file_name).deliver  
	flash[:notice] = "Mail was sent successfully."
	redirect_to controller: "compose_email", action: "new" #, notice: "Mesaage was sent successfully."
  end
end
