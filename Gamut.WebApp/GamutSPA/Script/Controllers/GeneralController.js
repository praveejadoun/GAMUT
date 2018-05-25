app.controller('GeneralController', function ($scope, $location, $window, $rootScope, userService,GeneralService) {
    $scope.StudentID = 0;
    $scope.test = "General Controller";
    $scope.loginId = "admin";
    $scope.pwd = "";

    getGeneral();

    function getGeneral() {
        var promiseGetStudent = GeneralService.getGeneral(ShareData.value);

        promiseGetStudent.then(function (pl) {
            $scope.General = pl.data;
        },
            function (errorPl) {
                $scope.error = 'failure loading General Data', errorPl;
            });
    } 

    $scope.save = function () {
        //var General = {
        //    StudentID: $scope.Student.studentID,
        //    Name: $scope.Student.name,
        //    Email: $scope.Student.email,
        //    Class: $scope.Student.class,
        //    EnrollYear: $scope.Student.enrollYear,
        //    City: $scope.Student.city,
        //    Country: $scope.Student.country
        //};

        //var promisePutStudent = GenarelService.put($scope.General.CustId, General);
        var promisePutStudent = GenarelService.put($scope.General.CustId, $scope.General);
        promisePutStudent.then(function (pl) {
            //$location.path("/showstudents");
            alert('Saved Successfully');
        },
            function (errorPl) {
                $scope.error = 'Failure loading General', errorPl;
            });
    };

});