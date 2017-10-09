describe "When a user visits '/'" do
  it "they see a welcome message" do
    visit '/'

    within('#greeting') do
      expect(page).to have_content("Welcome!")
    end
  end
end
