class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.with(contact: @contact).send_mail.deliver_now
      redirect_to thanks_contacts_path
    else
      render :new
    end
  end

  def thanks

  end


  private


  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message, contact_method: [])
  end
end
