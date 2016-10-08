require_relative '../spec_helper'

RSpec.describe "When a user visits '/'" do
  it "they see a welcome message" do
    visit '/'

    expect(page).to have_content("Welcome to Film File!")
  end
end
