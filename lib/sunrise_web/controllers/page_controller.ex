defmodule SunriseWeb.PageController do
  use SunriseWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
