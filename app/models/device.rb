class Device < ApplicationRecord
  belongs_to :region
  has_many :comments, dependent: :destroy
  has_rich_text :content
  validates_presence_of :title, :serial_number
end
