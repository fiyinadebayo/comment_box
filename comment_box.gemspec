# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require 'comment_box/version'

Gem::Specification.new do |s|
  s.name          = 'comment_box'
  s.version       = CommentBox::VERSION
  s.authors       = ['Fiyin Adebayo']
  s.email         = 'fiyinsimeon@gmail.com'
  s.date          = '2016-07-13'
  s.summary       = 'A robust comment system'
  s.description   = 'Provides robust comment functionality for any application.'
  s.license       = 'MIT'
  s.homepage      = 'https://github.com/ceemion/comment_box'
  s.required_ruby_version = '>= 2.3.1'

  s.files = Dir.glob('lib/**/*')
  s.test_files = Dir.glob('{test,spec,features}/**/*')

  s.add_dependency 'rails', '4.2.6'
  s.add_development_dependency 'spring'
  s.add_development_dependency 'rspec-rails', '~> 3.5'
end
