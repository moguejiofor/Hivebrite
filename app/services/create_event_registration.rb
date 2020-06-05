class CreateEventRegistration
  def self.call(event_registration)
    @event = Event.find(:event_id)
    new(event_registration).call
    @event_registration.event = @event
    @event_registration.user = current_user
  end

  def call
    private_methods
    p @event_registration
  end

  private

  def initialize(event, user)
    @event = event
    @user = user
  end

  attr_reader :event, :user
end