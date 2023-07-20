class CreateNikahEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :nikah_entries do |t|
      t.datetime :nikah_date
      t.references :user, null: false, foreign_key: true
      t.text :nikah_address
      t.string :bride_name
      t.string :groom_name
      t.text :meahar_amount
      t.string :groom_parent_name
      t.string :bride_parent_name

      t.timestamps
    end
  end
end
