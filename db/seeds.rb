u1 = User.create(email: 'user@example.com', password: 'password')
u2 = User.create(email: 'user2@example.com', password: 'password')

p1 = u1.tweets.create(body: 'An Airplane')
p2 = u1.tweets.create(body: 'A Train')

p3 = u2.tweets.create(body: 'A Truck')
p4 = u2.tweets.create(body: 'A Boat')
