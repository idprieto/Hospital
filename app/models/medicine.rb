class Medicine
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :concentration, type: String

  validates :name, presence: true 
  validates :concentration, presence: true 

  has_and_belongs_to_many :prescriptions
end
