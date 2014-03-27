class AddDefendingToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :defending, :integer
  end
end
