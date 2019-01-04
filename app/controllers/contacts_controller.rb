class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to contacts_url
    flash[:success] = 'New page successfully created'
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update_attributes (contact_params)
    @contact.save
    redirect_to contacts_url
  end

  def destroy
    contact = Contact.find(params[:id])
		contact.destroy
		redirect_to contacts_url
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :title, :unit, :institution, :street, :city, :state, :zip, :email, :phone)
    end
end
