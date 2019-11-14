package balobg

import grails.gorm.transactions.Transactional

@Transactional
class ImageConverterService {

    def convertByteImageToBase64String(Announcement dog) {
        def imgsList = []
        for(int i =0 ; i<dog.images.size();i++){
            def img = dog.images.getAt(i);
            imgsList.add(Base64.getEncoder().encodeToString(img.image))
        }
        imgsList
    }
}
