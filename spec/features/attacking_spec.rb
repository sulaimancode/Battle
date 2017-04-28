feature 'attacking' do
  scenario 'player 1 can attack player 2' do
    sign_in_and_play
    srand(11)
    click_button 'Attack!'
    visit('/play')
    expect(page).to have_content 'Sulaiman : 86 HP'
  end

  scenario 'player 2 can attack player 1' do
    sign_in_and_play
    srand(11)
    click_button 'Attack!'
    visit('/play')
    srand(11)
    click_button 'Attack!'
    visit('/play')
    expect(page).to have_content 'Unai : 86 HP'
  end

  scenario 'switches players' do
    sign_in_and_play
    click_button 'Attack!'
    visit('/play')
    expect(page).to have_content "Sulaiman's turn"
  end

  scenario 'player dies' do
    sign_in_and_play
    srand(11)
    14.times { click_button 'Attack!'; visit('/play') }
    expect(page).to have_content "LOSES"
  end

end
