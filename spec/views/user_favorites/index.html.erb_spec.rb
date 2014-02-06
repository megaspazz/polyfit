require 'spec_helper'

describe "user_favorites/index" do
  before(:each) do
    assign(:user_favorites, [
      stub_model(UserFavorite),
      stub_model(UserFavorite)
    ])
  end

  it "renders a list of user_favorites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
