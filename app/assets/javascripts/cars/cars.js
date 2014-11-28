angular.module('qbmt-test')
.factory('cars', [
  '$http',
  function($http){
  var o = {
    cars: []
  };

  o.getAll = function(){
    return $http.get('/cars.json').success(function(data){
      angular.copy(data, o.cars);
    });
  };
  return o;
}]);
