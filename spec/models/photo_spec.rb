require 'spec_helper'

describe Photo do
  it { should belong_to :user }
  it { should belong_to :listing }

  it { should validate_attachment_presence(:pic) }
end
