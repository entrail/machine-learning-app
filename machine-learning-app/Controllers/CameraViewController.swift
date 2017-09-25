//
//  ViewController.swift
//  machine-learning-app
//
//  Created by Adrian horstmann on 25.09.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit
import AVFoundation // used for camera

class CameraViewController: UIViewController {
    
    var captureSession: AVCaptureSession!
    var cameraOutput: AVCapturePhotoOutput!
    var previewLayer: AVCaptureVideoPreviewLayer!
    
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var captureImageView: UIImageView!
    @IBOutlet weak var flashBtn: UIButton!
    @IBOutlet weak var capturedItemLbl: UILabel!
    @IBOutlet weak var confidenceLbl: UILabel!
    @IBOutlet weak var headerView: RoundedShadowView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.previewLayer.frame = cameraView.bounds
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.captureSession = AVCaptureSession()
        captureSession.sessionPreset = AVCaptureSession.Preset.hd1920x1080
        
        let backCamera = AVCaptureDevice.default(for: AVMediaType.video)
        
        do {
            let input = try AVCaptureDeviceInput(device: backCamera!)
            if captureSession.canAddInput(input) == true {
                captureSession.addInput(input)
            }
            cameraOutput = AVCapturePhotoOutput()
            if captureSession.canAddOutput(cameraOutput) == true {
                captureSession.addOutput(cameraOutput!)
                
                previewLayer = AVCaptureVideoPreviewLayer(session: captureSession!)
                previewLayer.videoGravity = AVLayerVideoGravity.resizeAspect
                previewLayer.connection?.videoOrientation = AVCaptureVideoOrientation.portrait
                
                cameraView.layer.addSublayer(previewLayer!)
                captureSession.startRunning()
            }
        } catch {
            debugPrint(error)
        }
    }
    
  
    
}

