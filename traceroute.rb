$ cat traceroute.rb 

require "sinatra"
require 'timeout'
require 'socket'

class Traceroute < Sinatra::Base
  get "/:ip" do
    output = `traceroute #{params[:ip]}`
    output
  end
end
