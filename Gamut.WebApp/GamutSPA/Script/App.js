var app = angular.module("ApplicationModule", ["ngRoute"]);

app.factory("ShareData", function () {
    return { value: 0 }
});
//app.service('Api', ['$http', SPACRUDService]);
//app.controller("AddController", AddController);
//app.controller("ShowController", ShowController);
//app.controller("EditController", EditController);
//app.controller("DeleteController", DeleteController);

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
    $routeProvider.when('/general',
        {
            templateUrl: 'ManageData/General',
            controller: 'GeneralController'
        });
    $routeProvider.when('/logout',
        {
            templateUrl: 'Home/Login',
            //controller: 'GeneralController'
            //redirectTo: 'Home/Login'
        });
    $routeProvider.otherwise(
                        {
                            redirectTo: '/'
                        });
    
    $locationProvider.html5Mode(true).hashPrefix('!')
}]);