//
//  VideoVC.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class VideoVC: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let ligaVideo = "http://walterebert.com/playground/video/hls/sintel-trailer.m3u8"
    
        let url = URL(string: ligaVideo)
        if let url = url {
            let asset = AVAsset(url:url)
            let item = AVPlayerItem(asset: asset)
            let player = AVPlayer(playerItem: item)
            
            self.player = player
            player.play()
        }
        
        
        
    }

    
    

   }
