defmodule Observatory do
  defstruct [:name, :country, :year, :area, :events]

  def new(name, country, year, area, events \\ []) do
    %Observatory{name: name, country: country, year: year, area: area, events: events}
  end

  def add_event(%Observatory{events: events} = obs, %EarthquakeEvent{} = event) do
    %Observatory{obs | events: events ++ [event]}
  end
end
