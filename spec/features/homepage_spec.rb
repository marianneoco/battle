feature 'Homepage' do
  scenario "Can go to homepage and check what is displays" do
    visit("/")
    expect(page).to have_content("Testing infrastructure working!")
  end

  scenario "Can fill in a form with players' names, submit it and see the submitted names on screen" do
    sign_in_and_play
    expect(page).to have_content("Bob vs Bill")
  end
end
