resource "aws_lb" "sonarqube_alb" {

  name = "sonarqube-alb"

  load_balancer_type = "application"

  internal = false

  security_groups = [
    aws_security_group.alb_sg.id
  ]

  subnets = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]
}

resource "aws_lb_target_group" "sonarqube_tg" {

  name = "sonarqube-tg"

  port = 9000

  protocol = "HTTP"

  vpc_id = aws_vpc.main.id

  health_check {

    path = "/"

    protocol = "HTTP"

    port = "9000"
  }
}


resource "aws_lb_target_group_attachment" "sq1" {

  target_group_arn = aws_lb_target_group.sonarqube_tg.arn

  target_id = aws_instance.sonarqube_1.id

  port = 9000
}

resource "aws_lb_target_group_attachment" "sq2" {

  target_group_arn = aws_lb_target_group.sonarqube_tg.arn

  target_id = aws_instance.sonarqube_2.id

  port = 9000
}

resource "aws_lb_listener" "http" {

  load_balancer_arn = aws_lb.sonarqube_alb.arn

  port = 80

  protocol = "HTTP"

  default_action {

    type = "forward"

    target_group_arn = aws_lb_target_group.sonarqube_tg.arn
  }
}

