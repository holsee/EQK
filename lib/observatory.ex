defmodule Observatory do

  @type t :: %Observatory{}
  defstruct [:name, :country, :year, :area, :events]

  @doc """
  Creates a new Observatory

  ## Examples

      iex> Observatory.new "a name", "uk", 2016, 5.5
      %Observatory{name: "a name", country: "uk", year: 2016, area: 5.5, events: []}

      iex> Observatory.new "a name", "uk", 2016, 5.5, [%EarthquakeEvent{magnatude_moment: 5.5}]
      %Observatory{name: "a name", country: "uk", year: 2016, area: 5.5, events: [%EarthquakeEvent{magnatude_moment: 5.5}]}
  """
  @spec new(String.t, String.t, integer, float, list(EarthquakeEvent.t)) :: Observatory.t
  def new(name, country, year, area, events \\ []) do
    %Observatory{name: name, country: country, year: year, area: area, events: events}
  end

  @doc """
  The name of the Observatory

  ## Examples

      iex> Observatory.new("a name", "uk", 2016, 5.5) |> Observatory.get_name
      "a name"
  """
  @spec get_name(Observatory.t) :: String.t
  def get_name(%Observatory{name: name}), do: name

  @doc """
  The name of the country in which it is located

  ## Examples

      iex> Observatory.new("a name", "uk", 2016, 5.5) |> Observatory.get_country
      "uk"
  """
  @spec get_country(Observatory.t) :: String.t
  def get_country(%Observatory{country: country}), do: country

  @doc """
  The year in which earthquake observations started

  ## Examples

      iex> Observatory.new("a name", "uk", 2016, 5.5) |> Observatory.get_year
      2016
  """
  @spec get_year(Observatory.t) :: integer
  def get_year(%Observatory{year: year}), do: year

  @doc """
  The area covered by the observatory (in square kilometres)

  ## Examples

      iex> Observatory.new("a name", "uk", 2016, 5.5) |> Observatory.get_area
      5.5
  """
  @spec get_area(Observatory.t) :: float
  def get_area(%Observatory{area: area}), do: area

  @doc """
  Earthquake events that it has recorded

  ## Examples

      iex> o = Observatory.new("a name", "uk", 2016, 5.5) |> Observatory.get_events
      []

      iex> Observatory.new("a name", "uk", 2016, 5.5)
      iex> |> Observatory.add_event(%EarthquakeEvent{magnatude_moment: 5.5})
      iex> |> Observatory.get_events
      [%EarthquakeEvent{magnatude_moment: 5.5}]

  """
  @spec get_events(Observatory.t) :: list(EarthquakeEvent.t)
  def get_events(%Observatory{events: events}), do: events

  @doc """
  Record Earthquake event
  """
  @spec add_event(Observatory.t, EarthquakeEvent.t) :: Observatory.t
  def add_event(%Observatory{events: events} = obs, %EarthquakeEvent{} = event) do
    %Observatory{obs | events: events ++ [event]}
  end
end
