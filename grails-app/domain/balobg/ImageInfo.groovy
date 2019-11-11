package balobg

class ImageInfo {
    byte[] image;
    String imageContentType;
    static belongsTo = [announcement:Announcement]
    static constraints = {
    }
}
