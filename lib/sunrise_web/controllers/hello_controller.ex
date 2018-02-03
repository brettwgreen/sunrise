defmodule SunriseWeb.HelloController do
  use SunriseWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
