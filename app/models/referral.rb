class Referral < ApplicationRecord
  belongs_to :user
  has_many :notes
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :ssn, presence: true
  validates :insurance_id_1, presence: true
  validates :insurance_id_2, presence: false
  validates :insurance_id_3, presence: false
  validates :insurance_name_1, presence: true
  validates :insurance_name_2, presence: false
  validates :insurance_name_3, presence: false
  validates :phone_number, presence: true
end
