class Management
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :functions, type: String

  validates :name, presence: true
  validates :functions, presence: true

  belongs_to :director
  belongs_to :headquarter
  has_many :sub_areas
end