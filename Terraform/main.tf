provider "google" {
  project     = "<project ID>"
  region      = "<region ID>"
  credentials = file("<credetials path>")
}

