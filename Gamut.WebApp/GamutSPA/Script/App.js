var app = angular.module("ApplicationModule", ["ngRoute"]);

app.factory("ShareData", function () {
    return { value: 0 }
});
//app.service('Api', ['$http', SPACRUDService]);
//app.controller("AddController", AddController);
//app.controller("ShowController", ShowController);
//app.controller("EditController", EditController);
//app.controller("DeleteController", DeleteController);

//app.run(['$rootScope', function ($rootScope) {
//    alert('app run');
//    $rootScope.auth = 0;
//}]);



app.config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
    
    $routeProvider.when('/show',
                        {
                            templateUrl: 'ManageData/ShowAll',
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
    $routeProvider.when('//documents',
        {
            templateUrl: 'ManageData/Documents',
            controller: 'DocumentsController'
        });
    $routeProvider.when('/logout',
        {
            templateUrl: '/Home/Login',
            //controller: 'GeneralController'
            //$location.path("Home/login")
            //redirectTo: 'Home/Login'
        });
    $routeProvider.otherwise(
                        {
            redirectTo: '/'
                        });
    
    $locationProvider.html5Mode(true).hashPrefix('!')
}]);