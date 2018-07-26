class Portfol < ApplicationRecord
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :main_image, presence: true
  validates :thumb_image, presence: true

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_portfols, -> {where(subtitle: "Ruby on Rails")}

  after_initialize :set_default

  def set_default
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/350x250"
  end
end
