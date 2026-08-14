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
- Used Claude to understand the Rails concepts and plan the project structure. Most Importantly the MVC Concepts which i hadn't used before since my background has always been towards being an Data Engineer / Data Science. And not completely web development
- I Used Claude to help me set-up my Ruby/Rails/PostgreSQL development environment on Windows via WSL2, and to debug a Ruby build error (missing libffi/libyaml libraries).
- I took so much knowledge into me while developing the Notice Board, I used Claude Throughout and Chatgpt for some uses. As i encountered the major concepts in the assessment  as I encountered them, rather than only asking for finished code — this let me understand and explain each piece rather than just copy-pasting it.
- Used Claude to generate the Bootstrap-based UI styling (navbar, category badges, card layout)
- Wrote the model validations, scopes, and tests with Claude's guidance, and verified them manually in the Rails console before moving on

## What I'd improve with more time
- Add the ability to edit a notice after creation
- Add a JSON API endpoint (`GET /notices.json`)
- Add a character counter on the body field
- Add system tests with Capybara

## Note
This was my first time working with Ruby on Rails — my background is in Data
Engineering. Building this from scratch, with Ai tools explaining each new concept
along the way, gave me a working understanding of the MVC pattern, ActiveRecord,
and RESTful conventions that I didn't have going in.
