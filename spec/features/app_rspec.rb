require"/spec_helper"

feature "/" do
  scenario "logged out user sees" do
    visit "/"
      expect(page).to have_content("Contacts")

  end

feature "/sign_in" do
  scenario "sign in page" do
    visit "/sign_in"
      fill_in('username', :with => 'Hunter')
      fill_in('Password', :with => 'puglyfe')
      click_button('sign in')
  end
end


end
