defmodule ChatServerWeb.RoomChannel do
  use ChatServer, :channel

  def join("rooms:" <> room_id, _payload, socket) do
    {:ok, assign(socket, room_id, String.to_integer(room_id))}
  end
end
