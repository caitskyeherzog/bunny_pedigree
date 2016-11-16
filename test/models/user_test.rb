require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "#validate" do
     cait = users(:one)
     assert cait.validate?("password")
   end
   test "#validate when wrong password" do
     cait = users(:one)
     refute cait.validate?("notpassword")
   end
end
