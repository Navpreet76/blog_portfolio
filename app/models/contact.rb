class Contact < MailForm::Base
	attribute :name,    	:validate => true
	attribute :email,   	:validate => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	attribute :message, 	:validate => true
	attribute :nickname,	:captcha => true

	def headers
	{
		:subject => "Contact Form",
		:to => "nchhina76@gmail.com",
		:from => %("#{name}" <#{email}>)
	}
	end
end