require 'rails_helper'

RSpec.describe "monsters/edit", type: :view do
  before(:each) do
    @monster = assign(:monster, Monster.create!(
      :name => "MyString",
      :special => "MyString",
      :level => 1,
      :tribe => nil
    ))
  end

  it "renders the edit monster form" do
    render

    assert_select "form[action=?][method=?]", monster_path(@monster), "post" do

      assert_select "input[name=?]", "monster[name]"

      assert_select "input[name=?]", "monster[special]"

      assert_select "input[name=?]", "monster[level]"

      assert_select "input[name=?]", "monster[tribe_id]"
    end
  end
end
