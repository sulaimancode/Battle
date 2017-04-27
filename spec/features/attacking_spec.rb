feature 'attacking' do
  scenario 'player 1 can attack player 2' do
    sign_in_and_play
    click_button 'Attack!'
    visit('/play')
    expect(page).to have_content 'Sulaiman : 90 HP'
  end

  scenario 'player 2 can attack player 1' do
    sign_in_and_play
    click_button 'Attack!'
    visit('/play')
    expect(page).to have_content 'Unai : 90 HP'
  end
end
