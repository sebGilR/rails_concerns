class Admin::TwitsController < ApplicationController
  include Twitable

  def edit
  end

  def update
    if @twit.update_attributes(twit_params)
      flash[:notice] = "Successfully updated twit."
      redirect_to admin_twit_path
    else
      flash[:alert] = "Error creating twit."
      render :edit
    end
  end

  def destroy
    if @twit.destroy
      flash[:notice] = "Successfully deleted twit."
      redirect_to twits_path
    else
      flash[:alert] = "Error deleting twit."
    end
  end
end