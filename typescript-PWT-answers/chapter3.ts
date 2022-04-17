// 3.3.4 practice
class Variant<T1, T2, T3> {
  readonly value: T1 | T2 | T3;
  readonly index: number;
  private constructor(value: T1 | T2 | T3, index: number) {
    this.value = value;
    this.index = index;
  }
  static make1<T1, T2, T3>(value: T1): Variant<T1, T2, T3> {
    return new Variant<T1, T2, T3>(value, 0);
  }
  static make2<T1, T2, T3>(value: T2): Variant<T1, T2, T3> {
    return new Variant<T1, T2, T3>(value, 1);
  }
  static make3<T1, T2, T3>(value: T3): Variant<T1, T2, T3> {
    return new Variant<T1, T2, T3>(value, 2);
  }
}
function visit<T1, T2, T3, U1, U2, U3>(
  variant: Variant<T1, T2, T3>,
  func1: (value: T1) => U1,
  func2: (value: T2) => U2,
  func3: (value: T3) => U3
): Variant<U1, U2, U3> {
  switch (variant.index) {
    case 0:
      return Variant.make1(func1(<T1>variant.value));
    case 1:
      return Variant.make2(func2(<T2>variant.value));
    case 2:
      return Variant.make3(func3(<T3>variant.value));
    default:
      throw new Error();
  }
}
