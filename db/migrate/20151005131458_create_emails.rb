class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :message
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
