class AddExperianceToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :experiance, :integer
  end
end
