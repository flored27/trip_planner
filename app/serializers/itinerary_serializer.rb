class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :description, :name, :start_date, :end_date, :things_to_do, :destinations

  def destinations
    object.locations.map do |location|
      {id:location.id,
        name: location.name,
        street_address: location.street_address,
        city: location.city,
        state: location.state,
        zip: location.postal_code}
      end
  end

  def things_to_do
    object.locations.count
  end

  private

end
