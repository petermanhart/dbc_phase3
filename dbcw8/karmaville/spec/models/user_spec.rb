require 'spec_helper'

describe User do
  it { should have_many(:karma_points) }

  describe '#valid?' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }

    it { should validate_presence_of(:username) }
    it { should ensure_length_of(:username).is_at_least(2).is_at_most(32) }

    it { should validate_presence_of(:email) }

    context 'when a user already exists' do
      before { create(:user) }

      it { should validate_uniqueness_of(:username).case_insensitive }
      it { should validate_uniqueness_of(:email).case_insensitive }
    end
  end

  describe '.by_karma' do
    it 'returns users in order of highest-to-lowest karma' do
      user_med   = create(:user_with_med_karma)
      user_low   = create(:user_with_low_karma)
      user_high  = create(:user_with_high_karma)

      User.by_karma.should eq [user_high.reload, user_med.reload, user_low.reload]
    end
  end

  describe '#total_karma' do
    let(:user) { create(:user) }

    it 'returns the total karma for the user' do 
        user.karma_points.create(value: 6, label: "b")
        user.karma_points.create(value: 6, label: "b")
        user.karma_points.create(value: 6, label: "b")
        user.reload.total_karma.should == 18
    end
  end

  describe '#full_name' do
    let(:user) { build(:user) }

    it 'returns both the first and last names in a single string' do
      user.first_name = 'John'
      user.last_name  = 'Doe'

      user.full_name.should eq 'John Doe'
    end
  end

  describe '.page' do
    let(:users) { 100.times {create(:user)}}

    it 'returns the first 20 users, ranked by karma, on the first page' do
      User.page(1).should eq(User.by_karma[0..19])
    end

    it 'does not return any users who are not among the first 20 on the first page' do
      User.page(1).should_not include(*User.by_karma[20..99])
    end

  end

end
