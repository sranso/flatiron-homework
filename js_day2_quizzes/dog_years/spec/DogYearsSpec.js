describe("Dog", function () {
  dog = new Dog();

  describe("#age", function() {
    it("should return an Integer", function(){
      expect(typeof dog.age).toEqual('number');
    });
  });

  describe("#ageInYears", function() {
    it("should return an Integer", function(){
      expect(typeof dog.ageInYears()).toEqual('number');
    });
  });

  describe("#ageInDays", function() {
    it("should return the dog's age in years times 365", function(){
      expect(dog.ageInDays()).toEqual(dog.ageInYears() * 365);
    });
  });

  describe("#ageInDogYears", function() {
    it("should return the dog's age in years times 7", function(){
      expect(dog.ageInDogYears()).toEqual(dog.ageInYears() * 7);
    });
  });

});