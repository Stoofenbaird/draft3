require 'rails_helper'

describe "Deleting pet names" do 
  let!(:petname) { Petname.create(name: "My pet's name")}

  it "is successful when clicking the destroy link" do
    visit "/petnames"

    within "#petname_#{petname.id}" do
      click_link "Destroy"
    end

    expect(page).to_not have_content(petname.name)
    expect(Petname.count).to eq(0)
  end
end