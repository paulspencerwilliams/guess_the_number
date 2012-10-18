When /^I visit homepage$/ do
  visit '/guess'
end

Then /^I should be prompted to guess number$/ do
  page.should have_content('Guess a number')
end

When /^I guess (\d+)$/ do |my_guess|
	fill_in 'My Guess', :with => my_guess
end

Then /^I should be advised to guess higher$/ do
  pending # express the regexp above with the code you wish you had
end
