make_art <- function(favorite_number, N = 15, color = "all") {
  set.seed(favorite_number)
  if (color == "all") {
    colors <- sample(colors()[1:650], N) } 
  if (color == "spring") { 
    colors <- sample(c("#F9F3DF", "#CDF2CA", "#FFDEFA"), N, replace = TRUE) } 
  if (color == "summer") {
    colors <- sample(c("#9EDE73", "#F7EA00", "#E48900", "#BE0000"), N, replace = TRUE) }
  if (color == "fall") {
    colors <- sample(c("#F9E4D4", "#D67D3E", "#9C0F48", "#470D21", "#BF8B67", "#632626"), N, replace = TRUE) }
  if (color == "winter") {
    colors <- sample(c("#22577E", "5584AC", "#95D1CC", "#F6F2D4", "#000957"))
  }
  size <- sample(2:8, N, replace = TRUE)
  
  x1_begin <- c(sample(1:100, N, replace = TRUE))
  x_end <- c(sample(1:100, N, replace = TRUE))
  y1_begin <- c(sample(1:100, N, replace = TRUE))
  y_end <- c(sample(1:100, N, replace = TRUE))
  
  coord <- data.frame(x1_begin, y1_begin, x_end, y_end)
  
  ggplot(coord, aes(x = coord[,1], 
                    y = coord[,2], 
                    xend = coord[,3], 
                    yend = coord[,4])) +
    geom_segment(color=colors, size=size) +
    theme_void()
}