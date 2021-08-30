class AddNameToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins,:name,:string,null: false,default: ""
  end
end
