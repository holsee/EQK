defmodule ObservatoryTest do
  use ExUnit.Case

  @name "Observatory of the Great Leader"
  @country "North Kerea"
  @year 2016
  @area 100.99
  @observatory  %Observatory{name: @name, country: @country,
                             year: @year, area: @area, events: []}

  @magnatude_moment 9.0
  @event %EarthquakeEvent{magnatude_moment: @magnatude_moment}

  test "create observatory" do
    assert @observatory == Observatory.new(@name, @country, @year, @area)
  end

  test "create event" do
    assert @event == EarthquakeEvent.new(@magnatude_moment)
  end

  test "get name of observatory" do
    assert @name == Observatory.get_name(@observatory)
  end

  test "get country of observatory" do
    assert @country == Observatory.get_country(@observatory)
  end

  test "get year of observations starting" do
    assert @year == Observatory.get_year(@observatory)
  end

  test "get area covered by observatory" do
    assert @area == Observatory.get_area(@observatory)
  end

  test "add event to observatory" do
    %Observatory{events: events} = Observatory.add_event(@observatory, @event)
    assert Enum.member?(events, @event)
  end

  test "get list of earthequake events" do
    assert [] == Observatory.get_events(@observatory)
    assert [@event] == @observatory |> Observatory.add_event(@event)
                                    |> Observatory.get_events
  end

end
