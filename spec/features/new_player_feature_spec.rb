require 'spec_helper'

describe 'adding a new player to the list ' do 

	context 'given a user' do 

		it "should allow a user to view all the players" do 
			visit '/players'
			expect(current_path).to eq '/players'
		end

		it "should be able to add a new player" do 
			visit 'players/new'
			fill_in 'Name', with: 'Tom Groombridge'
			click_button 'Create Player'
			expect(page).to have_content 'Tom Groombridge'
		end

end


end
	