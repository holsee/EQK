h Observatory.new
h Observatory.add_event
h EarthquakeEvent.new
h ObservatoryStore.start_link
h ObservatoryStore.save
h ObservatoryStore.find

o = Observatory.new("Great Leader Observatory", "", 100, 100)
    |> Observatory.add_event(EarthquakeEvent.new(9.8))
    |> Observatory.add_event(EarthquakeEvent.new(10.0))

# iex(1)> ObservatoryStore.start_link
# {:ok, #PID<0.84.0>}
# iex(2)> ObservatoryStore.save(o)
# :ok
# iex(3)> ObservatoryStore.find(o.name)
# %Observatory{area: 100, country: "",
#  events: [%EarthquakeEvent{magnatude_moment: 9.8},
#   %EarthquakeEvent{magnatude_moment: 10.0}], name: "Great Leader Observatory",
#  year: 100}
# iex(4)> ObservatoryStore.largest_quake(o.name)
# %EarthquakeEvent{magnatude_moment: 10.0}

