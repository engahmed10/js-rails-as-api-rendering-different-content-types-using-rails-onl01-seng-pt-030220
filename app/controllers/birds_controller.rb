class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    ##render plain: "Hello #{@birds[3].name }"

    ##render json:'Remeber that JSON is just object notation converted to string data, so strings also work here'
    ##render json: { message: 'Hashes of data will get converted to JSON' }
    ##render json: ["As","well","as" ,6,"Arrays"]
    ##render json: { birds: @birds , message: ["Hello birds","Good Bye Birds"]}
    #render json: { birds: @birds , message: ["Hello birds","Good Bye Birds"]}.to_json
    #render json: @birds

    birds = Bird.all
    render json: birds

  end
end
