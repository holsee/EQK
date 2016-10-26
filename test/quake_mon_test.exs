defmodule QuakeMonTest do
  use ExUnit.Case

  @name "Observatory of the Great Leader"
  @country "North Kerea"
  @year 2016
  @area 100.99

  @magnatude_moment 9.0

  @observatory  %Observatory{name: @name, country: @country,
                             year: @year, area: @area, events: []}
  @event %EarthquakeEvent{magnatude_moment: @magnatude_moment}

  test "create observatory" do
    assert @observatory == Observatory.new(@name, @country, @year, @area)
  end

  test "create event" do
    assert @event == EarthquakeEvent.new(@magnatude_moment)
  end

  test "add event to observatory" do
    %Observatory{events: events} = Observatory.add_event(@observatory, @event)
    assert Enum.member?(events, @event)
  end

end
