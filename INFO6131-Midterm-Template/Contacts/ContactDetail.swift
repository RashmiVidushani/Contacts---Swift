import SwiftUI

/*
 *
 Student name : Rashmi Vidushani (u_pathiraarachchige Rashmi)
 Student ID   : 1180266
 *
 */

struct ContactDetail: View {
    let contact: Contact
    
    var body: some View {
        HStack{
            VStack {
                Text(contact.fullName)
                    .font(.largeTitle)
            }
           
            if contact.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
            }else{
                Image(systemName: "star")
                    .foregroundColor(.gray)
                    .font(.headline)
                    
            }
        }
        .frame(alignment: .leading)
        .padding(.top, 50)
        VStack{
        
            Divider().frame(width: 350)
                .padding(5)
            Group{
                Text("Phone:     ") +
                Text(contact.phone)
                    .foregroundColor(Color.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            Divider()
                .padding(5).frame(width: 350)
            Group{
                Text("Email:       ") +
                Text(contact.email)
                    .foregroundColor(Color.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            Divider()
                .padding(5).frame(width: 350)
            
            Group{
                Text("Address:  ") +
                Text(contact.fullAddress)
                    .foregroundColor(Color.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            Divider()
                .padding(5).frame(width: 350)
            Spacer()
        }
        
    }
}

#Preview {
    ContactDetail(contact: ContactStore.testStore.contacts[0])
}
