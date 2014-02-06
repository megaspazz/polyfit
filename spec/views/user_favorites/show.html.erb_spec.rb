require 'spec_helper'

describe "user_favorites/show" do
  before(:each) do
    @user_favorite = assign(:user_favorite, stub_model(UserFavorite))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
