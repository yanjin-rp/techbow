//
//  ViewController.swift
//  06 Map
//
//  Created by Yan Jin on 2/28/15.
//  Copyright (c) 2015 Yan Jin. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
//    var annotationView: MKPinAnnotationView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func viewDidAppear(animated: Bool) {
        var latitude:CLLocationDegrees = 37.381311
        var longitude:CLLocationDegrees = -121.984295
        var latDelta:CLLocationDegrees = 0.01
        var longDelta:CLLocationDegrees = 0.01
        
        var span = MKCoordinateSpanMake(latDelta, longDelta)
        var location = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "techbow"
        annotation.subtitle = "iOS Swift Learning"
        
        map.addAnnotation(annotation)
        
        var tap = UITapGestureRecognizer(target: self, action: "putPin:")
        tap.numberOfTapsRequired = 1
        map.addGestureRecognizer(tap)
    }
    
    func putPin(gesture: UIGestureRecognizer) {
        var touchPoint = gesture.locationInView(self.map)
        var touchMap = map.convertPoint(touchPoint, toCoordinateFromView: map)
        var newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = touchMap
        newAnnotation.title = "new place"
        newAnnotation.subtitle = "playground"
        
        map.addAnnotation(newAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
        
        // Dispose of any resources that can be recreated.
    }

    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView!{
 //       if annotationView == nil {
            var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier("annotation") as? MKPinAnnotationView
        if (annotationView != nil) {
            annotationView!.annotation = annotation
        } else {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "annotation")
            annotationView!.annotation = annotation
            annotationView!.animatesDrop = true
            annotationView!.canShowCallout = true
        }

        
 //       }
        return annotationView
    }

}

