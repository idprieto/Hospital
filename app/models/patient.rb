class Patient
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :document_type, type: String
  field :document_number, type: String
  field :age, type: Integer
  field :email, type: String
  field :phone, type: String
  field :address, type: String
  field :rh, type: String

  validates :name, presence: true
  validates :document_type, presence: true
  validates :document_number, presence: true, length: {minimum: 8}, uniqueness: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, length: {minimum: 7, maximum: 20}
  validates :address, presence: true
  validates :rh, presence: true

  has_many :prescriptions
  has_many :medical_orders
  has_one :medical_history
end
