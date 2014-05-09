namespace :sms_reminder do
  desc "This task will execute on metion date and time and do not repeat"
  task :never => :environment do
	@reminder = Reminder.where("recurrence = ? AND is_active = ?", "Never", true)
        @date = Time.now.strftime("%Y-%m-%d")
	@reminder.each do |reminder|
		if(!reminder.at_date.blank? && reminder.at_date = @date)
			@time = Time.now.strftime("%H:%M:%S").to_s
			if reminder.at_time.strftime("%H:%M:%S") <= @time
				@contacts = reminder.schedule_contacts.map {|contact| contact.contact_no.to_s}
				uri = URI('http://manage.sarvsms.com/api/send_promotional_sms.php?username=u272&msg_token=TF3YxU&message='+reminder.message.gsub(" ", '%20')+'&mobile='+@contacts.join(","))
				response = Net::HTTP.get(uri)
				if((response =~ /SUCCESS/i) != nil)
					reminder.schedule_contacts.each do |contact|
						contact.update_attributes(:status => "Delivered")
					end
				else
					reminder.schedule_contacts.each do |contact|
						contact.update_attributes(:status => "Not delivered")
					end
				end
				reminder.update_attributes(:is_active => false)
			end
		end
	end
	
  end

  desc "This task will repeat every day"
  task :every_day => :environment do
	@reminder = Reminder.where("recurrence = ?", "Every_day")
	@reminder.each do |reminder|
		@contacts = reminder.schedule_contacts.map {|contact| contact.contact_no.to_s}
		uri = URI('http://manage.sarvsms.com/api/send_promotional_sms.php?username=u272&msg_token=TF3YxU&message='+reminder.message.gsub(" ", '%20')+'&mobile='+@contacts.join(","))
		response = Net::HTTP.get(uri)
		if((response =~ /SUCCESS/i) != nil)
			reminder.schedule_contacts.each do |contact|
				contact.update_attributes(:status => "Delivered")
			end
		else
			reminder.schedule_contacts.each do |contact|
				contact.update_attributes(:status => "Not delivered")
			end
		end
	end
  end

  desc "This task will repeat every week"
  task :week => :environment do
	@reminder = Reminder.where("recurrence = ?", "Week")
	@reminder.each do |reminder|
		@contacts = reminder.schedule_contacts.map {|contact| contact.contact_no.to_s}
		uri = URI('http://manage.sarvsms.com/api/send_promotional_sms.php?username=u272&msg_token=TF3YxU&message='+reminder.message.gsub(" ", '%20')+'&mobile='+@contacts.join(","))
		response = Net::HTTP.get(uri)
		if((response =~ /SUCCESS/i) != nil)
			reminder.schedule_contacts.each do |contact|
				contact.update_attributes(:status => "Delivered")
			end
		else
			reminder.schedule_contacts.each do |contact|
				contact.update_attributes(:status => "Not delivered")
			end
		end
	end
  end

  desc "This task will repeat every month"
  task :month => :environment do
	@reminder = Reminder.where("recurrence = ?", "Month")
	@reminder.each do |reminder|
		@contacts = reminder.schedule_contacts.map {|contact| contact.contact_no.to_s}
		uri = URI('http://manage.sarvsms.com/api/send_promotional_sms.php?username=u272&msg_token=TF3YxU&message='+reminder.message.gsub(" ", '%20')+'&mobile='+@contacts.join(","))
		response = Net::HTTP.get(uri)
		if((response =~ /SUCCESS/i) != nil)
			reminder.schedule_contacts.each do |contact|
				contact.update_attributes(:status => "Delivered")
			end
		else
			reminder.schedule_contacts.each do |contact|
				contact.update_attributes(:status => "Not delivered")
			end
		end
	end
  end

  desc "This task will repeat every year"
  task :year => :environment do
	@reminder = Reminder.where("recurrence = ?", "Year")
	@reminder.each do |reminder|
		@contacts = reminder.schedule_contacts.map {|contact| contact.contact_no.to_s}
		uri = URI('http://manage.sarvsms.com/api/send_promotional_sms.php?username=u272&msg_token=TF3YxU&message='+reminder.message.gsub(" ", '%20')+'&mobile='+@contacts.join(","))
		response = Net::HTTP.get(uri)
		if((response =~ /SUCCESS/i) != nil)
			reminder.schedule_contacts.each do |contact|
				contact.update_attributes(:status => "Delivered")
			end
		else
			reminder.schedule_contacts.each do |contact|
				contact.update_attributes(:status => "Not delivered")
			end
		end
	end
  end

end
