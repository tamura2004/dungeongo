require 'rails_helper'

RSpec.describe "tribes/index", type: :view do
  before(:each) do
    assign(:tribes, [
      Tribe.create!(
        :name => "Name",
        :str => "Str",
        :mov => "Mov",
        :dex => "Dex",
        :con => "Con"
      ),
      Tribe.create!(
        :name => "Name",
        :str => "Str",
        :mov => "Mov",
        :dex => "Dex",
        :con => "Con"
      )
    ])
  end

  it "renders a list of tribes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Str".to_s, :count => 2
    assert_select "tr>td", :text => "Mov".to_s, :count => 2
    assert_select "tr>td", :text => "Dex".to_s, :count => 2
    assert_select "tr>td", :text => "Con".to_s, :count => 2
  end
end
