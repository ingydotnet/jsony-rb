require 'testml/bridge'
require 'testml/util'
include TestML::Util
require 'jsony'
require 'yaml'
require 'json'

class TestMLBridge < TestML::Bridge
  def jsony_decode(jsony)
    native JSONY.load(jsony.value)
  end

  def json_decode(json)
    native JSON.parse(json.value)
  end

  def yaml(object)
    str YAML.dump(object)
  end
end
