# encoding: utf-8

GemSpec = Gem::Specification.new do |gem|
  gem.name = 'jsony'
  gem.version = '0.0.2'
  gem.license = 'MIT'
  gem.required_ruby_version = '>= 1.9.1'

  gem.authors << 'Ingy döt Net'
  gem.email = 'ingy@ingy.net'
  gem.summary = 'Relaxed JSON with a little bit of YAML'
  gem.description = <<-'.'
JSONY is a data language that is simlar to JSON, just more chill. All valid
JSON is also valid JSONY (and represents the same thing when decoded), but
JSONY lets you omit a lot of the syntax that makes JSON a pain to write.
.
  gem.homepage = 'http://jsony.org'

  gem.files = `git ls-files`.lines.map{|l|l.chomp}

  gem.add_dependency 'pegex', '>= 0.0.3'
  gem.add_development_dependency 'testml', '>= 0.0.2'
end
