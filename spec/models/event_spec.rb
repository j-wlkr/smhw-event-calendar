require 'rails_helper'

describe Event do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:start_date)}
    it { is_expected.to validate_presence_of(:end_date)}
    it { is_expected.to validate_presence_of(:title)}
    it { is_expected.to validate_presence_of(:description)}
    it { is_expected.to validate_presence_of(:teacher)}
    it { is_expected.to validate_length_of(:title).is_at_least(1) }
    it { is_expected.to validate_length_of(:description).is_at_least(1) }
    it { is_expected.to validate_length_of(:teacher).is_at_least(1) }
    it 'should not be valid if the start time is after the end time' do
      event = Event.create(start_date: DateTime.now + 1, end_date: DateTime.now, title: "test title", description: "test desc", teacher: "ms test")
      expect(event).to_not be_valid
    end
  end
end
