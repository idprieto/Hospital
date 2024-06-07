class Specialization
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  validates :name, presence: true

  has_and_belongs_to_many :doctors
end
