feature 'Viewing hitpoints' do
  scenario "can view players 2 HP" do
    sign_in_and_play
    expect(page).to have_content 'Sulaiman: 100HP'
  end
end
