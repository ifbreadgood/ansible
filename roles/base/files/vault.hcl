ui = true
disable_mlock = true

listener "tcp" {
  address = "[::]:8200"
  cluster_address = "[::]:8201"
  # tls_disable = 1
  tls_cert_file      = "/certs/fullchain.pem"
  tls_key_file       = "/certs/privkey.pem"
}

# storage "file" {
#   path = "/vault-data"
# }

storage "raft" {
  path    = "/tmp"

  autopilot {
    cleanup_dead_servers = "true"
    last_contact_threshold = "30s"
    dead_server_last_contact_threshold = "10m"
    max_trailing_logs = 1000
    min_quorum = 2
    server_stabilization_time = "1m"
  }
}
api_addr = "https://vault-direct.trial.studio:8200"
cluster_addr = "https://vault-direct.trial.studio:8201"