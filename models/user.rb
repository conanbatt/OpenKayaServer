class User < Ohm::Model

  attribute :nickname
  attribute :rating
  attribute :email

  counter :karma

  attribute :account

  def validate
    assert_present :email
    assert_present :rating
    assert_present :nickname
    assert_present :account
  end

end