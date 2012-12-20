require 'testml/lite'
require 'jsony'
require 'json'

class TestPegex < TestML::Lite
  include TestML::Lite::TestCases
  def jsony_load str; JSONY.load str end
  def json_load str; JSON.load str end
  def String obj; obj.inspect end
end
