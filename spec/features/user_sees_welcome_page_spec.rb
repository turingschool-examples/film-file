require "pry"

describe "user sees welcome page" do
  context "visit /" do
    it "they see a welcome message" do
      visit '/'
      
      expect(current_path).to eq('/')
      within(".welcome") do
        expect(page).to have_content("Welcome!")
      end
    end
  end
end
