resource "heroku_pipeline" "lwc_pipeline" {
  name = var.heroku_pipeline_name
  owner {
    id   = "9d220f75-8ba1-4b0b-8628-51d2461b2a39"
    type = "team"
  }
}

resource "heroku_pipeline_coupling" "develop" {
  app      = heroku_app.lwc-app-dev.name
  pipeline = heroku_pipeline.lwc_pipeline.id
  stage    = "development"
}

resource "heroku_pipeline_coupling" "staging" {
  app      = heroku_app.lwc-app-staging.name
  pipeline = heroku_pipeline.lwc_pipeline.id
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app      = heroku_app.lwc-app-production.name
  pipeline = heroku_pipeline.lwc_pipeline.id
  stage    = "production"
}



