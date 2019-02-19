source "http://www.rubygems.org"

gemspec

platforms :rbx do
  gem 'rubysl', '~> 2.0' # if using anything in the ruby standard library
end

platforms :mri do
  "openssl"
end

platforms :jruby do
  "jruby-openssl"
end
