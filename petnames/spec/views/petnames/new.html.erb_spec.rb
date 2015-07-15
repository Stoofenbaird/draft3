require 'rails_helper'

RSpec.describe "petnames/new", type: :view do
  before(:each) do
    assign(:petname, Petname.new(
      :name => "MyString"
    ))
  end

  it "renders new petname form" do
    render

    assert_select "form[action=?][method=?]", petnames_path, "post" do

      assert_select "input#petname_name[name=?]", "petname[name]"
    end
  end
end
