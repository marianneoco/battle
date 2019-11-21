def sign_in_and_play
  visit("/")
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Bill"
  click_button "Submit"
end

def first_attack_and_continue
  click_button "Attack Bill!"
  click_button "Continue game!"
end

def attack_on_each_side
  click_button "Attack Bill!"
  click_button "Continue game!"
  click_button "Attack Bob!"
  click_button "Continue game!"
end
