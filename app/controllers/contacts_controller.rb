class ContactsController < ApplicationController
  protect_from_forgery with: :null_session

  def new
  end

  def create
    @contact = Contact.new
    @contact.name = params[:name]
    @contact.email = params[:email]
    @contact.subject = params[:subject]
    @contact.message = params[:message]

    if @contact.save
      # Send Email
      UserMailer.contact_us_email(@contact).deliver
    else
      flash.now[:alert] = 'There is an error'
    end
  end

end