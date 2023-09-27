require "logger"

# https://stackoverflow.com/questions/683989/how-do-you-deal-with-the-conflict-between-activesupportjson-and-the-json-gem

logger = Logger.new($stdout)
logger.info "Loading local/frontend/plugin_init.rb"

logger.info JSON.inspect
logger.info JSON.class
logger.info JSON.parent

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
