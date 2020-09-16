module Twitable
  extend ActiveSupport::Concern

  included do
    before_action :set_twit, only: [:show, :edit, :destroy, :update]
  end

  def index
    @twits = Twit.all
  end

  def new
    @twit = Twit.new
  end

  def show
  end

  def create
    @twit = Twit.new(twit_params)
    if @twit.save
      flash[:notice] = "Successfully created twit."
      redirect_to @twit
    else
      flash[:alert] = "Error creating twit."
      render :new
    end
  end

  private

  def twit_params
    params.require(:twit).permit(:tweet)
  end

  def set_twit
    @twit = Twit.find(params[:id])
  end
end