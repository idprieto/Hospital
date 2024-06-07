class Manager < User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :description, type: String

  validates :description, presence: true

  belongs_to :headquarter
end
