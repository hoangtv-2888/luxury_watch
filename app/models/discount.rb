class Discount < ApplicationRecord
  has_many :orders, dependent: :destroy
  scope :by_code, ->(code){where code: code if code.present?}
  scope :check_date, -> do 
    where("? > start AND ? < end_date", Time.zone.now, Time.zone.now)
  end

  validates :code, uniqueness: true
end
