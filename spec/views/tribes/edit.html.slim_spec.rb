require 'rails_helper'

RSpec.describe "tribes/edit", type: :view do
  before(:each) do
    @tribe = assign(:tribe, Tribe.create!(
      :name => "MyString",
      :str => "MyString",
      :mov => "MyString",
      :dex => "MyString",
      :con => "MyString"
    ))
  end

  it "renders the edit tribe form" do
    render

    assert_select "form[action=?][method=?]", tribe_path(@tribe), "post" do

      assert_select "input[name=?]", "tribe[name]"

      assert_select "input[name=?]", "tribe[str]"

      assert_select "input[name=?]", "tribe[mov]"

      assert_select "input[name=?]", "tribe[dex]"

      assert_select "input[name=?]", "tribe[con]"
    end
  end
end
