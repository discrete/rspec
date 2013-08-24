class ApplicationController < ActionController::Base
  protect_from_forgery

  class RspecError < StandardError
    attr_accessor :result
    attr_accessor :code
    attr_accessor :message

    def as_json(options={})
      {result: result, error_code: code, error_message: message}
    end
  end

  class BadParamError < RspecError
    result = 'failed'
    code = '4000'
    message = 'Bad param'
  end
end
