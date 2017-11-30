require 'spec_helper'

describe "When a visitor visits welcome/root path" do
  it "visitor sees a welcome message" do

    visit '/'

    save_and_open_page

    within(".welcome") do
      expect(page).to have_content("Welcome to my App!")
    end
  end
end
