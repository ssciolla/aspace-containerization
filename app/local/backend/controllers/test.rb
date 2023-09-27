require "logger"

# def json_response(obj, status = 200)
#   [status, {"Content-Type" => "application/json"}, [obj.to_json(:mode => :trusted, :max_nesting => false) + "\n"]]
# end

class ArchivesSpaceService < Sinatra::Base
  Endpoint.get("/test")
    .description("Test endpoint")
    .permissions([])
    .returns([200, "test object"]) do

      logger = Logger.new($stdout)

      test_hash = {
        test_date: Date,
        test_number: 2,
        test_string: "hello"
      }

      logger.info "JSON.generate"
      logger.info JSON.generate test_hash
      logger.info "to_json"
      logger.info test_hash.to_json
      logger.info "method(:to_json)"
      logger.info test_hash.method(:to_json)

      json_response(test_hash)
    end
end
