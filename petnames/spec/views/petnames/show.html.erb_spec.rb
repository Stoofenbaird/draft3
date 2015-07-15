require 'rails_helper'

RSpec.describe "petnames/show", type: :view do
  before(:each) do
    @petname = assign(:petname, Petname.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
