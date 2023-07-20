class CreateNikahCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :nikah_certificates do |t|
      t.string :bride_name
      t.string :groom_name

      t.timestamps
    end
  end
end
