module  CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest = OpenStruct.new(name: "Guest User", lastname: "Guest", firstname: "User", email: "pglossy@gmail.com")
  end
end
