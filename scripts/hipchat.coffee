# Description:
#   Talk to HipChat
#
# Commands:
#   hubot list - List HipChat rooms.
#   hubot send <ID> <message> - send message to room #ID.

Hipchatter = require('hipchatter')

hipchatter = new Hipchatter(process.env.HUBOT_HIPCHAT_TOKEN)

module.exports = (robot) ->
  robot.respond /list$/, (res) ->
    hipchatter.rooms (err, rooms) ->
      if(!err)
        res.send rooms.map((room) ->
          "#{room.id} : #{room.name}"
        ).join('\n')
      else
        res.send "Uanble to list rooms: #{err}"

  robot.respond /send (\d+) (.+?)$/, (res) ->
    hipchatter.send_room_message(
      res.match[1]
      res.match[2]
      (err) ->
        if err == null
          res.send "Message \"#{res.match[2]}\" sent to Room ##{res.match[1]}"
        else
          res.send "Failed to send message: #{err}"
    )
