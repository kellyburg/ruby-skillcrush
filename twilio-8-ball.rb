require 'rubygems'
require 'twilio-ruby'

account_sid="AC223c5103b8678dd418f917e50550dddb"
auth_token="b0245ff8d42623d24354364570eda3c3"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
    :from => "+12242231076",
    :to => "+17082840354",
    :body => "Hello!"
)

puts message.to