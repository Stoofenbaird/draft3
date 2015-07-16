require 'rails_helper'

describe "Editing pet names" do 
  let!(:petname) { Petname.create(name: "My pet's name")}
  def update_petname(options={})
      options[:name] ||= "My pet's name"

      petname = options[:petname]

      visit "/petnames"
      within "#petname_#{petname.id}" do
        click_link "Edit"
      end

      fill_in "Name", with: options[:name]
      click_button "Update Petname"
    end

  it "updates a petname successfully with correct information" do
    petname = Petname.create(name: "My pet's name")
    update_petname petname: petname, name: "Corrected name"

    petname.reload

    expect(page).to have_content("Petname was successfully updated.")
    expect(petname.name).to eq("Corrected name")
  end

  it "displays an error if the name is blank" do
    update_petname petname: petname, name: ""
    name = petname.name
    petname.reload
    expect(page).to have_content("error")
  end

  it "displays an error if the name is too long" do
    update_petname petname: petname, name: "Petname is limited to twentysix characters"
    expect(page).to have_content("error")
  end  
end
