# README
## About
This Rails application is a rough sketch of a backend that allows users to enter profile information plus an API for exposing the profile information. The focus here is on the mechanics of the API and its integration, via cors, with an Ember frontend ([sample-frontend](https://github.com/sebiscig/sample-frontend)). No work has been done to address issues like: multiple users with information in the app (there's no user piece), or multiple users accessing API endpoints (no access tokens piece). Like I said, it's a rough sketch.

A word about the kind of user profile you'd create with this app: it's basically the data associated with an academic's professional activities (academic appointments, published scholarship, teaching experience, etc.). The goal was to provide academics with an app for housing this data such that they retain ownership of it and control of its online presentation in a professional-activities website.
## Getting started
This app was created with Rails 5.1.4 app and Ruby 2.4.2. To get up and running, clone the [repository](https://github.com/sebiscig/sample-backend-plus-api), navigate to the directory and run bundle install and rails db:migrate. You should be up and running, and can test out by navigating to /contacts, /pages, or /publications.

### API
You'll want to configure the allowableOrigin (config/apiRequest.yml); if you're using an Ember frontend, the default should be fine.

To see the API in action with [sample-frontend](https://github.com/sebiscig/sample-frontend), seed the database of the Rails app (rails db:seed). Then clone, configure, and launch [sample-frontend](https://github.com/sebiscig/sample-frontend).
