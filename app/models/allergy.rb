class Allergy
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  validates :name, presence: true, length: {minimum: 3}

  has_and_belongs_to_many :medical_historys
end
