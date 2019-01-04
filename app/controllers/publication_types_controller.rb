class PublicationTypesController < ApplicationController
  def index
    @publication_types = PublicationType.all
  end
  def show
    @pub_type = PublicationType.find(params[:id])
  end

  def create
    pubTypesToUpdate = PublicationType.where("rank >= ?", pub_type_params[:rank])
    pubTypesToUpdate.each do |pub|
      pub.update_attributes(rank: pub.rank+1)
      pub.save
    end
    @pub_type = PublicationType.new(pub_type_params)
    @pub_type.save
    redirect_to publication_types_url
    flash[:success] = 'New publication type successfully created'
  end

  def new
    @pub_type = PublicationType.new
    @new_pub_types_count = PublicationType.all.count + 1
  end

  def edit
    @pub_type = PublicationType.find(params[:id])
    @pub_types_count = PublicationType.all.count
  end

  def update
    @pub_type = PublicationType.find(params[:id])
    oldRank = @pub_type.rank.to_i
    newRank = pub_type_params[:rank].to_i
    unless newRank == oldRank
      if oldRank < newRank
        pubTypesToUpdate = PublicationType.where("rank > ?", oldRank).where("rank <= ?", newRank)
        increment = -1
      else
        pubTypesToUpdate = PublicationType.where("rank >= ?", newRank).where("rank < ?", oldRank)
        increment = 1
      end
      pubTypesToUpdate.each do |pub|
        pub.update_attributes(rank: pub.rank+increment)
        pub.save
      end
    end
    @pub_type.update_attributes (pub_type_params)
    @pub_type.save
    redirect_to publication_types_url
  end

  def destroy
    page = PublicationType.find(params[:id])
		PublicationType.destroy
		redirect_to publication_types_url
  end

  private
    def pub_type_params
      params.require(:publication_type).permit(:kind, :rank)
    end
end
