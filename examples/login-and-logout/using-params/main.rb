visit 'the-internet.herokuapp.com'

# by default waits 5 seconds
wait do
  has_text? 'Welcome to the-internet'
end

run 'helpers/login', username: 'tomsmith', password: 'SuperSecretPassword!'

# do nothing for 2 seconds
sleep 2

run 'helpers/logout'
