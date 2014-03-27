class AddDisciplineToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :discipline, :string
  end
end
