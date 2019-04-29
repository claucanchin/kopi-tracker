class KopisController < ApplicationController
  def index
    @kopis = Kopi.all
  end

  def new
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  # def edit
  #   @kopi = Kopi.find(params[:id])
  # end

  # def update
  #   @kopi = Kopi.find(params[:id])

  #   @kopi.update(kopi_params)
  #   redirect_to @kopi
  # end

  # def destroy
  #   @kopi = Kopi.find(params[:id])
  #   @kopi.destroy

  #   redirect_to root_path
  # end

  private
    def kopi_params
      params.require(:kopi).permit(:name, :roast, :origin)
    end

end