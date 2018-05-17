var app = angular.module("ApplicationModule", ["ngRoute"]);

app.factory("ShareData", function () {
    return { value: 0 }
});
//app.service('Api', ['$http', SPACRUDService]);
//app.controller("AddController", AddController);
//app.controller("ShowController", ShowController);
//app.controller("EditController", EditController);
//app.controller("DeleteController", DeleteController);

//app.controller("AddController", AddController);
//Showing Routing

//app.controller('AddController', function ($scope, SPACRUDService) {
////AddController = function ($scope, SPACRUDService) {
//    $scope.StudentID = 0;
//    $scope.test = "hellos";
//    $scope.save = function () {
//        var Student = {
//            StudentID: $scope.StudentID,
//            Name: $scope.Name,
//            Email: $scope.Email,
//            Class: $scope.Class,
//            EnrollYear: $scope.EnrollYear,
//            City: $scope.City,
//            Country: $scope.Country
//        };

//        var promisePost = SPACRUDService.post(Student);

//        promisePost.then(function (pl) {
//            alert("Student Saved Successfully.");
//        },
//            function (errorPl) {
//                $scope.error = 'failure loading Student', errorPl;
//            });

//    };

//});
app.config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
    //debugger;
    $routeProvider.when('/show',
                        {
                            templateUrl: 'ManageData/Show',
                            controller: 'ShowController'
                        });
    $routeProvider.when('/add',
                        {
                            templateUrl: 'ManageData/AddNew',
                            controller: 'AddController'
                        });
    $routeProvider.when("/edit",
                        {
                            templateUrl: 'ManageData/Edit',
                            controller: 'EditController'
                        });
    $routeProvider.when('/delete',
                        {
                            templateUrl: 'ManageData/Delete',
                            controller: 'DeleteController'
                        });
    $routeProvider.when('/home',
        {
            templateUrl: 'Home/Index',
            controller: 'AddController'
                    });
    $routeProvider.otherwise(
                        {
                            redirectTo: '/'
                        });
    
    $locationProvider.html5Mode(true).hashPrefix('!')
}]);