require 'twilio-ruby'

class SendCode

  def initialize
    account = ENV['TWILIO_ACCOUNT_SID']
    token = ENV['TWILIO_AUTH_TOKEN']
    @twilio_phone = ENV['TWILIO_PHONE']
    @client = Twilio::REST::Client.new(account, token)
  end

  def send_sms(recipient, message)
     message = @client.api.account.messages.create(
       from: @twilio_phone,
       to: recipient,
       body: message,
       )

     puts message.to
  end


end
