class ContactsController < ApplicationController

	def new
		@contact ||= Contact.new
	end

	def create
		@contact = Contact.new contact_params
		if @contact.save
			ContactMailer.contact_martin(@contact).deliver_now
			flash[:success] = "Message sent!"
			redirect_to new_contact_url
		else
			render :new
		end
	end

	private

		def contact_params
			params.require(:contact).permit(:name, :email, :subject, :message)			
		end

end
