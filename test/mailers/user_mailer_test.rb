require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "new_user_confirm" do
    mail = UserMailer.new_user_confirm
    assert_equal "New user confirm", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
