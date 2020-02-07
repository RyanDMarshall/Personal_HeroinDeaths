library('dplyr')
library('transformr')
library('gganimate')
library('usmap')

df <- read.csv('heroinDeaths.csv',header=TRUE,sep=',')

plot_usmap(regions = "states", data = df, values = "Deaths") +
  labs(title = "U.S. Heroin Deaths in Year: {frame_time}") +
  scale_fill_continuous(name = "Number of O.D. Deaths", low = "white", high = "red", label=scales::comma) +
  theme(legend.position = "right") +
  transition_time(Year) +
  ease_aes("linear")