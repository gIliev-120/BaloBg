package balobg

class HomeController {

    def index() {
        def doge = Announcement.list().get(1);
        def imgsList = [];

        for(int i =0 ; i<doge.images.size();i++){
            def img = doge.images.getAt(i);
            imgsList.add(Base64.getEncoder().encodeToString(img.image))
        }





        render(view:'index',model:[dog:doge,dogImages:imgsList])
    }
}
