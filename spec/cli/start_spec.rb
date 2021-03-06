RSpec.describe "cli run" do

  before :each do
    @k = kommando_maker "exe/superbara start tests/minimal", {
      timeout: 10
    }
  end

  it "opens console after run" do
    @k.out.once 'run ../common' do
    end.once 'run minimal' do
    end.once 'done.' do
    end.once '[ console ]' do
      @k.in.writeln "q"
    end
    @k.run

    expect(@k.code).to eq 0
  end

end
