app.controller('DocumentsController', function ($scope, SPACRUDService) {
    //AddController = function ($scope, SPACRUDService) {
    $scope.StudentID = 0;
    $scope.test = "Documents Controller";
   $scope.financialYear = {
    model: null,
    availableOptions: [
      {id: '1', name: '2018-2019'},
      {id: '2', name: '2018-2017'},
      {id: '3', name: '2016-2015'}
       ],
       selectedOption: { id: '1', name: '2018-2019' }
    };

    //workstation id = gamutdatabase.mssql.somee.com; packet size = 4096; user id = praveejadoun_SQLLogin_1; pwd = 37lpqcz1ey; data source = gamutdatabase.mssql.somee.com; persist security info = False; initial catalog = gamutdatabase 
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