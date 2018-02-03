defmodule SunriseWeb.Router do
  use SunriseWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SunriseWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  get "/hello", HelloController, :index
  
  # Other scopes may use custom stacks.
  # scope "/api", SunriseWeb do
  #   pipe_through :api
  # end
end
