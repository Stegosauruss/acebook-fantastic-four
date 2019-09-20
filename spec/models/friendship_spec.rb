require "rails_helper"

RSpec.describe Friendship, type: :model do
  it { is_expected.to be }

  it "creates a friendship" do
    user1 = User.create(email: "friend1@gmail.com", password: "password", password_confirmation: "password")
    user2 = User.create(email: "friend2@gmail.com", password: "password", password_confirmation: "password")
    friendship = user1.friendships.build(friend_id: user2.id)
    expect(friendship.save).to eq true
    expect(friendship.user_id).to eq user1.id.to_s
    expect(friendship.friend_id).to eq user2.id.to_s
  end
end
