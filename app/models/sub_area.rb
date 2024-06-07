class SubArea
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :functions, type: Array

  validates :name, presence: true
  validates :functions, presence: true

  belongs_to :management
  has_many :nurses
  has_many :head_nurses
  has_many :doctors
end
