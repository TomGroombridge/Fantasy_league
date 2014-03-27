require 'spec_helper'

describe 'deleting player' do 

	context 'given a player' do 

		it "should be allowed to delete a player" do 
			visit 'players/new'
			fill_in 'Name', with: 'Tom Groombridge'
			click_button 'Create Player'
			click_link 'Delete this player'
			expect(page).to have_content 'No Players Have Been Entered Yet!'
		end

	end

	end