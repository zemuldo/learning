defmodule CarFactory do
  def start do
    children = [
      {BasePrototype, 0},
      {Prototype, 2},
      Supervisor.child_spec({Model, []}, id: :c1),
      Supervisor.child_spec({Model, []}, id: :c2),
      Supervisor.child_spec({Model, []}, id: :c3),
      Supervisor.child_spec({Model, []}, id: :c4)
    ]

    Supervisor.start_link(children, strategy: :rest_for_one)
  end
end
