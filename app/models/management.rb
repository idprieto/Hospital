class Management
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :functions, type: Array

  validates :name, presence: true
  validates :functions, presence: true

  has_one :director
  belongs_to :headquarter
  has_many :sub_areas
end
