class Portfol < ApplicationRecord

  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda {|attrs| attrs['name'].blank? }
  include Placeholder
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
    self.main_image ||= Placeholder.image_generator(600, 450)
    self.thumb_image ||= Placeholder.image_generator(350, 250)
  end
end
