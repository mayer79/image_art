# Drawing by Max Bill in R code written by Qiyu Li
# See, e.g.: https://files.ocula.com/anzax/ea/ea9f9dfd-a002-45e5-ba5f-ccf2a5704775_621_650.jpg

library(ggplot2)

positions <- data.frame(
  id = rep(1:11, each = 3),
  x = c(
    -2.5, 0, 2.5, -2.5, 0, 2.5,
    0, 0.5, -1.5, 0.5, 1, -0.5,
    1, 1.5, 0.5, 1.5, 2, 1.5,
    0, -2.5, -1.5, 2.5*0.2, -1.5, -0.5,
    2.5*0.4, -0.5, 0.5, 2.5*0.6, 0.5, 1.5,
    2.5, 1.5, 2.5*0.8
  ),
  y = c(
    0, 2.5, 0, 0, -2.5, 0,
    2.5, 2.5*0.8, 0, 2.5*0.8, 2.5*0.6, 0,
    2.5*0.6, 2.5*0.4, 0, 2.5*0.4, 2.5*0.2,0,
    -2.5, 0, 0, -2.5*0.8, 0, 0,
    -2.5*0.6,0,0, -2.5*0.4,0,0,
    0,0, -2.5*0.2
  )
)

colors <- data.frame(
  id = 1:11,
  fill = c(
    "#040308", "#f4f4f4","#bbc7ea", "#f3c4d8",
    "#fbbd9b","#fce468", "#1b479e", "#7b0994",
    "#db2c1b", "#ee5809","#00962b"
  )
)

dat <- merge(colors, positions, by = "id")

ggplot(dat, aes(x = x, y = y, fill = fill, group = id)) +
  geom_polygon() +
  scale_fill_identity()+
  coord_equal()+
  theme_void()

ggsave("max_bill2_from_r.svg")
