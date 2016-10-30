defmodule EarthquakeEventTest do
  use ExUnit.Case

  @magnatude_moment 9.0
  @event %EarthquakeEvent{magnatude_moment: @magnatude_moment}

  test "create EarthquakeEvent" do
    assert @event == EarthquakeEvent.new(@magnatude_moment)
  end

  test "get magnatude_moment" do
    assert @magnatude_moment == @event |> EarthquakeEvent.get_magnatude_moment
  end

end
