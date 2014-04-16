require 'spec_helper'

describe Search do
  describe '.search_by_name_and_body' do
    it 'will return listings with the body and or name of the searched word' do
      listing1 = FactoryGirl.create(:listing, :name => "velvet Sofa")
      listing2 = FactoryGirl.create(:listing, :body => "Velvet Sofa is comfortable")
      Search.by_name_and_body('velvet').should eq [listing1, listing2]
    end
  end
end
