install.packages("WDI")
library(WDI)
?WDI



WDI(
  country = "TCD",
  indicator = c("SH.STA.MMRT", "SH.DYN.MORT.MA", "NY.GSR.NFCY.CD"),
  start = 1960,
  end = 2020,
  extra = FALSE,
  cache = NULL,
  latest = NULL,
  language = "en"
)


Chad_1 <- WDI(
  country = "TCD",
  indicator = c("SP.RUR.TOTL.ZG", "SP.DYN.LE00.MA.IN", "SP.POP.0014.TO.ZS", "SP.POP.2529.MA.5Y", "SP.POP.6569.MA.5Y", "SH.STA.MMRT", "SH.DYN.MORT.MA", "NY.GSR.NFCY.CD"),
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


ggplot(Chad_1, aes(x = year, y = SP.RUR.TOTL.ZG, color = SP.DYN.LE00.MA.IN)) +
  geom_line() +
  geom_point() +
  labs(x = "Years",
       y = "Population growth (annual %)",
       color = "Life expectancy",
       caption = "Source: World Bank") +
  theme_classic() +
  scale_color_viridis() 




# Global Peace Index


Global_Peace_Index <- c("Peacekeeping", "Safety and security", "Political stability", "People protected")

Measure <- c("2.47", "2.93", "1.50", "1.21")

GPI <- data.frame(Global_Peace_Index, Measure)
GPI

ggplot(GPI, aes(x = Global_Peace_Index, y = Measure)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal() +
  labs(title = "Global Peace Index",
       x = "4 primary indicators",
       y = "Current scale of investments (from 1 to 5)") 



ggplot(GPI, aes(x = Global_Peace_Index, y = Measure)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal() +
  labs(title = "Global Peace Index",
       x = "4 primary indicators",
       y = "Current scale of investments (from 1 to 5)") +
  coord_flip()









