class ApoiosController < ApplicationController

  before_action :current_apoio, only: [:edit, :update, :destroy]

  def index
    @apoios = Apoio.all
  end

  def current_apoio
    @apoio = Apoio.find(params[:id])
  end

  def new
    @apoio = Apoio.new
  end

  def create
    apoio = Apoio.create(apoio_params)
    redirect_to apoios_path
  end

  private

  def apoio_params
    params.require(:apoio).permit(:telefone, :logradouro, :numero, :bairro, :cidade, :uf, :nomegrupoapoio)
  end

  def show
    @apoio = Apoio.find(params[:id])
  end

  def edit
  end

  def update
    @apoio.update(apoio_params)
    redirect_to apoio_path(@apoio)
  end

  def destroy
    @apoio.destroy
    redirect_to apoios_path
  end

end
