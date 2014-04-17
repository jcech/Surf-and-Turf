require 'spec_helper'
  describe Listing do
    it { should have_many :photos }
    it { should belong_to :user }
    it { should have_many :comments }
    it { should validate_presence_of :price}
end
