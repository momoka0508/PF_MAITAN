require 'rails_helper'

RSpec.describe User, type: :model do
  it 'ユーザー名があるかどうか' do
    @user = User.new
    @user.valid?
    expect(@user.errors.messages[:name]).to include("can't be blank")
  end
end
