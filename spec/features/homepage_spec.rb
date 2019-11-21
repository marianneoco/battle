feature 'Homepage' do
  scenario "Can go to homepage and check what is displays" do
    visit("/")
    expect(page).to have_content("Testing infrastructure working!")
  end

  scenario "Can fill in a form with players' names, submit it and see the submitted names on screen" do
    sign_in_and_play
    expect(page).to have_content("Bob vs Bill")
  end

  scenario "As Player 1, I want to see Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Bill's HP: 50")
  end

  scenario "As Player 1, I want it to display that it's my turn" do
    sign_in_and_play
    expect(page).to have_content "Bob's turn"
  end
end
