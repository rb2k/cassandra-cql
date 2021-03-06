require File.expand_path('spec_helper.rb', File.dirname(__FILE__))
include CassandraCQL

describe "UUID" do
  it "should respond_to to_guid" do
    UUID.new.respond_to?(:to_guid)
  end

  it "should respond_to to_time" do
    UUID.new.respond_to?(:to_time)
  end
  
  it "should instantiate from raw bytes" do
    UUID.new("\252}\303\374\3137\021\340\237\214\251}\315\351 ]")
  end

  it "should instantiate from a Time object" do
    ts = Time.new
    UUID.new(ts).to_time.should eq(ts)
  end
  
  it "should turn have a to_time class method that takes bytes" do
    UUID.to_time("\252}\303\374\3137\021\340\237\214\251}\315\351 ]").should be_kind_of(Time)
  end
end

