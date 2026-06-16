module Amber
  module Pipe
    # Adds common security headers to HTTP responses.
    class SecureHeaders < Base
      def call(context : HTTP::Server::Context)
        context.response.headers["X-Frame-Options"] = "SAMEORIGIN"
        context.response.headers["X-XSS-Protection"] = "1; mode=block"
        context.response.headers["X-Content-Type-Options"] = "nosniff"
        call_next(context)
      end
    end
  end
end
