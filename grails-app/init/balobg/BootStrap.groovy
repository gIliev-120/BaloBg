package balobg

import groovy.io.FileType
import org.hibernate.Hibernate

import java.nio.file.Files

class BootStrap {

    def init = { servletContext ->

       Shelter one =  new Shelter(address: "Mladost 1",telNumber: "0824982382" ,email: "bla@bla.com", website:"bla.com").save();
        Shelter two = new Shelter(address: "Bogrov",telNumber: "423423423" ,email: "Bogrov@bla.com", website:"Bogrov.com").save();
        Shelter three = new Shelter(address: "Obelq",telNumber: "2382" ,email: "Obelq@bla.com", website:"Obelq.com").save();

        Announcement Aone = new Announcement(details: "ku4e ", age:2,shelter: one).save();
        Announcement Atwo = new Announcement(details: "ku4e ku4e", age:3,shelter: two).save();
        Announcement Athree = new Announcement(details: "ku4e ku4e ku4e", age:4,shelter: three).save();

        def aList = [Aone,Atwo,Athree]
        def r = new Random();
        def dir = new File("C:\\Users\\giliev\\Pictures\\doges");
        dir.eachFile(FileType.FILES) {
            file ->
                new ImageInfo(image: file.getBytes(),imageContentType: Files.probeContentType(file.toPath()), announcement: aList.get(r.nextInt(aList.size()))).save();
        }



    }
    def destroy = {
    }
}
