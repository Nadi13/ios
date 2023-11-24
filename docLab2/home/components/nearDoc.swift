//
//  nearDoc.swift
//  docLab2
//
//  Created by user225687 on 11/24/23.
//

import SwiftUI

struct nearDoc: View {
    let nearDocs: nearDocUi
    var body: some View {
            VStack(alignment: .leading, spacing: 12) {
                VStack(alignment: .center, spacing: 20) {
                    HStack(alignment: .center) {
                        HStack(alignment: .top, spacing: 10) {
                            ZStack{
                                Circle()
                                    .fill(Color("whiteGray"))
                                    .frame(width: 48, height: 48)
                                ZStack {
                                    Rectangle()
                                          .frame(width: 48, height: 48)
                                          .foregroundColor(.clear)
                                          .background(
                                            Image(nearDocs.image)
                                          .resizable()
                                          .aspectRatio(contentMode: .fill)
                                          .frame(width: 58, height: 73)
                                          .padding(.top, 20))
                                          .mask(Circle())
                                }
                            }
                            .frame(width: 48, height: 48)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                VStack(alignment: .leading, spacing: 8) {
                                    Text(NSLocalizedString(nearDocs.name, comment:""))
                                      .font(Fonts.pB_16)
                                      .foregroundColor(Color.black)
                                    Text(NSLocalizedString(nearDocs.role, comment:""))
                                        .font(Fonts.pR_14)
                                        .foregroundColor(Color("lightGray"))
                                }
                                .padding(0)
                                
                            }
                            .padding(0)
                            
                        }
                        .padding(0)
                    
                      Spacer()
                        
                        HStack(alignment: .center, spacing: 8) {
                            HStack(alignment: .center, spacing: 0) {
                                Image("distance")
                                .frame(width: 16, height: 16)
                                
                            }
                            .padding(0)
                            .frame(width: 16, height: 16, alignment: .center)
                            
                            Text(NSLocalizedString(nearDocs.distance, comment:""))
                                .font(Fonts.pR_14)
                                .foregroundColor(Color("lightGray"))
                        }
                        .padding(0)
                   
                    }
                    .padding(0)
                    .frame(width: 295, alignment: .center)
                    
                    Divider()
                        .frame(width: 295)
                        .background(Color("divider"))
                    
                    HStack(alignment: .top, spacing: 12) {
                        HStack(alignment: .center, spacing: 6) {
                            HStack(alignment: .center, spacing: 0) {
                                Image("clock")
                                    .frame(width: 20, height: 20)
                                    .colorMultiply(Color("yellow"))
                            }
                            .padding(0)
                            .frame(width: 20, height: 20, alignment: .center)
                            
                            Text(NSLocalizedString(nearDocs.reviews, comment:""))
                                .font(Fonts.pR_12)
                                .foregroundColor(Color("yellow"))
                        }
                        .padding(0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(alignment: .center, spacing: 6) {
                            HStack(alignment: .center, spacing: 0) {
                                Image("clock")
                                    .frame(width: 20, height: 20)
                                    .colorMultiply(Color("blue"))
                            }
                            .padding(0)
                            .frame(width: 20, height: 20, alignment: .center)
                            
                            Text(NSLocalizedString(nearDocs.time, comment:""))
                                .font(Fonts.pR_12)
                              .foregroundColor(Color("blue"))
                        }
                        .padding(0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(0)
                    .frame(maxWidth: 295, alignment: .topLeading)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 20)
                .background(.white)
                .cornerRadius(12)
              
            }
            .padding(0)
            .cornerRadius(12)
            
    }

}

struct nearDoc_Preview: PreviewProvider {
    static var previews: some View {
        let docs = [
                   nearDocUi(
                    name: "doctorName2",
                    image: "doctor2",
                    role: "role2",
                    reviews: "reviews1",
                    time: "timeOpen",
                    distance: "distance"
                   )
               ]
        nearDoc(nearDocs: docs[0])
    }
}
