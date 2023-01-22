library(magrittr)
library(datasets)

c = 1:10
# przypisanie do nowej zmiennej
# a <- c %>% log2() %>% sin() %>% sum() %>% sqrt()
c %<>% log2() %>% sin() %>% sum() %>% sqrt()
print(c)


# Datset

data(iris)
print(head(iris))
cat('\n\n\n\n')


print(aggregate(.~Species, FUN = mean, iris))