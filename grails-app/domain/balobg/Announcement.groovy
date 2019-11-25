package balobg

class Announcement {
    String details
    int age;
    boolean hasViewed;
    static hasMany = [images:ImageInfo]
    static belongsTo = [shelter:Shelter , user:User]
    static constraints = {
    }
}
