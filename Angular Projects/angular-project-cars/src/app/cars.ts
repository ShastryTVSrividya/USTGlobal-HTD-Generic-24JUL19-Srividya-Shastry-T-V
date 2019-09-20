export class Car {
    constructor(
        public brand: string,
        public model: string,
        public year: Date,
        public cost: number,
        public sold: number,
        public id ?: string) {}
}