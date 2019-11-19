feature "Attack again" do

  scenario "As Player 2, I want to attack Player 1 and get a confirmation" do
    sign_in_and_play_and_first_attack
    click_button "Attack Bob!"
    expect(page).to have_content("Bob was attacked by Bill")
  end

  scenario "As Player 2, I want my attack to reduce Player 1's HP by 10" do
    sign_in_and_play_and_first_attack
    click_button "Attack Bob!"
    expect(page).not_to have_content("Bob's HP: 0")
    expect(page).to have_content("Bob's HP: -10")
  end

end
