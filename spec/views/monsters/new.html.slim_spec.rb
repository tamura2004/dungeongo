require 'rails_helper'

RSpec.describe "monsters/new", type: :view do
  before(:each) do
    assign(:monster, Monster.new(
      :name => "MyString",
      :special => "MyString",
      :level => 1,
      :tribe => nil
    ))
  end

  it "renders new monster form" do
    render

    assert_select "form[action=?][method=?]", monsters_path, "post" do

      assert_select "input[name=?]", "monster[name]"

      assert_select "input[name=?]", "monster[special]"

      assert_select "input[name=?]", "monster[level]"

      assert_select "input[name=?]", "monster[tribe_id]"
    end
  end
end
