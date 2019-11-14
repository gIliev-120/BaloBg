package balobg

class HomeController {
    def imageConverterService

    def index() {
        def doge = Announcement.list().get(1);
        def imgsList = imageConverterService.convertByteImageToBase64String(doge)

        render(view:'index',model:[dogNumber:1,dog:doge,dogImages:imgsList])
    }

    def getNewDog(){
        println params;
    }
}
