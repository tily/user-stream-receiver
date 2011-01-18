$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'user-stream-receiver'
require 'json'

UserStreamReceiver.new.run{|chunk|
  p JSON.parse(chunk)
}
