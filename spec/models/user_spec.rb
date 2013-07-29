require 'spec_helper'

describe User do
  before do
    @user = FactoryGirl.create(:user)
  end

  it "user authenticates with valid email and" do
    expect(@user.authenticate).to eq(@user)
  end

  # it "authenticates with an incorrect password" do
  #     expect(@user.authenticate("incorrect")).to be_false
  # end

  it "can have many stocks" do
      stock = FactoryGirl.create(:stock, :user_id => @user.id)

      expect(@user.stocks).to include(stock)
  end
end