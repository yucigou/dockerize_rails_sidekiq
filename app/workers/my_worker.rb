#app/workers/my_worker.rb
class MyWorker
  include Sidekiq::Worker
  def perform(name, count)
    logger.info "#{name} says the count is #{count}"
  end
end
