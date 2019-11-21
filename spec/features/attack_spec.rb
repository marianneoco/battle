feature "Attack" do

  before do
    allow(Kernel).to receive(:rand).and_return(10)
  end

  scenario "As Player 1, I want to attack Player 2 and get a confirmation" do
    sign_in_and_play
    click_button "Attack Bill!"
    expect(page).to have_content("Bill was attacked by Bob")
  end

  scenario "As Player 1, I want my attack to reduce Player 2's HP by 10" do
    sign_in_and_play
    click_button "Attack Bill!"
    expect(page).not_to have_content("Bill's HP: 50")
    expect(page).to have_content("Bill's HP: 40")
  end

  scenario "As Player 2, I want it to display that it's my turn" do
    sign_in_and_play
    first_attack_and_continue
    expect(page).to have_content("Bill's turn")
  end

  scenario "As Player 2, I want to attack Player 1 and get a confirmation" do
    sign_in_and_play
    first_attack_and_continue
    click_button "Attack Bob!"
    expect(page).to have_content("Bob was attacked by Bill")
  end

  scenario "As Player 2, I want my attack to reduce Player 1's HP by 10" do
    sign_in_and_play
    first_attack_and_continue
    click_button "Attack Bob!"
    expect(page).not_to have_content("Bob's HP: 50")
    expect(page).to have_content("Bob's HP: 40")
  end

  scenario "As Player, I want to see a lose message if I reach 0HP first" do
    sign_in_and_play
    4.times { attack_on_each_side }
    click_button "Attack Bill!"
    expect(page).to have_content("Game over!!! Bob wins!!!")
  end

end
