require 'rails_helper'

RSpec.describe "monsters/show", type: :view do
  before(:each) do
    @monster = assign(:monster, Monster.create!(
      :name => "Name",
      :special => "Special",
      :level => 2,
      :tribe => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Special/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
