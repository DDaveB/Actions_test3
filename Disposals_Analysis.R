# Import libraries
library(ggplot2)
library(dplyr)
library(data.table)

df <- fread("2020_AFLSeason_Stats.csv")

# PLot Number of Disposals during the 2020 Season
palette = c("#999999", "#E69F00", "#56B4E9", "#643A71")
theme_set(
  theme_classic(base_size = 7)
)

px <- ggplot(data=df, aes(Disposals))+
  geom_histogram(aes(fill=Disposals), alpha=0.6, position="identity")+
  theme_classic()+
  theme(text = element_text(size = 5),
        legend.key.size = unit(.3,"cm"))+
  xlab("Disposals")+
  ylab("Count")+
  ggtitle("Disposals During 2020")+
  scale_fill_manual("Disposals",values=palette)
px  
ggsave("disposals_plot.png",px, device = "png", width=3,height=1.5,dpi=300)