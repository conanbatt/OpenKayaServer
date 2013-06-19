require "cuba"
require "cuba/render"
require 'active_support/core_ext'
require 'ohm'

Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }
require File.expand_path("api/example_api", File.dirname(__FILE__))

Cuba.plugin Cuba::Render

Cuba.define do
 
  on "my_development" do 
    res.write "Your code here!"
  end

  on "conanbatt" do
    run EXAMPLE_FEATURE
  end
 
  on default do
    res.write render("views/demo_test.html.erb")
  end

end
