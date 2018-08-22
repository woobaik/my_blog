module  CurrentUserConcern
  extend ActiveSupport::Concern


  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new(name: 'Guest User',
                          firstname: 'Guest',
                          lastname: 'User',
                          email: 'guest@guest.com')

  end


end
