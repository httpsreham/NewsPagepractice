//
//  ContentView.swift
//  NewsPagepractice
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        ZStack {
            
            
            VStack(alignment: .center, spacing: 20) {
                
                Text("News")
                                
                                    .padding()
                                
                                    .font(.title)
                                
                                    .foregroundColor(.black)
                                
                                    .padding(.top, -200.0)
                Spacer()
                
                    HStack {
                        Image("turtle")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .scaledToFit()
                            .frame(width: 80.0, height : 200.0)
                        Text("This is where you can access useful articles for your mental health.")
                        
                    }
                
      
                
                
                LinkButton(title: "Confidence and Self Esteem", url: "https://www.mind.org.uk/for-young-people/feelings-and-experiences/confidence-and-self-esteem/?gclid=CjwKCAjw_aemBhBLEiwAT98FMmJ7aFprl89IlVtq-YpNcKJvCa964RXl8gUpMHH_-GPovwli-NZhHhoCkCMQAvD_BwE",imageName: "confidence")
                
                LinkButton(title: "Introduction into Mental Health ", url: "https://www.mind.org.uk/for-young-people/introduction-to-mental-health/",imageName: "intromentalhealth")
                
                LinkButton(title: "Looking after your Mental Health as a Student", url: "https://medium.com/@elif.sht6/7-important-ways-to-maintain-your-mental-health-a6a5427142f7",imageName:"student")
                
            
                
                Spacer()
                
            }
            .padding(.top, -3.0)
            
        }
        
        .padding()
        
    }
    
    struct LinkButton: View {
        
        let title: String
        
        let url: String
        
        let imageName: String
        
        
        
        
        var body: some View {
            
            Button(action: {
                
                openNewsArticle(url: url)
                
            }) {
                VStack(spacing: 10) {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .frame(width: 200.0, height: 80.0)
                        .foregroundColor(.black)
                        
                    
                    Text(title)
                        .foregroundColor(.black)
                        .padding(0.0)
                        .frame(width: 200.0, height: 90.0)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)

                HStack {
                    

                    
                }
            
                
                .cornerRadius(10)
                
            }
            
        }
        
        func openNewsArticle(url: String) {
            
            if let articleURL = URL(string: url) {
                
                UIApplication.shared.open(articleURL)
                
            }
            
        }
        
        
        
        
        
        //hi
        
        
        
        
        
        struct ContentView_Previews: PreviewProvider {
            
            static var previews: some View {
                
                ContentView()
                
            }
            
        }
        
        
    }
}
