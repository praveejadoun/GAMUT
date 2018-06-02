app.controller('AuthController', function ($scope, $window, $rootScope, userService) {
    //AddController = function ($scope, SPACRUDService) {
    $scope.StudentID = 0;
    $scope.test = "General Controller";
    $scope.loginId = "admin";
    $scope.pwd = "admin";
    $scope.showLogin = true;
    $scope.showMenu = false;
   // $rootScope.auth = 0;
    
    $scope.Login = function () {
        //debugger;
        if ($scope.loginId == "admin" && $scope.pwd == "admin") {
            $scope.showLogin = false;
            $scope.showMenu = true;
            //"$rootScope.auth = 1;
          // var landingUrl = "http://" + $window.location.host + "/index";
            //$window.location.href = landingUrl;
           userService.addUser(1);
        }
        else {
            $scope.showLogin = true;
            $scope.showMenu = false;
            //userService.addUser(1);
            alert("Invalid Login");
        }
    }


    $scope.Logout = function () {
        //debugger;
            $scope.showLogin = true;
            $scope.showMenu = false;
            userService.addUser(0);
    }

    //$scope.Logout = function () {
    //        $scope.showLogin = true;
    //        $scope.showMenu = false;
    //        userService.addUser(0);
    //        alert("Invalid Login");
    //    }
    //}

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