

solFunc <- function(a,b,c){
    solFunc  <- as.numeric(c(99,0,0))
    if (a==0) {
        if (b==0) {
            if (c==0) {
                solFunc[1] <- 99 #The equation has infinite solutions
            } else{
                solFunc[1] <- 0 # The equation has no solution
            }
            
        } else{
            solFunc[1] <- 1 # The equation has one solution
        }
    } else{
        d <- b^2 - 4*a*c
        if (d<0){
            solFunc [1] <- 0 # The equation has no solution
        } else{
            if (d==0){
                solFunc[1] <- 1 # The equation has 1 solution
                solFunc[2] <- -b/(2*a)
            } else{
                solFunc[1] <- 2 # The equation has 1 solution
                solFunc[2] <- (-b-sqrt(d))/(2*a)
                solFunc[3] <- (-b+sqrt(d))/(2*a)
            }
        }
    }
    
    return(solFunc)
}


shinyServer(
    function(input, output) {
        nA <- reactive(as.numeric({input$numA}))
        nB <- reactive(as.numeric({input$numB}))
        nC <- reactive(as.numeric({input$numC}))
        
        
        output$text1 <- renderText({
            paste("You want to solve the equation [", 
                   round(nA(),3), "]*x^2 + [", round(nB(),3),
                   "]*x + [", round(nC(),3), "] = 0.")
        })
        
        tmp <- reactive({ solFunc(nA(), nB(), nC()) })
        
        output$text2 <- renderPrint({
            
            if (tmp()[1] ==0){
                cat("The equation does not have real solution")
            }
            
            if (tmp()[1] ==1){
                cat("The equation has 1 real solution")

            }
            
            if (tmp()[1] ==2){
                cat("The equation has 2 real solutions")
            }
            
            if (tmp()[1] ==99){
                cat("Any number is a solution. 
                    The equation has infinite many real solutions")
            }
            
        })
        
        output$text3 <- renderPrint({
            if (tmp()[1] ==1){
                cat("The solution is: ", round(tmp()[2],5))
                
            }
            
            if (tmp()[1] ==2){
                cat("The solutions are: ", round(tmp()[2],5), "and ", 
                    round(tmp()[3],5))
            }
            
        })
        
        output$text4 <- renderPrint({
            if ( is.na(nA()) | is.na(nB()) | is.na(nC()) ){
                cat("Please make sure that a, b, and c are all real numbers.")
            }
        })
        
    }
)