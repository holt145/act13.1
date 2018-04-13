//
//  LeerNoticias.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import Foundation


class LeerNoticias{


    func getNoticias(finish:@escaping (_ datos:[String])->()){
        let liga = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/arts/30.json?api-key=a6c22c6f2dcd48f5b05d567d79bc6ba2"
        
        let url = URL(string: liga)!
        URLSession.shared.dataTask(with: url){(data, response, error) in
            if error == nil {
                print("There was an error here!")
                return
            } else {
                var titles:[String] = []
            do{
                let res = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableLeaves) as! NSDictionary
                
                for value in res["results"] as! [NSDictionary]{
                    print(value)
                    titles.append(value["title"] as! String)
                }
                print(titles)
                DispatchQueue.main.async{
                   finish(titles)
                }
            }catch{
              print("Error en lectura")
            }
        }
        }
    }



}
