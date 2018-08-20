# encoding: US-ASCII 
describe 'hex' do
  it 'encodes binary to hex' do
    "i\266H\034\213\253\242\266\016\217\"\027\233X\315V".to_hex.
      should == '69b6481c8baba2b60e8f22179b58cd56'

    "\354\336\030\333\347o\275\f33\017\0345Hq\333".to_hex.
      should == 'ecde18dbe76fbd0c33330f1c354871db'
  end

  it 'decodes hex to binary' do
    '69b6481c8baba2b60e8f22179b58cd56'.to_bin.
      should == "i\266H\034\213\253\242\266\016\217\"\027\233X\315V"

    'ecde18dbe76fbd0c33330f1c354871db'.to_bin.
      should == "\354\336\030\333\347o\275\f33\017\0345Hq\333"
  end

  it 'detects if a string is hex' do
    expect('ecde18dbe76fbd0c33330f1c354871db'.hex?).to            eq true
    expect('dteffujehknhfjbrjnlnldnhcujvddbikngjrtgh'.modhex?).to eq true

    expect('foobar'.hex?).to  eq false
    expect('test'.modhex?).to eq false
  end
end
