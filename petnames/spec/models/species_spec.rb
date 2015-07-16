require 'rails_helper'

RSpec.describe Species, type: :model do
  it { should belong_to(:petname) }
end
