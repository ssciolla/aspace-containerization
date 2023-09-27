require "logger"

logger = Logger.new($stdout)
logger.info "Loading local/backend/plugin_init.rb"

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
