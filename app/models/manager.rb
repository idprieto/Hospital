class Manager < User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :description, type: String

  validates :description, presence: true

  has_one :headquarter
end
