feature 'healing' do
  scenario "player's health increases" do
    sign_in_and_play
    srand(11)
    click_button 'Heal'
    visit('/play')
    expect(page).to have_content 'Sulaiman : 114 HP'
  end
end
