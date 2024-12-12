import consumer from "./consumer"

consumer.subscriptions.create("ChatChannel", {
  connected() {
    console.log("Connected to the chat channel.");
  },

  disconnected() {
    console.log("Disconnected from the chat channel.");
  },

  received(data) {
    const messages = document.getElementById("messages");
    messages.innerHTML += `<p><strong>${data.user}:</strong> ${data.message}</p>`;
  },

  speak(message, user) {
    this.perform('speak', { message: message, user: user });
  }
});
