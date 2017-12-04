class AddAttachmentAvatarToItineraries < ActiveRecord::Migration[5.1]
  def self.up
    change_table :itineraries do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :itineraries, :avatar
  end
end
