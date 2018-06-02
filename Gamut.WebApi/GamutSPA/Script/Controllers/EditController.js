app.controller("EditStudentController", function ($scope, $location, ShareData, SPACRUDService) {
    //EditController = function ($scope, $location, ShareData, SPACRUDService) {
    getStudent();

    function getStudent() {        
        var promiseGetStudent = SPACRUDService.getStudent(ShareData.value);

        promiseGetStudent.then(function (pl)
        {
            $scope.Student = pl.data;
        },
              function (errorPl) {
                  $scope.error = 'failure loading Student', errorPl;
              });
    }

    $scope.save = function () {
        var Student = {
            StudentID: $scope.Student.studentID,
            Name: $scope.Student.name,
            Email: $scope.Student.email,
            Class: $scope.Student.class,
            EnrollYear: $scope.Student.enrollYear,
            City: $scope.Student.city,
            Country: $scope.Student.country
        }; 

        var promisePutStudent = SPACRUDService.put($scope.Student.studentID, Student);
        promisePutStudent.then(function (pl)
        {
            $location.path("/showstudents");
        },
              function (errorPl) {
                  $scope.error = 'failure loading Student', errorPl;
              });
    };

});