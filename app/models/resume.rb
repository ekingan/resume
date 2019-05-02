class Resume < ApplicationRecord
  has_many :experiences, dependent: :destroy
  has_many :educations, dependent: :destroy
  validates_presence_of :name, :email, :summary, :skills
  validates_uniqueness_of :name, :email, :summary, :skills
  validates :phone, presence: true, uniqueness: true, case_sensitive: false
end
