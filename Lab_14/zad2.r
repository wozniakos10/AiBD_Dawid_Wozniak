library("ggplot2")
library("GGally") 
data(iris)

agg <- iris %>%
aggregate(. ~Species,., mean)

a <- ggplot(iris, aes(x = Sepal.Width)) +
geom_histogram(aes(fill=Species, color=Species), bins=20) +
geom_vline(data=agg, aes(xintercept=Sepal.Width, color=Species), linetype="dashed") +
labs(x='Sepal Width', y='Count', title='Sepal Width distribustion for different species')
ggsave("/home/AiBD_Dawid_Wozniak/Lab_14/img/zad_2_plot1.jpg", plot = a)

a <- ggpairs(data = iris, aes(color = Species))
ggsave("/home/AiBD_Dawid_Wozniak/Lab_14/img/zad_2_plot2.jpg", plot = a)