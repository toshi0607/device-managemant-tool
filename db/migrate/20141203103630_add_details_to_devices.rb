class AddDetailsToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :acquisition_date, :datetime
  end
end
