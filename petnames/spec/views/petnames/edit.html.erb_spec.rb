require 'rails_helper'

RSpec.describe "petnames/edit", type: :view do
  before(:each) do
    @petname = assign(:petname, Petname.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit petname form" do
    render

    assert_select "form[action=?][method=?]", petname_path(@petname), "post" do

      assert_select "input#petname_name[name=?]", "petname[name]"
    end
  end
end
