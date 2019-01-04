class Api::PagesController < ApiController
  before_action :set_page, only: [:show]

  def index
    if params.has_key?(:title)
      if  titleIsAcceptable?
        render json: Page.find_by(title: params[:title])
      else
        head 400
      end
    else
      render json:  Page.all
    end

  end

  def show
    render json: @page
  end

  private
    def set_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:title)
    end

    def titleIsAcceptable?
      acceptableTitles = Page.all.pluck('title')
      acceptableTitles.include? params[:title]
    end

end
