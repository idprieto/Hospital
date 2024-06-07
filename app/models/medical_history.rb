class MedicalHistory
  include Mongoid::Document
  include Mongoid::Timestamps

  field :weight, type: Float 
  field :height, type: Float
  field :addictions, type: Array
  field :observations, type: String

  validates :weight, presence: true, numericality: { greater_than_or_equal_to: 0 }  
  validates :height, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :addictions, presence: true
  validates :observations, presence: true

  belongs_to :patient
  has_and_belongs_to_many :allergies
  has_and_belongs_to_many :diseases
  has_and_belongs_to_many :operations
end
