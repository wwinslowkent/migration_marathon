class Reader <ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true

  has_many :checkouts
end
