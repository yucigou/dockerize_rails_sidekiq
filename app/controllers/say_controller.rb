class SayController < ApplicationController
  def hi
    MyWorker.perform_async("Yuci", "100")
    @text = 'Hello'
  end
end
