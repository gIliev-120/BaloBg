package balobg

class HomeController {

    def index() {
        respond Announcement.list().get(1);
    }
}
