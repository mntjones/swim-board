class CreateSwimmers < ActiveRecord::Migration[5.2]
  def change
    create_table :swimmers do |t|
      t.string :name
      t.integer :member_number
      t.string :password_digest

      t.timestamps
    end
  end
end
