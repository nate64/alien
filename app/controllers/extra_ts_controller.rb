class ExtraTController < ApplicationController

  def index
    @extra_ts = ExtraT.all
  end

  def show
    @extra_ts = ExtraT.find(params[:id])
  end

  def new
    @extra_ts = ExtraT.new
  end

  def create 
    @extra_ts = ExtraT.new(extra_ts_params)

    if @extra_ts.save
      redirect_to extra_ts_path(@extra_ts.id)
    else
      render :new
    end
  end

private

  def extra_ts_params
    params.require(:note).permit(:name, :age, :hair_color, eye_color, :gender, :alive)
  end

end
