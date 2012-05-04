Gem::Specification.new do |s|
  s.name        = 'atk-ducksboard'
  s.version     = '0.1.4'
  s.summary     = "API wrapper for ducksboard.com dashboard with pull support"
  s.description = "Ruby API wrapper for ducksboard realtime dashboard using HTTParty"
  s.authors     = ["Joseph Hsu", "America's Test Kitchen"]
  s.email       = 'jhsu.x1@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://github.com/Americastestkitchen/ducksboard'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 1.8.7'

  s.add_runtime_dependency 'httparty', '~> 0.8', '>= 0.8.1'

  s.post_install_message = <<-DESC
  Quack! (in real-time)"

  ===

  Don't forget to set your ENV variable for DUCKSBOARD_API_KEY

    export DUCKSBOARD_API_KEY='YOURKEY'

  or set it in your script

    Ducksboard.api_key = 'YOURKEY'
DESC

end
