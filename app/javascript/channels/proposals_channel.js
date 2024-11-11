// app/javascript/channels/proposals_channel.js
import consumer from "./consumer"

consumer.subscriptions.create({ channel: "ProposalsChannel", proposal_id: proposalId }, {
  received(data) {
    // Logique d'affichage de l'édition en direct
    document.querySelector("#proposal_content").innerText = data.content
  }
});
