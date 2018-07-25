class Portfol < ApplicationRecord
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :main_image, presence: true
  validates :thumb_image, presence: true
end
