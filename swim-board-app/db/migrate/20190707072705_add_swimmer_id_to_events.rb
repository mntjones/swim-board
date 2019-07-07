class AddSwimmerIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :swimmer_id, :integer
  end
end
