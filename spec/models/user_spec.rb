require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(
      name: 'Anything',
      email: 'anything@gmail',
      password: 'anything',
      password_confirmation: 'anything'
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a password less than 6 characters' do
    subject.password = '12345'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a password_confirmation less than 6 characters' do
    subject.password_confirmation = '12345'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a password_confirmation different to password' do
    subject.password_confirmation = '123456'
    expect(subject).to_not be_valid
  end
end
