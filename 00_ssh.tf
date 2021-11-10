resource "aws_key_pair" "lee_key" {
  key_name = "lee2-key"
  # public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7mPAUAMi2eHaEmYCNtdvAkrzG59IUL7jMJAsP9LuMFnEC5M/xjfnW+wtcADvGFzrP/s4BW/udPi50ixNUXdpREDYQ8PAXRnjPmKk89vOyAoji+K/02DTJAw87Ed5kuJCRbHz1hPRLLtN8zrXs3e3Q5P5Fdin2SFHTdOTYuzsGK+EV+s5F23Fs1ipdZu4ER1V3lAVA6xCqTkksD7H8NIac/5hEAioCgwuS3af8h6/tgE4D53h0Edsh8HHC3mX/naw1QySnPLisT7BLsTG78Xq/QuJLvbuRrAAWt8QgzDvuyIJ5517L5kiJ/GaOUUdCAeQ1nVY4PzfExGQhxJyGpuURXkFCvxnSgPlUOwN3dTl2AzkUsdFT+Mh0m6gBYcq3g8dBEHM0g4Bto122Wl+YLiS90AQ8XG1DfXXdErg1Kg1QBt7ZNPr10TnUlc6tVjgLYoVJvNJTlN27zbh1yUJreXyL2h5UJIQsIWYc5MsDlVMIk2+8Kc/zWluaQzkNGLur5cM="
    public_key = file("../../.ssh/lee-key.pub")
}
