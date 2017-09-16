require File.join File.dirname(__FILE__), 'send_code'

class User < ActiveRecord::Base
  has_one_time_password

  def send_auth_code
    SendCode.new.send_sms(to: self.phone, body: "Your code is #{self.otp_code}")
  end
end
