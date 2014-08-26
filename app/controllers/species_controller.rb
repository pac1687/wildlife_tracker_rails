class SpeciesController < ApplicationController
  def index
    @species = Specie.all
    render('species/index.html.erb')
  end

  def show
    @specie = Specie.find(params[:id])
    render('species/show.html.erb')
  end

  def new
    @specie = Specie.new
    render('species/new.html.erb')
  end

  def create
    @specie = Specie.new(params[:specie])
    if @specie.save
      render('species/success.html.erb')
    else
      render('species/new.html.erb')
    end
  end
end
