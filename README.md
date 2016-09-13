# glip-hubot-hipchat

This is a bot for Glip users to talk to HipChat users.


## Configuration

Please set the following to environment variables:

```
HUBOT_GLIP_EMAIL=your@email.com
HUBOT_GLIP_PASSWORD=your-password
HUBOT_HIPCHAT_TOKEN=your-hipchat-token
```


## Run the bot locally

```
HUBOT_GLIP_EMAIL=your@email.com \
HUBOT_GLIP_PASSWORD=your-password \
HUBOT_HIPCHAT_TOKEN=your-hipchat-token \
./bin/hubot -a shell -n ha
```
