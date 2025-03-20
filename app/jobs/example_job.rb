class ExampleJob
  include Sidekiq::Worker  # ✅ Use Sidekiq directly

  def perform(*args)
    Rails.logger.info "🚀 ExampleJob is running! Args: #{args.inspect}"
  end
end