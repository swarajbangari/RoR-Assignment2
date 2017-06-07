class Employee < ApplicationRecord
  has_many :skills, dependent: :destroy
  belongs_to :project
  has_many :subordinates, class_name: "Employee", foreign_key: 'team_lead_id'
  belongs_to :team_lead, optional: true, class_name: "Employee", foreign_key: 'team_lead_id'
  #validates :team_lead_id
  validates :name, presence: true, length: { minimum: 5 }
end
