let restaurant = {
  name: "ASB",
  guestCapacity: 75,
  guestCount: 0,
  checkAvailability: function (partySize) {
    let seatsLeft = this.guestCapacity - this.guestCount;
    return partySize <= seatsLeft;
  },
  seatParty: function (party) {
    this.guestCount = this.guestCount + party;
  },
  removeParty: function (party) {
    this.guestCount = this.guestCount - party;
  },
};

// seatParty

// removeParty

restaurant.seatParty(72);
console.log(restaurant.checkAvailability(4));
restaurant.removeParty(72);
console.log(restaurant.checkAvailability(4));
