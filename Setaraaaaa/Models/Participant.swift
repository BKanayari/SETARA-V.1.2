//
//  listName.swift
//  Setaraaaaa
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 09/04/23.
//

import Foundation

struct Participant: Codable {
    var name: String
    var isParticipate: Bool
    var items: [ParticipantItem]
    var total: Int
}
