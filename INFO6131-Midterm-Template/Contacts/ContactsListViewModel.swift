import SwiftUI
import Observation

/*
 *
 Student name : Rashmi Vidushani
 Student ID   : 1180266
 *
 */

@Observable
final class ContactsListViewModel : ObservableObject{
    var searchResults: [Contact] = []
    var navTitle: String = ""
    var searchTerm: String = ""
    var store : ContactStore
    
    var listData: [Contact] {
        return searchResults.isEmpty ? store.contacts : searchResults
    }
    
    var displayCount: String{
        "\(listData.count) Contacts"
    }
    
    init(store: ContactStore = ContactStore.testStore, navTitle: String = "Contacts") {
        self.navTitle = navTitle
        self.store = store
    }
    
    func filterSearchResults() {
        searchResults = store.contacts.filter {
            $0.fullName.localizedCaseInsensitiveContains(searchTerm)
        }
    }
    func addContacts(){
        guard let randomContact = store.contacts.randomElement() else {
            return
        }
        store.contacts.append(randomContact)
    }
    
    func ResetContacts(){
        store.contacts = ContactStore.mockData
        //searchResults.removeAll()
    }
    func deleteContact(offset: IndexSet){
        store.contacts.remove(atOffsets: offset)
    }
    func editContact(from source: IndexSet, to destination: Int) {
            store.contacts.move(fromOffsets: source, toOffset: destination)
    }
    
}
