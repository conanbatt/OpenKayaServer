require File.expand_path("test_helper", File.dirname(__FILE__))

prepare do
  Ohm.connect
  Ohm.flush
end
  
setup do
  User.create(:nickname => "hola", :rating => -5.5, :email => "hola@hola.com")
end

test "Testing users are created" do 
  us = User.create(:nickname => "hola", :rating => -5.5, :email => "hola@hola.com")

  assert User[us.id]

end