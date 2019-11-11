package balobg

class Shelter {
    String address;
    String telNumber;
    String email;
    String website;
    static hasMany = [announcements:Announcement]
    static constraints = {
    }
}
