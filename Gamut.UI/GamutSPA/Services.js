
app.service("GeneralService", function ($http) {
    //debugger;
    //Read all Records
    this.getGenerals = function () {

        return $http.get("/api/GeneralAPI");
    };

    //Fundction to Read General by custId
    this.getGeneral = function (Id) {
        return $http.get("/api/GeneralAPI/" + Id);
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
    this.put = function (Id, General) {
        var request = $http({
            method: "put",
            url: "/api/GeneralAPI/" + Id,
            data: General
        });
        return request;
    };

    //Delete General By CustId
    this.delete = function (Id) {
        var request = $http({
            method: "delete",
            url: "/api/GeneralAPI/" + Id
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

app.service('userService', function () {

    var userList;// = [];

    //alert('serice');

    this.addUser = function (newObj) {
        //  alert('serice adduser');
        console.log("called addUser");
        userList = newObj;//.push(newObj);
        console.log("userList AFTER ADD::" + userList);
    };


    this.getUsers = function () {
        //console.log("called getUsers" + userList + " >>");
        return userList;
    };

});








