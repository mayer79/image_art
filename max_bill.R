# Drawing by Max Bill
# https://www.auktionen-in-heidelberg.de/produkt/0041-max-bill-konkrete-komposition-signierte-farbserigrafie-von-1970/

library(ggplot2)

# Border -> inner square -> then clockwise from purple
dat <- data.frame(
  fill = c("#ddccba", "#e7ddd1", "#a7268b", "#1c1b19", 
           "#e84e12", "#1c1b19", "#6cb434", "#1c1b19"),
  xmin = c(-0.5, 1, 0, 3, 3, 2, 0, 0),
  xmax = c(4.45, 3, 3, 4, 4, 3, 2, 1),
  ymin = c(-1.2, 1, 3, 1, 0, 0, 0, 1),
  ymax = c(4.9, 3, 4, 4, 1, 1, 1, 3)
)

ggplot(dat, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax, fill = fill)) +
  geom_rect() +
  scale_fill_identity() +
  theme_void() +
  theme(aspect.ratio = 1.2)
  
ggsave("max_bill_from_r.jpg")
