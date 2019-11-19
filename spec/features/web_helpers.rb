def sign_in_and_play
  visit("/")
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Bill"
  click_button "Submit"
end

def sign_in_and_play_and_first_attack
  visit("/")
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Bill"
  click_button "Submit"
  click_button "Attack Bill!"
end
