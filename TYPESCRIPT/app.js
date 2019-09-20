var MathOperations;
(function (MathOperations) {
    var Circle;
    (function (Circle) {
        var PI = 3.14;
        function circumferenceOfCircle(radius) {
            console.log("The Circumference of circle is " + 2 * PI * radius);
        }
        Circle.circumferenceOfCircle = circumferenceOfCircle;
        function areaOfCircle(radius) {
            console.log("The area of circle is " + radius * PI * radius);
        }
        Circle.areaOfCircle = areaOfCircle;
    })(Circle = MathOperations.Circle || (MathOperations.Circle = {}));
})(MathOperations || (MathOperations = {}));
MathOperations.Circle.circumferenceOfCircle(4);
var rectangleOperations;
(function (rectangleOperations) {
    var rectangle;
    (function (rectangle) {
        function area(length, breadth) {
            console.log(" Area of rectangle is " + length * breadth);
        }
        rectangle.area = area;
        function perimeter(length, breadth) {
            console.log(" Area of rectangle is " + 2 * (length * breadth));
        }
        rectangle.perimeter = perimeter;
    })(rectangle = rectangleOperations.rectangle || (rectangleOperations.rectangle = {}));
})(rectangleOperations || (rectangleOperations = {}));
// to use these we should import.Achieved using reference
/// <reference path="./circle.ts" />
/// <reference path="./rectangle.ts" />
MathOperations.Circle.circumferenceOfCircle(4);
rectangleOperations.rectangle.perimeter(22, 33);
