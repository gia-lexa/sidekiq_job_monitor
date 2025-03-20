# 🚀 Sidekiq Job Monitor – A Robust Local Job Queue with Rails + Sidekiq

Efficient, Scalable, and Designed for Production-Like Background Processing in Development

## 📌 Why This Project?
This was done to build expertise in architecting and managing background job processing in a Rails environment. 
It leverages Sidekiq, Redis, and ActiveJob to process jobs asynchronously, allowing Rails apps to offload expensive tasks efficiently.

While this is a local-only setup, it mirrors the architecture used in production-scale applications by incorporating: 
✅ Sidekiq Web UI for monitoring

✅ Explicit Redis connection management

✅ ActiveJob integration with Sidekiq for seamless queue handling

✅ Multi-terminal orchestration for job processing

This project was an exercise to build and debug a stack of Rails + Sidekiq + Redis + PostgreSQL, and ensure seamless job execution.

## 🛠 What This Can Do
✔️ Process background jobs asynchronously using Sidekiq
✔️ Monitor job execution in real time via Sidekiq Web UI
✔️ Execute ActiveJob-based jobs that enqueue through Sidekiq
✔️ Run entirely locally without requiring deployment

💡 While this setup is local, it can be extended to a production-grade Sidekiq + Redis cluster in minimal steps.

## 🛠 Tech Stack
- Rails 7 – Web framework
- Sidekiq 7 – Background job processing
- Redis – In-memory data store for queue management
- PostgreSQL – Database for ActiveRecord persistence
- ActiveJob – Rails' built-in job framework
- Sidekiq Web UI – Real-time job monitoring

## 🔍 Key Features
✔ Sidekiq Web UI – View and manage background jobs via http://localhost:3000/sidekiq

✔ Explicit Redis Connection Handling – Ensures Sidekiq and Rails share a common Redis instance

✔ Resilient Job Processing – Jobs are retried upon failure (configurable)

✔ Multi-Queue Architecture – Sidekiq prioritizes jobs efficiently with configurable queues

✔ Fully Automated Local Setup – One command (rails jobs:enqueue_example) triggers the workflow

## 🚀 How to Run
1️⃣ Start Redis (Terminal 1 - Redis Tab)
```
redis-server
```

2️⃣ Start Sidekiq (Terminal 2 - Sidekiq Tab)
```
bundle exec sidekiq
```

3️⃣ Start Rails (Terminal 3 - Rails Server Tab)
```
rails s
```

4️⃣ Enqueue a Job (Terminal 4 - Rails Terminal Tab)
```
rails jobs:enqueue_example
```

5️⃣ Monitor Jobs in the Web UI
```
📌 Open: http://localhost:3000/sidekiq
```

## 🎯 Practice Points
🔹 Debugging Across Multiple Services – this project required a good amount debugging across Rails, Sidekiq, Redis, and PostgreSQL, practicing the ability to resolve system-level issues across different layers of the stack.

🔹 Explicit Queue Management – Instead of assuming Rails would handle job execution, I configured Sidekiq queues manually to ensure jobs were actually being enqueued, processed, and retried when necessary.

🔹 Production-Like Resilience in a Local Environment – While this project runs locally, it closely resembles how large-scale production systems handle job processing, making it a strong foundation for real-world Sidekiq deployments.

🔹 Ensuring Cross-Service Communication – Managing Redis connections, configuring Sidekiq to use the correct Redis instance, and ensuring Rails’ ActiveJob integration worked seamlessly was key to making this a fully functional setup.

## 🔮 Next Steps (How This Could Be Extended)
🔹 Add a Dockerized Redis & Sidekiq setup to make this deployable

🔹 Scale Horizontally: Introduce multiple Sidekiq workers with priority queues

🔹 Job Retries & Error Handling: Implement dead-letter queues & custom error tracking

🔹 Monitor Performance: Integrate Prometheus + Grafana for real-time job processing metrics


## 📌 Quick Start Commands
```
redis-server # Start Redis

bundle exec sidekiq # Start Sidekiq

rails s # Start Rails

rails jobs:enqueue_example # Enqueue a job
```
🔥 
