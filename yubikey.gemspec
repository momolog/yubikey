Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = "yubikey"
  s.version = "1.4.2"
  s.description = "A library to verify, decode, decrypt and parse Yubikey one-time passwords."
  s.summary = "Yubikey library for Ruby"

  s.authors = ["Jonathan Rudenberg"]
  s.email = "jon335@gmail.com"
  s.date = "2013-03-19"
  s.homepage = "https://github.com/titanous/yubikey"

  s.extra_rdoc_files = [
      "LICENSE",
      "README.md"
  ]
  s.files = [
      "examples/otp.rb",
      "lib/yubikey.rb",
      "lib/yubikey/configuration.rb",
      "lib/yubikey/hex.rb",
      "lib/yubikey/modhex.rb",
      "lib/yubikey/otp.rb",
      "lib/yubikey/otp_verify.rb",
      "lib/cert/chain.pem",
      "spec/hex_spec.rb",
      "spec/spec_helper.rb"
  ]
  s.rdoc_options = ["--title", "yubikey", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "yubikey"

  s.add_development_dependency 'rake', ">= 0.8.7"
  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'rspec', ">= 2.0"
end
