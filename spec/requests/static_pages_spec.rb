require 'spec_helper'

describe "Static pages" do

	describe "Test page" do

		#it "should have the title 'TEST PAGE" do
		#	visit '/test'
		#	expect(page).to have_title('TEST PAGE')
		#end
		
		it "should have the content 'Test page'" do
			visit '/test'
			expect(page).to have_content('TEST PAGE')
		end
  end

end
