interval = 10 # A global interval. Can be overwritten per target group
prefix = "graphping" # A global prefix for statsd metrics


# Declare a target group with a name
target_group "search_engines" {
  # a custom ping interval for this group
  interval = 2
  # A prefix for the statsd metric for this group
  prefix = "search"
  # A name for the target. This becomes the statsd metric
  target "google" {
    address = "www.google.co.uk"
  }
  target "bing" {
    address = "www.bing.com"
  }
}

# You can specify multiple target groups
target_group "news_sites" {
  prefix = "uk"
  target "bbc" {
    address = "www.bbc.co.uk"
  }
}
