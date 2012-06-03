require File.join(File.dirname(__FILE__), "../../../lib/ar_truncator/active_record/base")

class DummyModel < ActiveRecord::Base
end
describe ActiveRecord::Base do

  let(:connection) { stub("connection")}

  it "can truncate the table by executing SQL" do
    DummyModel.stub(:connection).and_return(connection)
    DummyModel.stub(:table_name).and_return("Dummies")
    connection.should_receive(:execute).with("TRUNCATE table Dummies")
    DummyModel.truncate
  end
end
