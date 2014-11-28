angular.module('qbmt-test')
.controller('CarsController', [
  '$scope',
  '$stateParams',
  'cars',
  'options',
  function($scope, $stateParams, cars, options){
    $scope.cars = cars.cars;
    $scope.car = cars.cars[$stateParams.id - 1];
    $scope.options = options.options;
    $scope.addOrder = function(){
      order.create({
      });
  }]);
