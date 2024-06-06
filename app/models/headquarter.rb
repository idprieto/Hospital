class Headquarter
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :address, type: String
  field :phone, type: Integer
  field :department, type: String
  field :city, type: String

  validates :name, presence: true, length: {minimum: 3}
  validates :address, presence: true, length: {minimum: 5}
  validates :phone, presence: true, length: {minimum: 7}
  validates :department, presence: true
  validates :city, presence: true

  belongs_to :manager
  has_many :managements
end
