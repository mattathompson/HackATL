class AddAttachmentAvatarToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :main
    end
  end

  def self.down
    remove_attachment :events, :main
  end
end
