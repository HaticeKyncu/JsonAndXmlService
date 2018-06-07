<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="JsonAndXmlService.WebForm" %>

<head>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
 
var app = angular
.module("persModul", [])
.controller("persController", function ($scope, $http) {
 
var islem = $http({
method: "post",
url: "WebService.asmx/GetPersonelJSON"
});
 
 
islem.success(function (data) {
console.log(data);
$scope.personeller = data;
});
 
});
 
</script>
</head>
<body ng-app="persModul">
    <div ng-controller="persController">

        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Ad</th>
                    <th>Soyad</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="personel in personeller">
                    <td>{{ personel.Id }} </td>
                    <td>{{ personel.Ad }} </td>
                    <td>{{ personel.Soyad }} </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
