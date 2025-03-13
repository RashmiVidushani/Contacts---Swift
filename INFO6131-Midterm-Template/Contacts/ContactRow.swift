import SwiftUI

/*
 *
 Student name : Rashmi Vidushani
 Student ID   : 1180266
 *
 */

struct ContactRow: View {
    let contact: Contact
    var body: some View {
        NavigationLink (destination: ContactDetail(contact: contact)){
            HStack{
                VStack(alignment: .leading){
                    Text(contact.fullName)
                }
                Spacer()
                if contact.isFavorite{
                    Image(systemName: "star.fill")
                        .font(.headline)
                        .foregroundColor(.yellow)
            }
            }
        }

    }
}

#Preview {
    ContactRow(contact: ContactStore.testStore.contacts[1])
}
