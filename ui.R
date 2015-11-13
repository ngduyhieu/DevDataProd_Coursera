
shinyUI(pageWithSidebar(
    headerPanel("This application is for the 
                Course Project of Developing 
                Data Product - Coursera"),
    sidebarPanel(
        helpText('This app performs a simple job: solving a quadratic equation.'),
        helpText('In particular, this app will solve the equation: a*x^2 + b*x + c = 0.'),
        helpText("Please type a, b, and c into the boxes below. 
                 Then hit the 'Submit' button."),
        
        numericInput(inputId="numA", value = 1,
                  label = "Please type in a real number for 'a'"),
        numericInput(inputId="numB", value = 1,
                  label = "Please type in a real number for 'b'"),
        numericInput(inputId="numC", value = 1,
                  label = "Please type in a real number for 'c'"),
        
        submitButton('Submit')
    ),
    mainPanel(
        h4("There are 4 possible scenarios: (1) No solution, 
           (2) Infinite many solutions, (3) 1 solution, 
           and (4) 2 solutions."),
        h4("The solution(s), if existing, will be displayed upto 5 
           decimal places."),
        h4("If a, b, or c is not a real number, a reminder will
           be displayed."),
        br(),
        
        h4(textOutput('text1'), style = "color:red"),
        br(),
        
        h5(textOutput('text2'), style = "color:blue"),
        h5(textOutput('text3'), style = "color:blue"),
        
        h4(textOutput('text4'), style = "color:blue")

    )
))