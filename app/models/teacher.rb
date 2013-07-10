require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :relationships
  has_many :students, through: :relationships
  validates :email, uniqueness: true, format: { with: /\w+@\w+\.\w{2,}/, message: 'must be valid email' }
  validates :phone, format: { with: /.*\d{3}.*\d{3}.*\d{4}.*/, message: 'must be at least 10 digit phone number' }
  def name
    "#{self[:first_name]} #{self[:last_name]}"
  end
end
