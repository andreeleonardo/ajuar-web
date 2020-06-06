module.exports = function Cart(cart) {
  this.items = cart.items || {};
  this.totalItems = cart.totalItems || 0;
  this.totalprecio = cart.totalprecio || 0;

  this.add = function(item, id) {
      var cartItem = this.items[id];
      if (!cartItem) {
          cartItem = this.items[id] = {item: item, quantity: 0, precio: 0};
      }
      cartItem.quantity++;
      cartItem.precio = cartItem.item.precio * cartItem.quantity;
      this.totalItems++;
      this.totalprecio += cartItem.item.precio;
  };

  this.remove = function(id) {
      this.totalItems -= this.items[id].quantity;
      this.totalprecio -= this.items[id].precio;
      delete this.items[id];
  };
  
  this.removeOne = function(id) {
      this.items[id].quantity --;
      this.items[id].precio -=this.items[id].item.precio;
      this.totalItems --; 
      this.totalprecio -= this.items[id].item.precio;
      if(this.totalItems == 0){
          delete this.items[id];
      }
  };

  this.addOne = function(id) {
      this.items[id].quantity ++;
      this.items[id].precio +=this.items[id].item.precio;
      this.totalItems ++;
      this.totalprecio += this.items[id].item.precio;
  };

  this.getItems = function() {
      var arr = [];
      for (var id in this.items) {
          arr.push(this.items[id]);
      }
      return arr;
  };
  this.removeItems = function() {
      this.items =  {};
      this.totalItems = 0;
      this.totalprecio = 0;
      return this;
  };
};