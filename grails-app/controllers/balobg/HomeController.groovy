package balobg

class HomeController {
    def imageConverterService

    def index() {
        def doge = Announcement.list().get(1);
        def imgsList = imageConverterService.convertByteImageToBase64String(doge)

        render(view:'index',model:[dog:doge,dogImages:imgsList])
    }

    def getNewDog(){
        println params;
        def dog = Announcement.list().get(2);
        def imgs = imageConverterService.convertByteImageToBase64String(dog)
        render(template: 'getNewDog',model:[dog:dog,dogImages:imgs])
    }
}
