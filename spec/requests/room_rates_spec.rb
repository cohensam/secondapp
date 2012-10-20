require 'spec_helper'

describe "RoomRates" do
  describe "GET /room_rates" do
    it "requires an amount", js: true do
    end
    
    before do
      visit room_rate_path
      click_link "New Room rate"
    end
    
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get room_rates_path
      response.status.should be(200)
    end
    
    it 'failed' do
      visit room_rate_path
      click_link "New Room rate"
      fill_in "Issue" , with: "A bug"
      click_button "Create Room rate"
      error_message = "Amount can't be blank"
      page.should have_content(error_message)
    end
    
    it 'falied2' do
      visit room_rate_path
      click_link
      click_button
      click_on
      fill_in "Name", with: "Samantha"
      select "Name", from: "Samantha"
      error_message = "Amount can't be blank"
      debugger;1
      page.has_content? (error_message)
    end
    
    it 'passed' do
      visit room_rate_path
      click_link "New Room_rate"
      fill_in "Name", with: "Samantha"
      click_on "Create Room rate"
      page.should_have_content "successful"
    end
    
  end
end
