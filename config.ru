cat config.ru
require "rubygems"
# require "bundler"
require "sinatra"
require_relative "traceroute"

Bundler.require(:default)

Sinatra::Base.set(:run, false)
Sinatra::Base.set(:env, :production)

run Traceroute
