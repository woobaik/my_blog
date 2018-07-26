class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_default

  def set_default
    self.badge ||= Placeholder.image_generator(200, 200)
  end
end
