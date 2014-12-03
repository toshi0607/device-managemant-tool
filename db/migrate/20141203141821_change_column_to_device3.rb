class ChangeColumnToDevice3 < ActiveRecord::Migration
  # 変更内容
  def up
    change_column :devices, :return_date, :date
  end

  # 変更前の状態
  def down
    change_column :devices, :return_date, :datetime
  end
end
