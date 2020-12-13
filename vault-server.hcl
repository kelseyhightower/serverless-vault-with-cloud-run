default_max_request_duration = "90s"
disable_clustering           = true
disable_mlock                = true
ui                           = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
}

seal "gcpckms" {
  key_ring   = "vault-server"
  crypto_key = "seal"
  region     = "global"
}

storage "gcs" {
  ha_enabled = "false"
}
