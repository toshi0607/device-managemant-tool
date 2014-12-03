class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :property_id
      t.string :devinfo_id
      t.boolean :label
      t.string :user_name
      t.datetime :rental_date
      t.datetime :return_date

      t.timestamps
    end
  end
end
