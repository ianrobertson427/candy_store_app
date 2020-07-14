class Api::CandiesController < ApplicationController
  def index
    @candies = Candy.all
    render "index.json.jb"
  end

  def create
    @candy = Candy.new(
      name: params[:name],
      price: params[:price],
      brand: params[:brand],
    )
    @candy.save
    render "show.json.jb"
  end

  def show
    @candy = Candy.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @candy = Candy.find_by(id: params[:id])
    @candy.name = params[:name] || @candy.name
    @candy.price = params[:price] || @candy.price
    @candy.brand = params[:brand] || @candy.brand
    @candy.save
    render "show.json.jb"
  end

  def destroy
    candy = Candy.find_by(id: params[:id])
    candy.destroy
    render json: { message: "Photo successfully destroyed." }
  end
end
