defmodule EarthquakeEvent do

  @type t :: %EarthquakeEvent{}
  defstruct [:magnatude_moment]

  @spec new(float) :: EarthquakeEvent.t
  def new(magnatude_moment) do
    %EarthquakeEvent{magnatude_moment: magnatude_moment}
  end

  @spec get_magnatude_moment(EarthquakeEvent.t) :: float
  def get_magnatude_moment(%EarthquakeEvent{magnatude_moment: mm}) do
    mm
  end

end
