# EN PROCESO...

# CI_para_varianza <-function(x,alfa)
#   round(
#     c(
#       (length(x)-1)*var(x)/qchisq(1-alfa/2,length(x)-1),(length(x)-1)*var(x)/qchisq(alfa/2,length(x)-1)
#     )
#   , 4)

pob_uno <- c(7, 7, 5, 4, 10, 5, 8)
pob_dos <- c(7, 7, 6, 8, 6, 3, 9, 4, 6, 5)

# CI_para_varianza(pob_uno, alfa=0.05)
# CI_para_varianza(pob_dos, alfa=0.05)

var.test(pob_uno, pob_dos)
