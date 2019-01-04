class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :authors, :date, :citation, :publication_type_kind, :publication_type_rank, :abstract

  def publication_type_kind
   object.publication_type.kind
  end

  def publication_type_rank
    object.publication_type.rank
  end

end
