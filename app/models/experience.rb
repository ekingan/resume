class Experience < ApplicationRecord
  belongs_to :resume
  validates_presence_of :title, :name, :location
end
