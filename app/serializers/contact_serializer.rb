class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :unit, :institution, :street, :city, :state, :zip, :email, :phone
end
