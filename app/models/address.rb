class Address < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :last_name, :description, :zip, :street1, :city, :state, :country, :phone, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
