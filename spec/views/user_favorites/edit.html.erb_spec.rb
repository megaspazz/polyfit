require 'spec_helper'

describe "user_favorites/edit" do
  before(:each) do
    @user_favorite = assign(:user_favorite, stub_model(UserFavorite))
  end

  it "renders the edit user_favorite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_favorite_path(@user_favorite), "post" do
    end
  end
end
