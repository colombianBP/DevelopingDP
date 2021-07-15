library(shiny)
transform2<-function(x){
    out=""
    if (x=="Miles/(US) gallon") {
        out="mpg"
    } else if(x=="Number of cylinders"){
        out="cyl"
    }  else if(x=="Displacement (cu.in.)"){
        out="disp"
    }  else if(x=="Gross horsepower"){
        out="hp"
    } else if(x=="Rear axle ratio"){
        out="drat"
    } else if(x=="Weight (1000 lbs)"){
        out="wt"
    } else if(x=="1/4 mile time"){
        out="qsec"
    } else if(x=="Engine (0 = V-shaped, 1 = straight)"){
        out="vs"
    } else if(x=="Transmission (0 = automatic, 1 = manual)"){
        out="am"
    } else if(x=="Number of forward gears"){
        out="gear"
    } else if(x=="Number of carburetors"){
        out="carb"
    }
    return(out)
}

shinyServer(function(input, output) {
    output$plot<-renderPlot({
    # val1<-reactive({
    #     state1<-input$state1
    #     transform2(state1)
    # })
    # 
    # val2<-reactive({
    #     state2<-input$state2
    #     transform2(state2)
    # })
    state1<-input$state1
    state2<-input$state2

    val1<-transform2(state1)
    val2<-transform2(state2)
    
    val1<-mtcars[[val1]]
    val2<-mtcars[[val2]]
    
    val1<-val1/(max(val1))*100
    val2<-val2/(max(val2))*100
    
    plot(val1,val2,xlim =c(0,100),ylim = c(0,100))
    })
    
    
    
    output$text<-renderText({
        state1<-input$state1
        state2<-input$state2
        paste(state1,"vs",state2)
        })

})