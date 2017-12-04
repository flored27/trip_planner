class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :street_address, :city, :state, :postal_code
end
