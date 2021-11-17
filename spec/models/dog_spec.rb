require 'rails_helper'

RSpec.describe Dog, type: :model do
  it "does not require an owner" do
    expect(Dog.new).to be_valid
  end

  it "associates a user as owner when present" do
    owner = FactoryBot.create(:user)
    dog = FactoryBot.create(:dog, owner: owner)
    expect(dog.owner).to eq owner
  end
end
