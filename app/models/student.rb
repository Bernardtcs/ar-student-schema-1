require_relative '../../db/config'

class Student < ActiveRecord::Base
  has_many :relationships
  has_many :teachers, through: :relationships
  validates :email, uniqueness: true, format: { with: /\w+@\w+\.\w{2,}/, message: 'must be valid email' }
  validates :age, numericality: { greater_than: 4 }
  validates :phone, format: { with: /.*\d{3}.*\d{3}.*\d{4}.*/, message: 'must be at least 10 digit phone number' }
  def full_name
    "#{self[:first_name]} #{self[:last_name]}"
  end

  def age
    dif = Date.today - self[:birthday]
    age = (dif / 365.25).floor
    age
  end
end
