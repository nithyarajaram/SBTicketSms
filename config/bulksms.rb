Bulksms.configure do|config|
  config.username = ENV["BULKSMS_USERNAME"]
  config.password = ENV["BULKSMS_PASSWORD"]
  config.recipient1 = ENV["BULKSMS_RECEPIENT1"]
end
