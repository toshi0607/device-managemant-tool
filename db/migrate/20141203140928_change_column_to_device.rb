class ChangeColumnToDevice < ActiveRecord::Migration

  # 変更内容
  def up
    change_column :devices, :acquisition_date, :date
  end

  # 変更前の状態
  def down
    change_column :devices, :acquisition_date, :datetime
  end
end
