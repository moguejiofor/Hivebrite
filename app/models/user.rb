class User < ApplicationRecord
  validates :firstname, :lastname, :email, :password, presence: true

  def read_user(user, arg)
    case arg
    when 'firstname' then user.firstname
    when 'lastname' then user.lastname
    when 'email' then user.email
    when 'password' then user.password
    else
      'error'
    end
  end

  def fill(arg, value)
    case arg
    when 'firstname' then self.firstname = value
    when 'lastname' then self.lastname = value
    when 'email' then self.email = value
    when 'password' then self.password = value
    when 'required' then self.required = value
    else
      'error'
    end
  end
end
