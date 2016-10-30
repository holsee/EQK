defmodule ObservatoryStore do

  @spec start_link() :: {:ok, pid}
  def start_link do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  @spec save(Observatory.t) :: :ok
  def save(%Observatory{} = observatory) do
    Agent.update(__MODULE__, fn obs ->
      Map.put(obs, observatory.name, observatory)
    end)
  end

  @spec find(String.t) :: Observatory.t
  def find(name) do
    Agent.get(__MODULE__, fn obs ->
      Map.get(obs, name)
    end)
  end

  @spec largest_quake(String.t) :: EarthquakeEvent.t
  def largest_quake(name) do
    %Observatory{events: events} = find(name)
    Enum.max_by(events, fn
      e -> e.magnatude_moment
    end)
  end

end
