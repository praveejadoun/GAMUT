app.controller('GeneralController', function ($scope, $location, $window, $rootScope, userService,SPACRUDService) {
    //AddController = function ($scope, SPACRUDService) {
    $scope.StudentID = 0;
    $scope.test = "General Controller";
    $scope.loginId = "admin";
    $scope.pwd = "";

    alert(userService.getUsers()); 

    //$scope.save = function () {
    //    var Student = {
    //        StudentID: $scope.StudentID,
    //        Name: $scope.Name,
    //        Email: $scope.Email,
    //        Class: $scope.Class,
    //        EnrollYear: $scope.EnrollYear,
    //        City: $scope.City,
    //        Country: $scope.Country
    //    };

    //    var promisePost = SPACRUDService.post(Student);

    //    promisePost.then(function (pl) {
    //        alert("Student Saved Successfully.");
    //    },
    //        function (errorPl) {
    //            $scope.error = 'failure loading Student', errorPl;
    //        });

    //};

});