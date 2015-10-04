class AddIpAndCounterToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :ip, :integer
    add_column :profiles, :counter, :integer, default: 0
  end
end
