require 'spec_helper'

describe "user_favorites/new" do
  before(:each) do
    assign(:user_favorite, stub_model(UserFavorite).as_new_record)
  end

  it "renders new user_favorite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_favorites_path, "post" do
    end
  end
end
