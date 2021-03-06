make.background=function(N,filename        ){
cols <- c("#88398A","#B07FB2","#F7CCA4","#C8C05E","#627C63") ## generated here: http://colormind.io/

## colors
set.seed(3)
df=data.fame(x=runif(N), y =runif(N), col = sample(cols, N, replace = TRUE), size=runif(N, 1, 10))

## no border
qp <- gqplot(df, aes(x, y))+ geom_point(aes(size =size, fill =I(col), color = I(col)), alpha = 0.4, shape = 16)+theme_void()+theme(legend.position="none")+scale_size_continuous(range = c(1, 30))

return(qp)
}