class Device < ActiveRecord::Base
	validates :name            , presence: true
	validates :property_id     , presence: true
	validates :devinfo_id      , presence: true
	validates :acquisition_date, presence: true
end
