class FrontendController < ApplicationController
  def index
    @posts = Post.all.limit(4)
    @opinions  = Opinion.all.limit(2)
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
    @tags = ProjectTag.all
  end

  protected 

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
