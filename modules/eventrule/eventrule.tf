resource "aws_cloudwatch_event_rule" "my_eveny_rule" {
    name = var.rulename
    description = "Fires every ten minutes"
    schedule_expression = "rate(10 minutes)"
    state = "ENABLED"
    tags = {
        "Name" = "terraform-test"
    }
  
}
