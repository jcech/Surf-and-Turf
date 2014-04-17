require 'spec_helper'

describe User do
  it { should have_many :photos }
  it { should have_many :listings }
  it { should have_many :comments }
  it { should validate_presence_of :name }
end
