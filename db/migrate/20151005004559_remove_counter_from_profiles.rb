class RemoveCounterFromProfiles < ActiveRecord::Migration
  def change
  	remove_column :profiles, :counter
  end
end
