var app = angular.module('qbmt-test', ['ui.router', 'templates'])
.config([
  '$stateProvider',
  '$urlRouterProvider',
  function($stateProvider, $urlRouterProvider){
    $stateProvider
      .state('/cars', {
        url: '/cars',
        templateUrl: 'cars/_cars.html',
        controller: 'CarsController',
        resolve: {
          carPromise: ['cars', function(cars){
            return cars.getAll();
          }],
             optionPromise: ['options', function(options){
               return options.getAll();
                             }]
        }
      })
      .state('cars', {
        url: '/cars/{id}',
        templateUrl: 'cars/_car.html',
        controller: 'CarsController'
      });

    $urlRouterProvider.otherwise('/cars');
  }]);
