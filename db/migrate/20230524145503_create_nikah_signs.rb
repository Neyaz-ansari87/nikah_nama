class CreateNikahSigns < ActiveRecord::Migration[6.1]
  def change
    create_table :nikah_signs do |t|
      t.string :sign_label
      t.string :sign_value
      t.string :sign_image
      t.belongs_to :nikah_entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
