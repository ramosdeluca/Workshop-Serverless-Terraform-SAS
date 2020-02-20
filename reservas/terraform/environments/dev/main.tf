module "reservas" {
  source = "../../infra/reservas"
  environment = "${var.environment}"
  write_capacity = 1
  read_capacity = 1
}
