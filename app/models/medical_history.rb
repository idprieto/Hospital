class MedicalHistory
  include Mongoid::Document
  include Mongoid::Timestamps

  field :weight, type: String 
  field :height, type: String
  field :addictions, type: String
  field :observations, type: String

  validates :weight, presence: true  
  validates :height, presence: true
  validates :addictions, presence: true
  validates :observations, presence: true

  belongs_to :patient
  has_and_belongs_to_many :allergys
  has_and_belongs_to_many :diseases
  has_and_belongs_to_many :operations
end
