require 'rails_helper'

RSpec.describe "tribes/new", type: :view do
  before(:each) do
    assign(:tribe, Tribe.new(
      :name => "MyString",
      :str => "MyString",
      :mov => "MyString",
      :dex => "MyString",
      :con => "MyString"
    ))
  end

  it "renders new tribe form" do
    render

    assert_select "form[action=?][method=?]", tribes_path, "post" do

      assert_select "input[name=?]", "tribe[name]"

      assert_select "input[name=?]", "tribe[str]"

      assert_select "input[name=?]", "tribe[mov]"

      assert_select "input[name=?]", "tribe[dex]"

      assert_select "input[name=?]", "tribe[con]"
    end
  end
end
