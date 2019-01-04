class Api::ContactsController < ApiController
  before_action :set_contact, only: [:show]

  def index
    if params.has_key?(:name)
      if  nameIsAcceptable?
        render json: Contact.find_by(name: params[:name])
      else
        head 400
      end
    else
      render json:  Contact.all
    end
  end

  def show
    render json: @contact
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:name)
    end

    def nameIsAcceptable?
      acceptableNames = Contact.all.pluck('name')
      acceptableNames.include? params[:name]
    end

end
