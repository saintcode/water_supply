class Comment < ApplicationRecord
  belongs_to :device
  broadcasts_to :device
end
