require "telegram/bot"

token = "403417702:AAHIdL4rF8Regocyxmuh9iS2Px2tsImaA5g"

Telegram::Bot::Client.run(token) do |bot|
   bot.listen do |message|
      case message.text

        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hi My Friend , My commands are /hello and /by")
        when '/hello'
          bot.api.send_message(chat_id: message.chat.id, text: "Welcome to https://github.com")
        when '/by'
          bot.api.send_message(chat_id: message.chat.id, text: "Good By my Friend")
     end
   end
end