package balobg

class BootStrap {

    def init = { servletContext ->
        new Shelter(address: "Mladost 1",telNumber: "0824982382" ,email: "bla@bla.com", website:"bla.com").save();
    }
    def destroy = {
    }
}
