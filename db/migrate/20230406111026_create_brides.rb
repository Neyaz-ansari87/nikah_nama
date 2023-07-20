class CreateBrides < ActiveRecord::Migration[6.1]
  def change
    create_table :brides do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname

      t.timestamps
    end
  end
end
