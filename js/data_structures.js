
//Release 0
var colors = ['red','blue','green','yellow'];
var names = ['peggy','jimmy','bob','liz'];

colors.push('orange');
names.push('john');

//Release 1
var horse = {};
for (var i = 0; i < colors.length ; i++) {
  horse[names[i]] = colors[i];
}
console.log(horse)

//Release 2
function Car(model, year, seats){

  this.model = model;
  this.year = year;
  this.seats = seats;
  this.honk = function() {
    console.log(model + " Honk Honk!");
  };

}

// Driver
var acura = new Car('Acura',2006,4);
acura.honk();

var tesla = new Car('Tesla',2015,4);
tesla.honk();