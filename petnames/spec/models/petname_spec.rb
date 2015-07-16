require 'rails_helper'

RSpec.describe Petname, type: :model do
  it { should have_one(:species) }
end
