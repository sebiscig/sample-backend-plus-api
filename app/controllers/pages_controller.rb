class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to pages_url
    flash[:success] = 'New page successfully created'
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    @page.update_attributes (page_params)
    @page.save
    redirect_to pages_url
    flash[:success] = 'Page successfully updated'
  end

  def destroy
    page = Page.find(params[:id])
		page.destroy
		redirect_to pages_url
  end

  private
    def page_params
      params.require(:page).permit(:title, :heading, :blurb)
    end
end
