//
//  MultiplayerConnectionManager.swift
//  SwiftTD
//
//  Created by Taylor Cargill on 3/8/17.
//  Copyright © 2017 Taylor Cargill. All rights reserved.
//

import Foundation
import MultipeerConnectivity


//inspired by:
//https://www.ralfebert.de/tutorials/ios-swift-multipeer-connectivity/

class MultiplayerConnectionManager : NSObject {
    
    //unique service type to identify serbice
    private let multiplayerServiceType = "swiftTD-service"
    
    //this is the name others will see
    private let myPeerId = MCPeerID(displayName: UIDevice.current.name)
    
    //advertises service
    private let serviceAdvertiser : MCNearbyServiceAdvertiser
    
    override init() {
        self.serviceAdvertiser = MCNearbyServiceAdvertiser(peer: myPeerId, discoveryInfo: nil, serviceType: multiplayerServiceType)
        
        super.init()
        self.serviceAdvertiser.delegate = self
        
        //start advertising on init
        self.serviceAdvertiser.startAdvertisingPeer()
    }
    
    deinit {
        
        //stop advertising on close
        self.serviceAdvertiser.stopAdvertisingPeer()
    }
    
}

extension MultiplayerConnectionManager : MCNearbyServiceAdvertiserDelegate {
    
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: Error) {
        NSLog("%@", "didNotStartAdvertisingPeer: \(error)")
    }
    
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        NSLog("%@", "didReceiveInvitationFromPeer \(peerID)")
    }
    
}
