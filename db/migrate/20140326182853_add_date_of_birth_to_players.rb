class AddDateOfBirthToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :DateOfBirth, :date
  end
end
