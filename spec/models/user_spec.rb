require "rails_helper"
RSpec.describe User, :type => :model do
  it { should have_secure_password }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_uniqueness_of(:email) }
  it { should_not allow_value("abc", "a@!d.com", "a@a.c0m").for(:email).on(:create)}
end
