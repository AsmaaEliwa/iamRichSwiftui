//
//  myProfilo.swift
//  iamRichSwiftui
//
//  Created by asmaa gamal  on 04/06/2024.
//

import SwiftUI

struct myProfilo: View {
    let myColor = UIColor(red: 0.98, green: 0.69, blue: 0.63, alpha: 1.00)
    var body: some View {
        ZStack{
            Color("Color").ignoresSafeArea()
            VStack{
                Image("me").resizable().aspectRatio(contentMode: .fit).frame(width: 200).clipShape(Circle()).overlay( Circle().stroke(Color.orange,lineWidth: 5))
                Text("Asmaa Eliwa").padding(.top).font(.largeTitle).foregroundColor(.white).bold()
                Text("IOS Developer").foregroundStyle(.secondary).foregroundColor(.white).font(.system(size: 20)).padding(.bottom)
//                Spacer()
                Divider()
                myInfo(info: "929 614 1432", imageName: "phone.fill")
                myInfo(info: "asmaaeliwa415@gmail.com",imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    myProfilo()
}

struct myInfo: View {
    var info:String
    var imageName:String
    var body: some View {
        ZStack{
            EmptyView().frame(minWidth: 200 ,maxHeight: 200).background(.white)
            RoundedRectangle(cornerSize: .init(width: 10, height: 10) ).frame(maxHeight: 30).foregroundColor(.white).padding()
            HStack(spacing:0){
                Image(systemName: imageName).foregroundColor(.teal).padding(.leading)
                Text("\(info)").foregroundColor(.orange).font(.system(size: 23,weight: .medium))
                    
            }
        }
    }
}
