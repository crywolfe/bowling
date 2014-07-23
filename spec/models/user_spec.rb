# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

describe User do

  it "should not be able to see other users games" do
    pending
  end

  it "should be able to add one or more comments to a game" do
    pending
  end

  it { should have_many :games }

  it { should validate_presence_of :email }
  
end

describe "the signin process", :type => :feature do
  before :each do
    User.make(:email => 'gerald@gerald.com', :password => '123456')
  end

  it "signs me in" do
    visit '/sessions/new'
    within("#session") do
      fill_in 'Email', :with => 'gerald@gerald.com'
      fill_in 'Password', :with => '123456'
    end
    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end
