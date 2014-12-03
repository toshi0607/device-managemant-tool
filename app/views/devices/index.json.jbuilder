json.array!(@devices) do |device|
  json.extract! device, :id, :name, :property_id, :devinfo_id, :label, :user_name, :rental_date, :return_date
  json.url device_url(device, format: :json)
end
