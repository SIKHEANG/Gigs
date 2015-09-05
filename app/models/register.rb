class Register < ActiveRecord::Base
  belongs_to :event

  validates :name, :address, :email, presence: true
end
