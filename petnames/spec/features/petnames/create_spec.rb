require 'rails_helper'
require 'capybara/rspec'

describe "Creating petname" do

    def create_petname(options={})
        options[:name] ||= "Pet's name"

        visit "/petnames"
        click_link "New Petname"
        expect(page).to have_content("New Petname")

        fill_in "Name", with: options[:name]
        click_button "Create Petname"
    end

  it "redirects to the Petnames index page on success" do 
    create_petname
    expect(page).to have_content("Pet's name")
  end

  it "displays an error when the petname has no name" do
    expect(Petname.count).to eq(0)

    create_petname name: ""

    expect(page).to have_content("error")
    expect(Petname.count).to eq(0)

    visit "/petnames"
    expect(page).to_not have_content("New petname")
  end

  it "displays an error when the petname is too long" do
    expect(Petname.count).to eq(0)

    create_petname name: "Friendly Extroverted Active Happy Sloppy Kisses"

    expect(page).to have_content("error")
    expect(Petname.count).to eq(0)

    visit "/petnames"
    expect(page).to_not have_content("New petname")
  end
end
