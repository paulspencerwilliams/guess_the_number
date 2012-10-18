Given /^the number to guess is (\d+)$/ do |the_number|
  Games.first.number.should eq(the_number)
end

When /^I visit homepage$/ do
  visit '/guess'
end

Then /^I should be prompted to guess number$/ do
	page.should have_no_content('Guess higher...')
  page.should have_content('Guess a number')
end

When /^I guess (\d+)$/ do |my_guess|
	fill_in 'My Guess', :with => my_guess
	click_button 'Guess'
end

Then /^I should be advised to guess higher$/ do
  page.should have_content('Guess higher...')
end


Then /^I should be advised to guess lower$/ do
  page.should have_content('Guess lower...')
end