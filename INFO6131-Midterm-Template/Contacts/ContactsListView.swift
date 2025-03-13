import SwiftUI

/// Contact list view
struct ContactsListView: View {
    @ObservedObject var viewModel: ContactsListViewModel
    @State private var isEditing : Bool = false
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.listData){ contacts in
                    ContactRow(contact: contacts)
                    .font(.headline)
                }
                .onDelete(perform: viewModel.deleteContact)
                .onMove(perform: viewModel.editContact)
                HStack {
                    Spacer()
                    Text(viewModel.displayCount)
                        .foregroundStyle(.secondary)
                    Spacer()
                }
                

            }
            .navigationTitle(viewModel.navTitle)
            .searchable(text: $viewModel.searchTerm, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search for Contacts")
            .onChange(of: viewModel.searchTerm) {
                viewModel.filterSearchResults()
            }
            .toolbar{
                HStack{
                    Button("Add"){
                        withAnimation {
                            viewModel.addContacts()
                        }
                    }
                    Spacer()
                    EditButton()
                    Spacer()
                    Button("Reset"){
                        withAnimation{
                            viewModel.ResetContacts()
                        }
                    }
                    
                }
            }
        }
        
        
    } // end of body
}

#Preview {
    ContactsListView(viewModel: ContactsListViewModel())
}

