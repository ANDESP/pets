class AddAttachmentAvatar1ToPacients < ActiveRecord::Migration
  def self.up
    change_table :pacients do |t|
      t.attachment :avatar1
    end
  end

  def self.down
    remove_attachment :pacients, :avatar1
  end
end
