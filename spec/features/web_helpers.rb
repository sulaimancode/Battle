def sign_in_and_play
   visit('/')
   fill_in :player_1_name, with: 'Unai'
   fill_in :player_2_name, with: 'Sulaiman'
   click_button 'FIGHT!!'
end
