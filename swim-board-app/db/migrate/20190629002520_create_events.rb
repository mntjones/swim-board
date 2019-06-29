class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :date
      t.integer :distance

      t.timestamps
    end
  end
end
