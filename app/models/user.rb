require File.join File.dirname(__FILE__), 'send_code'

class User < ActiveRecord::Base
  has_one_time_password length: 5

  def send_auth_code
    SendCode.new.send_sms(self.mobile, "Your code is #{self.otp_code}")
  end

  def authenticate(code, drift)
    self.authenticate_otp(code, drift: drift)
  end
end
