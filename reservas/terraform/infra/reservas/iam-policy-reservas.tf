resource "aws_iam_policy" "reservas_policy" {
  name = "${var.environment}-reservas-policy" 
  
  policy = templatefile("${path.module}/templates/dynamodb-policy.tpl", {
    action   = "dynamodb:PutItem",
    resource = "${aws_dynamodb_table.reservas.arn}"
  })
}