[![Code Climate](https://codeclimate.com/repos/563abb6269568060130019cc/badges/16c0fcde2e3ba06b3e0f/gpa.svg)](https://codeclimate.com/repos/563abb6269568060130019cc/feed)
[![Test Coverage](https://codeclimate.com/repos/563abb6269568060130019cc/badges/16c0fcde2e3ba06b3e0f/coverage.svg)](https://codeclimate.com/repos/563abb6269568060130019cc/coverage)
[![Build Status](https://travis-ci.org/Jtensminger/twitter_api.svg)](https://travis-ci.org/Jtensminger/twitter_apii)

Twitter API
===========
For this Twitter API, a user will be able to be created with the payload of an email and password, then will be able to login which will generate a token used to authenticate the user in order to create tweets. For each of these actions, a POST will need to be used.
##  Users
URL:
POST--https://twittertiy.herokuapp.com/users  
GET--https://twittertiy.herokuapp.com/users

Sign Up A User:
Each of the things needed (aka payload) in order for a user to sign up is an email and password.Here is an example of what the json looks like that will be used:

```
{
 "user": {
    "email": "user@example.com",
    "password": "password"
        }
}
```

## Auth
URL:
POST-- https://twittertiy.herokuapp.com/oauth/token

Once a user is signed up, they will need to log in with the payload of grant_type, username, and password. From this a token will be created and will be needed to be put into a header. Each token will be good for two hours.
Here is an example of the json of logging in:
```
{
  "grant_type": "password",
  "username": "user@example.com",
  "password": "password"
}


```

## Tweets
URL:
POST-- https://twittertiy.herokuapp.com/tweets  
GET-- https://twittertiy.herokuapp.com/tweets
Include a Authorization header with the word Bearer and a Token
Ex: Authorization Bearer e19cf968d21e3f825e9d4de6769fc2a8f2911cd13179f0279845d99fc129e49d

A token will be generated and needed to be put into the header of the tweets url.
Using this token, the user will be able to create a tweet with the payload of a body. Here is an example of the json:

```
{
"tweet" : {
    "body": "This is a tweet"
          }
}

```

## Follow & Unfollow
URL:
PUT-- https://twittertiy.herokuapp.com/users/{input_user_id}/follow  
PUT-- https://twittertiy.herokuapp.com/users/{input_user_id}/unfollow  
example https://twittertiy.herokuapp.com/users/1/unfollow

Include a Authorization header with the word Bearer and a Token
Ex: Authorization Bearer e19cf968d21e3f825e9d4de6769fc2a8f2911cd13179f0279845d99fc129e49d


Ping the follow or unfollow URL with a PUT HTTP request to follow and unfollow the user. There is no payload to send.


