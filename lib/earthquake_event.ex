defmodule EarthquakeEvent do
    defstruct [:magnatude_moment]

    def new(magnatude_moment) do
      %EarthquakeEvent{magnatude_moment: magnatude_moment}
    end
end
