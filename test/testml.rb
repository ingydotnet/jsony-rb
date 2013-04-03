require 'test/unit'
require 'testml'
$:.unshift "#{Dir.getwd}/test"
require 'testml_bridge'

class TestMLTestCase < Test::Unit::TestCase
  (Dir.glob('test/testml/*.tml')
    .collect {|f| f.sub(/^test\//, '')}
    .select { |f| f !~ /edge/ }
  ).each do |file|
    method_name = 'test_' + file.gsub(/\W/, '_').sub(/_tml$/, '')
    define_method(method_name.to_sym) do
      TestML.new(
        testml: file,
        bridge: TestMLBridge,
      ).run(self)
    end
  end
end
