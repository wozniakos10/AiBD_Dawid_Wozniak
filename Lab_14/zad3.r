library(cluster)
data(iris)

x <- iris[1:4]
y <- iris[5]


lst <- c()
# lst <- append(lst,2)
for(i in 1:10){
    value = kmeans(x,i)
    lst <- append(lst, value$tot.withinss)
}

df = data.frame(iteration = 1:length(lst), value=lst)


a <- ggplot(data.frame(iteration=1:length(lst), value=lst), aes(x=iteration, y=lst))+
geom_line()
labs(x='Iteration', y='Distortion', title='Elbow method analysis')
ggsave("/home/AiBD_Dawid_Wozniak/Lab_14/img/zad_3_plot1.jpg", plot = a)

result = kmeans(x,3)
a <- ggplot(iris, aes(x=Sepal.Width, y=Petal.Width, color=result$cluster)) + geom_point()
ggsave("/home/AiBD_Dawid_Wozniak/Lab_14/img/zad_3_plot2.jpg", plot = a)

a <- ggplot(iris, aes(x = Sepal.Width, y = Petal.Width, color = Species)) + geom_point()
ggsave("/home/AiBD_Dawid_Wozniak/Lab_14/img/zad_3_plot3.jpg", plot = a)
