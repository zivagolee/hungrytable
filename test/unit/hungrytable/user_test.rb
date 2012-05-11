require 'test_helper'

describe Hungrytable::User do
  subject { Hungrytable::User }

  it 'should be a class' do
    subject.class.must_be_kind_of Class
  end

  %w{ login }.each do |meth|
    it "should respond to #{meth}" do
      assert subject.new.respond_to?(meth.to_sym), true
    end
  end

  describe 'users' do
    before do
      @user = subject.new
    end
    it 'should be able to login' do
      response = @user.login({ email: 'bob@webservices.com', password: 'password' })
      response.must_be_kind_of Hash
    end
  end
end
