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
