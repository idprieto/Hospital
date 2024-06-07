class Doctor < User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :description, type: String

  validates :description, presence: true

  belongs_to :sub_area
  has_and_belongs_to_many :specializations
  has_many :medical_orders
  has_many :prescriptions
end
