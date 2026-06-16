require "../../spec_helper"

module Amber
  module Pipe
    describe SecureHeaders do
      it "adds security headers" do
        handler = SecureHeaders.new
        handler.next = ->(_context : HTTP::Server::Context) { }
        request = HTTP::Request.new("GET", "/")
        response = create_request_and_return_io(handler, request)

        response.headers["X-Frame-Options"]?.should eq("SAMEORIGIN")
        response.headers["X-XSS-Protection"]?.should eq("1; mode=block")
        response.headers["X-Content-Type-Options"]?.should eq("nosniff")
      end
    end
  end
end
