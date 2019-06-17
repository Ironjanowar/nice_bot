defmodule NiceBot.Application do
  use Application

  def start(_type, _args) do
    token = "376323488:AAFdz_7lJt69S5gnSJM2GgBqT0K6AIo3Ouc"

    children = [
      ExGram,
      {NiceBot.Bot, [method: :polling, token: token]}
    ]

    opts = [strategy: :one_for_one, name: NiceBot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
