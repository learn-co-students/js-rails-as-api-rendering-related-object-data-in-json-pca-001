class SightingsController < ApplicationController
  sighting = Sighting.find_by(id: params[:id])
  if sighting
    render json: sighting, include: [:bird, :location]
    # same as render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
  else
    render json: { message: 'No sighting found with that id' }
  end
end
