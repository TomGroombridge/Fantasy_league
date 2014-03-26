require 'spec_helper'

	describe ' editing a player ' do 

		context 'given a player' do 

			it "should be able to edit the name of that player" do 
				visit 'players/new'
				fill_in 'Name', with: 'Tom Groombridge'
				click_button 'Create Player'
				click_link 'Edit this player'
				fill_in 'Name', with: 'new name'
				click_button 'Update Player'
				expect(page).to have_content 'new name'
			end

		end
	end