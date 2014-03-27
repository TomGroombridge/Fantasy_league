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

		it "should be able to add a skill level to the player" do 
			visit 'players/new'
			fill_in 'Name', with: 'Tom Groombridge'
			fill_in 'Shooting', with: '50'
			click_button 'Create Player'
			expect(page).to have_content 'Tom Groombridge'
			expect(page).to have_content '50'
		end

		it "should be able to add a defending skill level to a player " do 
			visit 'players/new'
			fill_in 'Name', with: 'Tom Groombridge'
			fill_in 'Shooting', with: '50'
			fill_in 'Defending', with: '50'
			click_button 'Create Player'
			expect(page).to have_content 'Tom Groombridge'
			expect(page).to have_content '50'
			expect(page).to have_content '50'
		end

		it "should be able to add a discipline level to the player " do 
			visit 'players/new'
			fill_in 'Name', with: 'Tom Groombridge'
			fill_in 'Shooting', with: '50'
			fill_in 'Defending', with: '50'
			select 'Bad', from: 'Discipline'
			click_button 'Create Player'
			expect(page).to have_content 'Tom Groombridge'
			expect(page).to have_content '50'
			expect(page).to have_content '50'
			expect(page).to have_content 'Bad'			
		end

		it "should be able to add what team the player plays for" do 
			visit 'players/new'
			fill_in 'Name', with: 'Tom Groombridge'
			fill_in 'Shooting', with: '50'
			fill_in 'Defending', with: '50'
			select 'Bad', from: 'Discipline'
			select '1', from: 'Team'
			click_button 'Create Player'
			expect(page).to have_content 'Tom Groombridge'
			expect(page).to have_content '50'
			expect(page).to have_content '50'
			expect(page).to have_content 'Bad'
			expect(page).to have_content '1'
		end


		






end


end
	