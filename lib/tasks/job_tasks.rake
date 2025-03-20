namespace :jobs do
  desc "Enqueue ExampleJob"
  task enqueue_example: :environment do
    ExampleJob.perform_later("Hello from Sidekiq!")
    puts "✅ Job Enqueued!"
  end
end
