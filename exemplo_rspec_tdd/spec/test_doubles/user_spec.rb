describe 'Test Double' do
  it '--' do
    user = double('User')
    # allow(user).to receive_messages(name: 'Jack', password: 'Secret')
    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:password).and_return('Secret')
    puts user.name
    puts user.password
  end
end
