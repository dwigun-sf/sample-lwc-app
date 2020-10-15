provider "heroku" {
    email = "${var.heroku_email_account}"
    api_key = "${var.heroku_api_key}"
}

resource "heroku_app" "this" {
  name   = "terraform-my-app"
  region = "us"
}

resource "heroku_build" "this" {
  app = heroku_app.this.id
  buildpacks = ["https://github.com/heroku/heroku-buildpack-nodejs"]

  source = {
    path = "."
  }
}