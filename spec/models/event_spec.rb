require 'rails_helper'

describe Event do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:start_date)}
    it { is_expected.to validate_presence_of(:end_date)}
    it { is_expected.to validate_presence_of(:title)}
    it { is_expected.to validate_presence_of(:description)}
    it { is_expected.to validate_presence_of(:teacher)}
  end
end



# RSpec.describe Event, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
