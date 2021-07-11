install.packages("WDI")
library(WDI)
?WDI


Chad_1 <- WDI(
  country = "TCD",
  indicator = c("SP.RUR.TOTL.ZG", "SP.DYN.LE00.IN", "SP.POP.0014.TO.ZS", "SH.STA.MMRT", "SH.DYN.MORT.MA"),
  start = 1960,
  end = 2020,
  extra = FALSE,
  cache = NULL,
  latest = NULL,
  language = "en"
)


Chad_1 %>%
  arrange(desc(year)) %>%
  filter(country == "Chad")


ggplot(Chad_1, aes(x = year, y = SP.RUR.TOTL.ZG, color = SP.DYN.LE00.IN)) +
  geom_line() +
  geom_point() +
  labs(x = "Years",
       y = "Population growth (annual %)",
       color = "Life expectancy",
       caption = "Source: World Bank") +
  theme_classic() +
  scale_color_viridis() 




# Peace Index


Peace_Index <- c("Peacekeeping", "Safety and security", "Political stability", "People protected")

Measure <- c("2.47", "2.93", "1.50", "1.21")

GPI <- data.frame(Peace_Index, Measure)
GPI

ggplot(GPI, aes(x = Peace_Index, y = Measure)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal() +
  labs(title = "Global Peace Index",
       x = "4 primary indicators",
       y = "Current scale of investments (from 1 to 5)") +
  coord_flip()


