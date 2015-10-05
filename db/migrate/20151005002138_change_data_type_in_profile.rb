class ChangeDataTypeInProfile < ActiveRecord::Migration
  def change
  	change_column :profiles, :ip, :string
  end
end
