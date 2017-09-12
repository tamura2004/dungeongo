require 'rails_helper'

RSpec.describe "tribes/show", type: :view do
  before(:each) do
    @tribe = assign(:tribe, Tribe.create!(
      :name => "Name",
      :str => "Str",
      :mov => "Mov",
      :dex => "Dex",
      :con => "Con"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Str/)
    expect(rendered).to match(/Mov/)
    expect(rendered).to match(/Dex/)
    expect(rendered).to match(/Con/)
  end
end
