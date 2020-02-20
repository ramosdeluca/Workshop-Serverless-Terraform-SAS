resource "aws_iam_policy_attachment" "reservas_policy_attachment" {
  name       = "${var.environment}-reservas-attachment"
  roles      = ["${aws_iam_role.reservas_iam_role.name}"]
  policy_arn = "${aws_iam_policy.reservas_policy.arn}"

}