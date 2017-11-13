class JobController < ApplicationController
  def submit
    who = search_params.require(:who)
    message = search_params.require(:message)

    MyWorker.perform_async(who, message)
  end

  private

  def search_params
    params.permit(:who, :message)
  end
end
