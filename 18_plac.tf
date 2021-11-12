//배치전략??
resource "aws_placement_group" "lee_plac" {
  name = "lee-place"
  strategy = "cluster"
}