import std.stdio;
import std.algorithm;
import std.range;
import std.random;

int timesten(int x) {
  return x*10;
}

void main() {
  // Let's get going!
  writeln("Hello World!");
  string msg;

  // Errors as expected since uniform is not constant
  // static if (timesten(uniform(int.min, int.max)) == 10) {
  static if (timesten(1+2-1-1) == 10) {
    msg = "True";
  } else {
    msg = "False";
  }
  writeln(msg);

  // An example for experienced programmers:
  // Take three arrays, and without allocating
  // any new memory, sort across all the
  // arrays inplace
  int[] arr1 = [ 4, 9, 7 ];
  int[] arr2 = [ 5, 2, 1, 10 ];
  int[] arr3 = [ 6, 8, 3 ];
  sort(chain(arr1, arr2, arr3));
  writefln("%s\n%s\n%s\n", arr1, arr2, arr3);
  // To learn more about this example, see the
  // "Range algorithms" page under "Gems"
}
