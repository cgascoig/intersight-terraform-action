provider "intersight" {
    apikey = var.intersight_key_id
    secretkeyfile = var.intersight_key_file
    endpoint = "https://intersight.com"
}

variable "intersight_key_id" {
    type = string
}

variable "intersight_key_file" {
    type = string
}