require 'rails_helper'

RSpec.describe "petnames/index", type: :view do
  before(:each) do
    assign(:petnames, [
      Petname.create!(
        :name => "Name"
      ),
      Petname.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of petnames" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
