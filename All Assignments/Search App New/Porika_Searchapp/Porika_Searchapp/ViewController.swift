

//
//  ViewController.swift
//  Porika_SearchApp
//
//  Created by Student on 3/2/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
   
    @IBOutlet weak var SearchButtonAction: UIButton!
    
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var showPrevImagesBtn: UIButton!
    
    @IBOutlet weak var showNextImagesBtn: UIButton!
    
    var arr = [["actor1","actor2","actor3","actor4","actor5"],["flower1","flower2","flower3","flower4","flower5"],["wonder1","wonder2","wonder3","wonder4","wonder5",],["bg","404"]]
    
    var actors = ["actor","actors","hero","bollywood","Shah Rukh Khan ","Salman Khan","Akshay Kumar","Hrithik Roshan","Ranveer Singh","celebrity","hero","film"]
    
    var flowers = ["flowers","flower","rose","jasmine","sunflower","lotus"]
    
    var wonders = ["wonders","wonder", "Colosseum","Taj Mahal","Christ The Redeemer","Great Wall of China","Giza Pyramid"]
    
    var topic = 0
    var imag1:Int!
    var imag2:Int!
    var imag3:Int!
    var name1:Int!
    var name2:Int!
    var name3:Int!
    var text1:Int!
    var text2:Int!
    var text3:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showPrevImagesBtn.isHidden = true
        showNextImagesBtn.isHidden = true
        SearchButtonAction.isEnabled = false
        resetButton.isHidden = true
        resultImage.image = UIImage(named: arr[3][0])
        topicInfoText.text = nil
    }
    
   
   
    
    @IBAction func searchTextField(_ sender: UITextField) {
        SearchButtonAction.isEnabled = true
        if(sender.text == ""){
            SearchButtonAction.isEnabled = false
            
        }
        else{
            showPrevImagesBtn.isEnabled = false
            showNextImagesBtn.isEnabled = false
            SearchButtonAction.isEnabled = true
            resetButton.isHidden = false
        }
    }
    
    
    var actor = [["Sharuk Khan","Salman Khan","Akshay Kumar","Hrithik Roshan","Ranveer Singh"],["Shah Rukh Khan born 2 November 1965), also known by the initialism SRK, is an Indian actor, film producer, and television personality who works in Hindi films. Referred to in the media as the King of Bollywood and King Khan,he has appeared in more than 80 films, including 14 filmfare awards. The Government of India has awarded him the  Padma shri, and the Government of france has awarded him the Legion of Honour. Khan has a significant following in Asia and the Indian disapora  worldwide. In terms of audience size and income, he has been described as one of the most successful film stars in the world.Khan began his career with appearances in several television series in the late 1980s. He made his Bollywood debut in 1992 with Deewan.","Abdul Rashid Salim Salman Khan was born on December 27, 1965, in Mumbai to legendary screenwriter Salim Khan, who penned many super-hits in the yesteryear's like Sholay (1975), Deewaar (1975), and Don (1978). Khan started his acting career by doing a supporting role in the movie Biwi Ho To Aisi (1988). The following year he had the leading role in the box office romantic hit When Love Calls (1989). From there he became a heartthrob of Indian cinema.Being known for those roguish behaviors, he tried to balance his troubled life with his career. He gave his emotionally charged performance as playing an obsessed lover in In Your Name (2003) that translated into good reviews and a good run at the box office. He not only managed to revive his career but also to restore the confidence of his producers and distributors alike.His work was noticed internationally in the moviePhir Milenge (2004)","Akshay Kumar Om Bhatia was born on September 09, 1967, in Amritsar, Punjab to Aruna Bhatia and Hari Om Bhatia. He is an Indian actor, film producer, former model, and television personality. He went to Bangkok to learn how to use a sword and also worked as a waiter in a restaurant. He studied martial arts in Hong Kong. It was a student who suggested that he should try modeling. Because of his success as model, he was offered films. Along with his good looks and excellent martial art skills, he was always the first choice to do adventurous movies. He does his own stunts in his films. His breakthrough performance was in Saugandh (1991). He was well known for his Khiladi series, an Indian version of James Bond, such as Mr. Bond (1992), Khiladi (1992), Main Khiladi Tu Anari (1994), Mr. & Mrs. Khiladi (1997) and Khiladi 420 (2000)","Hrithik Roshan is an Indian actor, born on 10th January 1974, well known globally for his versatile roles, unmatchable dancing skills and attractive looks.After having appeared in films as a child actor in the 1980s, Roshan made his film debut in a leading role in Kaho Naa... Pyaar Hai (2000) for which he earned Filmfare Awards for Best Actor and Best Male Debut, It was not just a new actor on the block, but a star was born. He became a romantic hero, an action hero and revolutionized the Hindi film industry in significant ways. Never before had any debutant become an overnight sensation of this kind.After his debut film, he appeared in Karan Johar's family drama Kabhi Khushi Kabhi Gham (2001), which received immense love not just in India but even overseas.In 2003, Hrithik Roshan, who is often described as India's Most Complete Actor stunned everyone and proved once again that it is not just the uber-flattering looks that he brings to the table. This was when he flawlessly essayed the role of an intellectually disabled boy in Koi... Mil Gaya","Ranveer Singh Bhavnani was born in July 06, 1985 to Mr. Jagjit Singh Bhavnani & Mrs. Anju Bhavnani in Mumbai, Maharashtra. He is an Indian actor and model working in the Bollywood industry. Singh had always wanted to be an actor since his childhood. However, during his college days he felt that the idea of acting was far-fetched and focused on creative writing. While pursuing his Bachelor of Arts degree from Indiana University (Bloomington), Singh again became interested in acting and after coming back to India,"]]

    
    var flower = [["tulip","Jasmine","Lotus","Rose","lily"],["Tulips (Tulipa) are a genus of spring-blooming perennial herbaceous bulbiferous geophytes (having bulbs as storage organs). The flowers are usually large, showy and brightly colored, generally red, pink, yellow, or white (usually in warm colors). They often have a different colored blotch at the base of the tepals (petals and sepals, collectively), internally. Because of a degree of variability within the populations, and a long history of cultivation, classification has been complex and controversial. The tulip is a member of the lily family, Liliaceae, along with 14 other genera, where it is most closely related to Amana, Erythronium and Gagea in the tribe Lilieae. There are about 75 species, and these are divided among four subgenera.","A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars.[citation needed] They form a group of plants that can be erect shrubs, climbing, or trailing, with stems that are often armed with sharp prickles.[citation needed] Their flowers vary in size and shape and are usually large and showy, in colours ranging from white through yellows and reds. Most species are native to Asia, with smaller numbers native to Europe, North America, and northwestern Africa.[citation needed] Species, cultivars and hybrids are all widely grown for their beauty and often are fragrant. Roses have acquired cultural significance in many societies. Rose plants range in size from compact, miniature roses, to climbers that can reach seven meters in height.","Lotus plants are adapted to grow in the flood plains of slow-moving rivers and delta areas. Stands of lotus drop hundreds of thousands of seeds every year to the bottom of the pond. While some sprout immediately, and most are eaten by wildlife, the remaining seeds can remain dormant for an extensive period of time as the pond silts in and dries out. During flood conditions, sediments containing these seeds are broken open, and the dormant seeds rehydrate and begin a new lotus colony.Under favorable circumstances, the seeds of this aquatic perennial may remain viable for many years, with the oldest recorded lotus germination being from seeds 1,300 years old recovered from a dry lakebed in northeastern China","Lilies are tall perennials ranging in height from 2–6 ft (60–180 cm). They form naked or tunicless scaly underground bulbs which are their organs of perennation. In some North American species the base of the bulb develops into rhizomes, on which numerous small bulbs are found. Some species develop stolons. Most bulbs are buried deep in the ground, but a few species form bulbs near the soil surface. Many species form stem-roots. With these, the bulb grows naturally at some depth in the soil, and each year the new stem puts out adventitious roots above the bulb as it emerges from the soil. These roots are in addition to the basal roots that develop at the base of the bulb","Jasmine can be either deciduous (leaves falling in autumn) or evergreen (green all year round), and can be erect, spreading, or climbing shrubs and vines. Their leaves are borne in opposing or alternating arrangement and can be of simple, trifoliate, or pinnate formation. The flowers are typically around 2.5 cm (0.98 in) in diameter. They are white or yellow, although in rare instances they can be slightly reddish. The flowers are borne in cymose clusters with a minimum of three flowers, though they can also be solitary on the ends of branchlets. Each flower has about four to nine petals, two locules, and one to four ovules. They have two stamens with very short filaments. The bracts are linear or ovate. The calyx is bell-shaped. They are usually very fragrant. The fruits of jasmines are berries that turn black when ripe"]]


    let wonder = [["Colosseum","Taj Mahal","Christ The Redeemer","Great Wall of China","Giza Pyramid"],["The Taj Mahal is well known across the world for its historical value, its tale of love, and its stunning beauty. The Taj Mahal is located in the historic Indian city of Agra. It houses the tomb of Mumtaz Mahal, the wife of the Mughal Emperor Shah Jahan. It is said that the Emperor loved his wife dearly and was prompted to build the Taj Mahal after her death as a testament to his love.The construction of the Taj Mahal was completed by 1632. It took 17 years, 22,000 laborers, stonecutters, painters, and embroidery artists, and 1000 elephants to complete the Taj Mahal. The construction of the temple cost the equivalent of US$827 million today. 28 types of precious and semi-precious stones.","The Great Wall of China, a global tourist hotspot, is known across the world for its uniqueness, great length, and historical value. It is also considered to be one of the seven wonders of the world. The Great Wall of China is associated with thousands of years of Chinese history.A series of walls were initially built by Chinese empires and states over a period of many years, beginning as early as the 7th century BCE. Over 20 dynasties/states contributed to the building of the wall. These walls were then joined together to result in the Great Wall of China.It was not just a wall but a kind of fortification with watchtowers, beacon towers, trenches, etc.","Christ The Redeemer, Brazil One of Brazil's most iconic symbols, the Art Deco styled statue of Jesus Christ in Rio de Janeiro is one of the seven wonders of the world. The credit of building the statue goes to Paul Landowski, a French sculptor. The Romanian sculptor, Gheorghe Leonida, was responsible for fashioning the face. The sculpture cost a total of $250,000 which was donated by individuals from in and around Brazil. Christ the Redeemer is 98 feet tall and has a 26-feet tall pedestal. Its arms stretch 92 feet wide. The 635 metric ton statue, made of soapstone and concrete, is located atop the 2,300 feet tall Corcovado mountain. The construction of the statue was initiated in 1922 and completed by 1931. It is the largest sculpture of the art deco style in the world. However, it is not the world's largest Christ statue. Couples can wed in the chapel at the base of the statue as it was declared a sanctuary in 2006 by the Catholic Church. The statue has been featured in various Hollywood films.","Rome, Italy, hosts the Colosseum, which is one of the world's seven wonders. Sometimes called the Flavian Amphitheatre, the Colosseum is an oval-shaped amphitheater in the center of the city. Constructed from concrete and sand, it is the largest amphitheater in the world. The Colosseum's construction was initiated in AD 72 by Emperor Vespasian and was finished by AD 80 by his successor, Titus. Domitian, another emperor of the Flavian dynasty later made certain modifications to the amphitheater. The labor of tens of thousands of slaves were used to build this magnificent structure. The Colosseum had the capacity to host about 80,000 spectators and 80 entrances at the time of its construction.Mock sea battles, animal hunts, famous battle re-enactments, executions, and mythological dramas were just some of the public spectacles held at the Colosseum. Entry to events in the Colosseum were free and paid from the Emperor's treasury. However, the Colosseum bore witness to a lot of brutality. Often over 10,000 animals were killed in a day. Today, this wonder of the world is a popular tourist attraction and serves as the iconic symbol of Imperial Rome","Although the Great Pyramid of Giza was not officially selected as one of the seven wonders of the world, it was assigned an honorary title because of its undeniable importance. The Great Pyramid of Giza is the biggest and the oldest one among the three pyramids forming the Giza Pyramid Complex. Egyptologists believe that this pyramid was built over a period of 10 to 20 years and completed by around 2560 BC. For over 3,800 years, the Great Pyramid of Giza stood tall as the world’s tallest structure until this position was replaced by the skyscrapers of the modern world. The Pyramid has baffled engineers and architects across the world as to how it was constructed in times when modern infrastructural facilities did not exist"]]

    
   
    
   
    
    @IBAction func SearchButtonAction(_ sender: UIButton) {
    
    
    
    
        imag1 = 0
        imag2 = 0
        imag3 = 0
        name1 = 0
        name2 = 0
        name3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        showPrevImagesBtn.isHidden = false
        showNextImagesBtn.isHidden = false
        showPrevImagesBtn.isEnabled = false
        showNextImagesBtn.isEnabled = false
        resetButton.isEnabled = true
        if(actors.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[0][imag1])
            topic = 1
            topicInfoText.text = actor[1][text1]
        }
        else if(flowers.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[1][imag2])
            topic = 2
            topicInfoText.text = flower[1][text2]
        }
        else if(wonders.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[2][imag3])
            topic = 3
            topicInfoText.text = wonder[1][text3]
        }
        else{
            resultImage.image = UIImage(named: arr[3][1])
            topicInfoText.text = nil
            showPrevImagesBtn.isHidden = true
            showNextImagesBtn.isHidden = true
            resetButton.isEnabled = true
        }
        
        
    }
    
    @IBAction func showPrevImagesBtn(_ sender: Any) {
        if(topic == 1){
            imag1 -= 1
            name1 -= 1
            text1 -= 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 -= 1
            name2 -= 1
            text2 -= 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 -= 1
            name3 -= 1
            text3 -= 1
            dataUpdate(imgNo: imag3)
        }
        
    }
    
    @IBAction func showNextImagesBtn(_ sender: Any) {
        if(topic == 1){
            imag1 += 1
            name1 += 1
            text1 += 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 += 1
            name2 += 1
            text2 += 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 += 1
            name3 += 1
            text3 += 1
            dataUpdate(imgNo: imag3)
        }
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        showPrevImagesBtn.isHidden = true
        showNextImagesBtn.isHidden = true
        topicInfoText.text = nil
        searchTextField.text = nil
        resetButton.isHidden = true
        imag1 = 0
        imag2 = 0
        imag3 = 0
        name1 = 0
        name2 = 0
        name3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        topic = 0
        
        
    }
    
    func dataUpdate(imgNo: Int){
        if(topic == 1){
            if imag1 == arr[0].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = actor[1][text1]
            }
            else if(imag1 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = actor[1][text1]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = actor[1][text1]
            }
        }
        if(topic == 2){
            if imag2 == arr[1].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = flower[1][text2]
            }
            else if(imag2 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = flower[1][text2]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = flower[1][text2]
                
            }
        }
        if(topic == 3){
            if imag3 == arr[1].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = wonder[1][text3]
            }
            else if(imag3 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = wonder[1][text3]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = wonder[1][text3]
                
            }
        }
    }
    

    
    
    
    
    
}


