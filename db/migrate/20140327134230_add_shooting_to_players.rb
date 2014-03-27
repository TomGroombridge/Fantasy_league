class AddShootingToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :shooting, :integer
  end
end
