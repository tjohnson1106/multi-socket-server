defmodule ChatServerWeb.SessionController do
  use ChatServerWeb, :controller

  alias ChatServer.Accounts

  def new(conn, _) do
    render(conn, "new.html")
  end

  def delete(conn, _) do
    conn
    |> configure_session(drop: true)
    |> put_flash(:success, "Successfully signed out")
    |> redirect(to: "/")
  end

  # valid user, not found, or unauthorized are the valid results

  def create(conn, %{"user" => %{"email" => email, "password" => password}}) do
    #    case Accounts
  end
end
