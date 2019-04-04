# Calculates the market value of renewables (Wind and PV) for the German market
# using Open Power System Data

library(ggplot2)
library(tidyverse)
library(wesanderson)

### Set Working Directory - works in R-Studio only
scriptDir<-dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(paste0(scriptDir,"/../"))

# Download file from open power system data (opsd)

opsd_filename<-"data/time_series_60min_singleindex.csv"

if(!file.exists(opsd_filename)){
  download.file("https://data.open-power-system-data.org/time_series/2018-06-30/time_series_60min_singleindex.csv",
              destfile=opsd_filename)
}

opsd<-read.csv(opsd_filename,sep=",") %>% 
  as_tibble()

SECONDS_PER_HOUR <- 3600
MWH_TO_GWH <- 1/1000
TO_PERCENT <- 100

opsd$utc_timestamp<-strptime(as.character(opsd$utc_timestamp),format="%Y-%m-%dT%H:%M:%SZ")
opsd$cet_cest_timestamp<-opsd$utc_timestamp + SECONDS_PER_HOUR

market_value<-opsd %>% 
  select(-utc_timestamp) %>% 
  mutate(year=year(cet_cest_timestamp)) %>% 
  filter(year>2009&year<2018) %>% 
  select(year,DE_price_day_ahead,DE_wind_generation_actual,DE_solar_generation_actual,DE_load_entsoe_power_statistics) %>% 
  gather(Generation_Type,Generation,-year,-DE_price_day_ahead,-DE_load_entsoe_power_statistics) %>% 
  mutate(Price=as.numeric(DE_price_day_ahead),
         Generation=as.numeric(Generation)*MWH_TO_GWH,
         Load=as.numeric(DE_load_entsoe_power_statistics)*MWH_TO_GWH) %>% 
  mutate(Market_Value=Generation*Price) %>% 
  group_by(year,Generation_Type) %>% 
  summarize(Market_Value=mean(Market_Value,na.rm=TRUE)/(mean(Generation,na.rm=TRUE)*mean(Price,na.rm=TRUE)),
            Load=sum(Load,na.rm=TRUE),
            Generation_Share=TO_PERCENT*sum(Generation,na.rm=TRUE)/Load) %>% 
  na.omit() 

market_value  %>% ggplot(aes(x=Generation_Share,y=Market_Value)) +
  xlab("Market Share (%)") + ylab("Normalized Market Value") + 
  scale_color_brewer("",type="qual",palette=2) +
  geom_line(aes(col=Generation_Type),size=1,linetype=1) +
  geom_point(aes(col=Generation_Type),size=2) 

