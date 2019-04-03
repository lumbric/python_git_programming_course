library(tidyverse)
library(ggplot)
# Plot Figure on Multi-Objective Analysis of electricity systems
# for UBRM-Book/Chapter 6.1

### Set Working Directory - works in R-Studio only
scriptDir<-dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(paste0(scriptDir,"/../"))


tab_emissions_costs<-read_csv("data/results_ubrmskript.csv")

points_scenarios<-tab_emissions_costs %>% 
  filter(Scenario %in% c("EUA160","s8")) %>% 
  mutate(Szenario=Scenario)

points_scenarios$Szenario<-c("160 Euro CO2-Preis","170 Millionen tCO2 Limit")

erc_colors<-c("#C72321","#6E9B9E")

tab_emissions_costs %>% ggplot(aes(x=Emissions/1000,y=`Effective Cost`/10^6)) +
  geom_line() + 
  geom_point() + 
  theme_bw() +
  xlab("Emissionen (Millionen tCO2/Jahr)") + 
  ylab("Brennstoff- und Kapitalkosten des Stromsystems (Milliarden Euro/Jahr)") +
  geom_point(data=points_scenarios,aes(x=Emissions/1000,y=`Effective Cost`/10^6,col=Szenario,shape=Szenario),size=5) +
  scale_color_manual(values=c(erc_colors,erc_colors))


ggsave("figures/figure_multi_objective.png")

ggsave("figures/figure_multi_objective.pdf")
