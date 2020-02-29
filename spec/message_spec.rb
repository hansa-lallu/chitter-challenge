describe Message do

  context 'a new peep is made' do

    let(:test_user) { User.create({ name: "testuser", username: "usertest", email: "test@test.com", password: "test" }) }
  
    it 'creates a peep' do
      message = Message.create(tweet: "hello", created_at: Time.now)
      expect(message).to be_a Message
    end
  end 
end
