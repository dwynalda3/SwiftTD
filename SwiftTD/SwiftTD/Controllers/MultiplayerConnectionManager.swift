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
    
    //scans for service
    private let serviceBrowser : MCNearbyServiceBrowser
    
    override init() {
        self.serviceAdvertiser = MCNearbyServiceAdvertiser(peer: myPeerId, discoveryInfo: nil, serviceType: multiplayerServiceType)
        self.serviceBrowser = MCNearbyServiceBrowser(peer: myPeerId, serviceType: multiplayerServiceType)
        
        super.init()
        self.serviceAdvertiser.delegate = self
        self.serviceAdvertiser.startAdvertisingPeer()
        
        self.serviceBrowser.delegate = self
        self.serviceBrowser.startBrowsingForPeers()
    }
    
    deinit {
        self.serviceAdvertiser.stopAdvertisingPeer()
        self.serviceBrowser.stopBrowsingForPeers()
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

extension MultiplayerConnectionManager : MCNearbyServiceBrowserDelegate {
    
    func browser(_ browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error) {
        NSLog("%@", "didNotStartBrowsingForPeers: \(error)")
    }
    
    func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) {
        NSLog("%@", "foundPeer: \(peerID)")
    }
    
    func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID) {
        NSLog("%@", "lostPeer: \(peerID)")
    }
    
}
