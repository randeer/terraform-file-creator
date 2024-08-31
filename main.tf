resource "random_string" "random" {
  length           = 8
  special          = true
  override_special = "/@£$&%#!*"
}

resource "random_id" "id_random" {
  byte_length = 8
}

resource "local_file" "random_file" {
  filename = "${random_string.random}_${random_id.id_random}.txt"
  content  = var.data
}
