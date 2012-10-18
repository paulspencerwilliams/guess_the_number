When /^I visit homepage$/ do
  visit '/guess'
end

Then /^I should be prompted to guess number$/ do
  page.should have_content('Guess a number')
end