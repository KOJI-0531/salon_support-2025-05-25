class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: "お問い合わせありがとうございます"
    else
      render :index
    end
  end


  private


  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message, contact_method: [])
  end
end
