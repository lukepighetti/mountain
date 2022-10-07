const Client = require('tmi.js').Client;

const channel = 'lukepighetti';
const message = "Help me get off this mountain... it's too slippery! Things you can ask me: show inventory, show stats, show map, look around, pick up item, take exit";

const client = Client({
  "channels": [channel],
  identity: {
    username: 'lukepighetti',
    password: process.env.TWITCH_TOKEN,
  },
});

const sendMessage = () => client.say(channel, message);

async function main() {
  await client.connect();

  setTimeout(() => {
    sendMessage();
  }, 5 * 1000);

  setInterval(() => {
    sendMessage();
  }, 60 * 1000);
}

main();