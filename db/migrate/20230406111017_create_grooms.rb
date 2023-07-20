class CreateGrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :grooms do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname

      t.timestamps
    end
  end
end
