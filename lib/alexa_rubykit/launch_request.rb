module AlexaRubykit
  class LaunchRequest  < Request
    attr_accessor :request_id

    # We still don't know if all of the parameters in the request are required.
    # Checking for the presence of intent on an IntentRequest.
    def initialize(request_id, timestamp)
      raise ArgumentError, 'Request ID should exist on a LaunchRequest' if request_id.nil?
      @type = 'LAUNCH_REQUEST'
      @request_id = request_id
      @timestamp = timestamp
    end

    # Outputs the launch requestID.
    def to_s
      "LaunchRequest requestID: #{@request_id}"
    end
  end
end
