require 'spec_helper'

describe ::Finicity::V1::Request::DeleteCustomer do
  subject { described_class.new("token-123", 1) }

  describe "#headers" do
    it "has correct headers" do
      subject.headers.should have_key('Finicity-App-Key')
      subject.headers.should have_key('Finicity-App-Token')
    end
  end

  describe "#url" do
    it "has a correct url" do
      subject.url.to_s.should include('customers/1')
    end
  end
end
