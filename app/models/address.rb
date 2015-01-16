class Address < ActiveRecord::Base
  belongs_to :user

  validates :description, :zip, :street1, :city, :state, :country, :phone, presence: true
end
