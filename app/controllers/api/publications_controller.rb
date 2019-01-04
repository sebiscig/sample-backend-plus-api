class Api::PublicationsController < ApiController

  def index
    if params.has_key?(:featured)
      if params[:featured] == 'true'
        render json: Publication.where(featured:true).includes(:publication_type).order('publication_types.rank ASC').order('date DESC')
      end
    else
      render json: Publication.all.includes(:publication_type).order('publication_types.rank ASC').order('date DESC')
    end
  end

end
