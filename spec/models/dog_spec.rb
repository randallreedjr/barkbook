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

  describe "liking a dog" do
    context "when the user is the owner" do
      let(:owner) { FactoryBot.create(:user) }
      let(:dog) { FactoryBot.create(:dog, owner: owner)}
      it "does not allow the user to like the dog" do
        expect(dog.likable?(owner)).to be false
      end
    end

    context "when the user already likes the dog" do
      let(:owner) { FactoryBot.create(:user) }
      let(:dog) { FactoryBot.create(:dog)}
      let!(:like) { FactoryBot.create(:like, user: owner, dog: dog) }
      it "does not allow the user to like the dog" do
        expect(dog.likable?(owner)).to be false
      end
    end

    context "when the user does not like the dog yet" do
      let(:owner) { FactoryBot.create(:user) }
      let(:dog) { FactoryBot.create(:dog)}
      it "allows the user to like the dog" do
        expect(dog.likable?(owner)).to be true
      end
    end
  end
end
