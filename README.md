 README

# Notice Board

A simple public notice board built with Ruby on Rails. Anyone can post a short
announcement and view notices posted by others — no login required.

## Prerequisites
- Ruby 3.2+
- PostgreSQL
- Bundler

## Setup
```bash
git clone <your-repo-url>
cd notice_board
bundle install
rails db:create
rails db:migrate
rails db:seed
rails server
```

Visit `http://localhost:3000` in your browser.

## Run Tests
```bash
rails test
```

## Features
- List all notices, pinned ones shown first, then newest first
- Filter notices by category (General, Event, Job, Other)
- Create a new notice with validations (title/body length, required fields)
- View a single notice
- Delete a notice
- Flash messages on create/delete
- Styled with Bootstrap 5

## AI Usage Log
- Used Claude to plan the Rails project structure (model, routes, controller, views) and explain Rails/MVC concepts I hadn't used before, since my background is data analytics, not web development
- Used Claude to help set up my Ruby/Rails/PostgreSQL development environment on Windows via WSL2, and to debug a Ruby build error (missing libffi/libyaml libraries)
- Used Claude to generate the Bootstrap-based UI styling (navbar, category badges, card layout)
- Wrote the model validations, scopes, and tests with Claude's guidance, and verified them manually in the Rails console before moving on

## What I'd improve with more time
- Add the ability to edit a notice after creation
- Add a JSON API endpoint (`GET /notices.json`)
- Add a character counter on the body field
- Add system tests with Capybara
