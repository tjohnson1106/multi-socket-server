let Room = {
  init(socket, el) {
    let roomId = el.getAttribute("data-id");
    console.log(`element: ${el}, roomId: ${roomId}`);
    socket.connect();
    this.onReady(roomId, socket);
  },

  onReady(roomId, socket) {
    let roomChannel = socket.channel("rooms:" + roomId);

    roomChannel
      .join()
      .receive("ok", (resp) => console.log("joined room channel", resp))
      .receive("error", (reason) => console.log("failed to join", reason));
  }
};

export default Room;
