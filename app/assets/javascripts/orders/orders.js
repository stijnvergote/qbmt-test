angular.module('qbmt-test')
.factory('orders', [
  '$http',
  function($http){
  var o = {
    orders: []
  };

  o.getAll = function(){
    return $http.get('/orders.json').success(function(data){
      angular.copy(data, o.orders);
    });
  };

  o.create = function(order){
    return $http.post('/orders.json', post).success(function(data){
        o.orders.push(data);
      });
  }

  return o;
}]);
