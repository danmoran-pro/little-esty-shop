require 'rails_helper'

RSpec.describe 'Merchant Dashboard' do
  before :each do 
    @merchant_1 = Merchant.create!(name: "Brian's Bike Shop")
  end

  describe 'As a merchant when I visit  merchant dashboard' do
    it 'should display the name of my merchant' do 
      binding.pry
      visit "/merchants/#{@merchant_1.id}/dashboard"
      
      expect(page).to have_content(@merchant_1.name)

      end
  end 
end
