package balobg

class Announcement {
    String details
    int age;
    static hasMany = [images:ImageInfo]
    static belongsTo = [shelter:Shelter]
    static constraints = {
    }
}
