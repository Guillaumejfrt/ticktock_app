class AddDefaultValueToUserFirstNameAndLastName < ActiveRecord::Migration[5.1]
  def up
    change_column_default :users, :first_name, ""
    change_column_default :users, :last_name, ""
  end

  def down
    change_column_default :users, :first_name, default = nil
    change_column_default :users, :last_name, default = nil
  end
end
