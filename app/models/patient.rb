class Patient
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :id_type, type: String
  field :number_id, type: Integer
  field :age, type: Integer
  field :email, type: String
  field :phone, type: Integer
  field :address, type: String
  field :rh, type: String

  validates :name, presence: true
  validates :id_type, presence: true
  validates :number_id, presence: true, length: {minimum: 8}
  validates :age, presence: true
  validates :email, presence: true
  validates :phone, presence: true, length: {minimum: 7}
  validates :address, presence: true
  validates :rh, presence: true

  has_many :prescriptions
  has_many :medical_orders
  belongs_to :medical_history
end
