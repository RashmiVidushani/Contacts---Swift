import Foundation

/*
 *
 Student name : Rashmi Vidushani
 Student ID   : 1180266
 *
 */

struct Contact: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    let address: String
    let city: String
    let country: String
    let isFavorite: Bool
    
    //TODO: Add computed property for full name
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    //TODO: Add computed property for full address
    var fullAddress: String {
        "\(address), \(city), \(country)"
    }
}
