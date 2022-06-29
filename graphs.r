gg_mel <- ggplot(USmelanoma, aes(x=mortality)) +
+ geom_density(fill="darkorange", colour="black") + theme_dark()

gg_Leinhardt <- ggplot(Leinhardt, aes(x=income)) + 
+geom_histogram(binwidth = 250, aes(fill=region)) +
+ facet_wrap(~region,nrow=4) + theme_light()
