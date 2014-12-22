require 'spec_helper'

describe Device do
  # デバイス名がなければ無効であること
  it "is invalid without a name" do
    expect(Device.new(name: nil)).to have(1).errors_on(:name)
  end

  # 資産管理番号がなければ無効であること
  it "is invalid without a property_id" do
    expect(Device.new(property_id: nil)).to have(2).errors_on(:property_id)
  end

  # 資産管理番号が13桁なければ無効であること
  it "is valid with a 13-digit property_id" do
    expect(Device.new(property_id: 'xxxxxxxxxxxxxx')).to have(1).errors_on(:property_id)
  end

  # 資産管理番号が重複する場合は無効であること →こけずに通ってしまう…
  it "is invalid with a duplicate property_id" do
 		Device.create(
        property_id: 'xxxxxxxxxxxxx')
          device = Device.new(
        property_id: 'xxxxxxxxxxxxx')
    expect(device).to have(1).errors_on(:property_id)
  end

  # 情報機器識別文字列がなければ無効であること
  it "is invalid without a devinfo_id" do
    expect(Device.new(devinfo_id: nil)).to have(1).errors_on(:devinfo_id)
  end
  # 購入日がなければ無効であること
  it "is invalid without an acquisition_date" do
    expect(Device.new(acquisition_date: nil)).to have(1).errors_on(:acquisition_date)
  end
end