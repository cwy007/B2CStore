module SendSMS
  class << self

    # 短信后缀，不同的网站发送信息都有不同的短信后缀
    MESSAGE_SUFFIX = "【B2C商城】"

    SMS_API_KEY = ENV['SMS_API_KEY']
    SMS_SEND_URL = "https://sms-api.luosimao.com/v1/send.json"
    SMS_STATUS_URL = "https://sms-api.luosimao.com/v1/status.json"

    #
    # SendSMS.send "13718781273", "hello"
    # SendSMS.status
    #

    def send mobile, message
      options = {
        mobile: mobile,
        message: "#{message}#{MESSAGE_SUFFIX}"
      }

      begin
        response = RestClient.post SMS_SEND_URL, options, headers
        response = JSON.parse(response)
        Rails.logger.info "SMS: mobile #{mobile}, options: #{options}, response: #{response}"
      rescue => e
        response = e.message
      end
      # 不同的平台，判断条件不一样。
      # 判断发送是否成功，当前螺丝帽这个平台，error == 0 表示短信发送成功
      unless response.try(:fetch, "error") == 0
        Rails.logger.info "SMS failed: mobile #{mobile}, options: #{options}, response: #{response}"
      end

      response
    end

    # 查询短信余量
    def status
      begin
        response = RestClient.get SMS_STATUS_URL, headers
        response = JSON.parse(response)
        Rails.logger.info "SMS: status #{response}"
      rescue => e
        response = e.message
      end

      response
    end

    private
    # 不同的短信发送平台要求不一样
    def headers
      { Authorization: "Basic " + Base64.encode64("api:key-#{SMS_API_KEY}").chomp }
    end

  end
end
