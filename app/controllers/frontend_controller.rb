class FrontendController < ApplicationController
  def index
  end

  def contact
    @contact = Contact.new
  end

  def send_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contact_path, notice: "Wiadomość wysłana"
    else
      render action: "contact"
    end
  end

  def about
  end

  protected 

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
