//
//  ViewController.swift
//  DarkMode
//
//  Created by macbook on 23.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     //   overrideUserInterfaceStyle = .light   burada kullanıcı dark a alsa bile uygulama light ta çalışır, dark modu kapatır
     //   overrideUserInterfaceStyle = .dark    burada kullanıcı light modda kullansa bile dark moda göre çalışır
        
        // veya info ya girerek User Interface Style seçerek yanına Dark veya Light yazarak ta tek tür belirleyebiliriz
        
    }
    
    
    
    
     //////////////////////////////// DARK MODE ////////////////////////////
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        // wiewdidLoad içinde yazsaydık uygulama içerisinde dark modu açarsak viewdidload bir kez çalışacağı için tam düzgün çalışmaz
        // viewWillAppear da da hata veriyor

         
       let userInterfaceStyle = traitCollection.userInterfaceStyle
         if userInterfaceStyle == .dark {   // eğer kullanıcı dark mode ta kullanıyorsa bu bloğa gir
             changeButton.tintColor = UIColor.white
         } else {
             changeButton.tintColor = UIColor.blue    // dark mode dışındakilerde butonu mavi yap
         }
    }
    //////////////////////////////////////////////////////////////////////
    


}

// dark mode da telefon arka plan rengi koyu oluyor aslında ve yaptığımız uygulamada ona göre aslında kendiliğinden düzeliyor ama biz ekstra dark mode olunca yazılar bu renk olsun buton bu renk olsun diyorsak kod ile yapabliriz
