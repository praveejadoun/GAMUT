
app.service("GeneralService", function ($http) {
    
    //Read all Records
    this.getStudents = function () {

        return $http.get("/api/GeneralAPI");
    };

    //Fundction to Read General by custId
    this.getStudent = function (CustId) {
        return $http.get("/api/GeneralAPI/" + CustId);
    };

    //Function to create new General
    this.post = function (General) {
        var request = $http({
            method: "post",
            url: "/api/GeneralAPI",
            data: General
        });
        return request;
    };

    //Edit General By CustId 
    this.put = function (CustId, General) {
        var request = $http({
            method: "put",
            url: "/api/GeneralAPI/" + CustId,
            data: General
        });
        return request;
    };

    //Delete General By CustId
    this.delete = function (CustId) {
        var request = $http({
            method: "delete",
            url: "/api/GeneralAPI/" + CustId
        });
        return request;
    };
});


app.service("SPACRUDService", function ($http) {
    //SPACRUDService = function ($http) {
    //Read all Students
    this.getStudents = function () {
      
        return $http.get("/api/ManageDataAPI");
    };

    //Fundction to Read Student by Student ID
    this.getStudent = function (id) {
        return $http.get("/api/ManageDataAPI/" + id);
    };

    //Function to create new Student
    this.post = function (Student) {
        var request = $http({
            method: "post",
            url: "/api/ManageDataAPI",
            data: Student
        });
        return request;
    };

    //Edit Student By ID 
    this.put = function (id, Student) {
        var request = $http({
            method: "put",
            url: "/api/ManageDataAPI/" + id,
            data: Student
        });
        return request;
    };

    //Delete Student By Student ID
    this.delete = function (id) {
        var request = $http({
            method: "delete",
            url: "/api/ManageDataAPI/" + id
        });
        return request;
    };
});








