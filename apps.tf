resource "heroku_app" "lwc-app-dev" {
  name   = var.heroku_develop_app
  region = var.heroku_region


  config_vars = {
    APP_ENV = "develop"
  }

  organization {
    name = "sfdc-digital-nonprod"
  }

}

resource "heroku_app" "lwc-app-staging" {
  name   = var.heroku_staging_app
  region = var.heroku_region

  config_vars = {
    APP_ENV = "staging"
  }

  organization {
    name = "sfdc-digital-nonprod"
  }

}

resource "heroku_app" "lwc-app-production" {
  name   = var.heroku_production_app
  region = var.heroku_region

  config_vars = {
    APP_ENV = "production"
  }

  organization {
    name = "sfdc-digital-nonprod"
  }

}


