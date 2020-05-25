provider "intersight" {
    apikey = var.intersight_key_id
    secretkeyfile = "/tmp/intersight-api-key.pem" 
    endpoint = "https://intersight.com"
}

variable "intersight_key_id" {
    type = string
}