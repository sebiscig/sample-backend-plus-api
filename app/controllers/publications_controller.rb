class PublicationsController < ApplicationController
  def index
    @publication_groups = Publication.all.order('publication_type_id ASC').order('date DESC').group_by(&:publication_type)
  end
  def show
    @publication = Publication.find(params[:id])
  end

  def create
    @publication = Publication.new(publication_params)
    @publication.save
    redirect_to publications_url
    flash[:success] = 'New publication successfully created'
  end

  def new
    @publication = Publication.new
    @publication_types = PublicationType.all.order('id ASC')
  end

  def edit
    @publication = Publication.find(params[:id])
    @publication_types = PublicationType.all.order('id ASC')
  end

  def update
    @publication = Publication.find(params[:id])
    @publication.update_attributes (publication_params)
    @publication.save
    redirect_to publications_url
  end

  def destroy
    page = Publication.find(params[:id])
		page.destroy
		redirect_to publications_url
  end

  private
    def publication_params
      params.require(:publication).permit(:authors, :date, :citation, :publication_type_id, :featured, :abstract)
    end
end
