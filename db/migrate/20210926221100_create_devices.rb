class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :title

      t.timestamps
    end

    create_table :devices do |t|
      t.references :region, null: false, foreign_key: true
      t.string :title
      t.string :serial_number
      t.text :content

      t.timestamps
    end
  end
end
