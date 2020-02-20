resource "aws_dynamodb_table" "reservas" {
    name = "${var.environment}-reservas"
    hash_key = "id"
    attribute {
        name = "id"
        type = "S"

    }

    write_capacity = "${var.write_capacity}"
    read_capacity = "${var.read_capacity}"
  
}

resource "aws_ssm_parameter" "dynamodb-reservas-table" {
    name = "${var.environment}-dynamodb-reservas-table"
    type = "String"
    value = "${aws_dynamodb_table.reservas.name}"
  
}

