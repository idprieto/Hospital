class MedicalOrder
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: Date
  field :description, type: String

  validates :date, presence: true 
  validates :description, presence: true 

  belongs_to :doctor
  has_and_belongs_to_many :procedures
  belongs_to :patient 
end
