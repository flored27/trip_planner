class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :user_trips

  def user_trips
    object.itineraries.map do |trip|
      {id: trip.id,
        name: trip.name,
        description: trip.description,
        start_date: trip.start_date,
        end_date: trip.end_date}
      end
  end


end
