package main

import (
  "fmt"
)

/*
SOME NOTES ABOUT CONVENTION
- almsot always have names for return values
- return an error as the last parameter if applicable
*/

/*
NOTES
- := will create a new variable each time, so you can't use if you mean to re-assign a previous variable

*/

func main() {
  // Methods
  voidMethod()
  fmt.Printf("%d\n", intMethod())
  val1, val2 := returnMultiplesVariables()
  fmt.Printf("%d %s\n", val1, val2)
  fmt.Println(functionAsParameter(func() int {
    return 7
  }))

  // Variables
  x := 3
  // messing with := op
  for i := 0; i < 10; i++ {
    x := 4
    var y = x
    _ = y
  }
  fmt.Printf("%d\n", x) // prints 3

  // Control Flow
  dict := map[string]string{
        "apple": "a red fruit",
        "cherry": "a red fruit",
        "banana": "a yellow fruit",
  }

  // looping through a dictionary
  for key, val := range dict {
    fmt.Printf("%s : %s", key, val)
  }

  showGotoStatements()
}

// Methods
func voidMethod() {
  fmt.Println("Void!")
}

func intMethod() int {
  return 8;
}

func returnMultiplesVariables() (val1 int, val2 string) {
  val1 = 8
  val2 = "is a great number"
  return
}

func functionAsParameter(f func () int) int {
  return f()
}

// goto
func showGotoStatements() int {
    // This example isn't particularly useful (for clarify and brevity)
    fmt.Println("Let's see how goto works...")
    i := 0
    if i == 0 {
        goto namedBlock
    } else {
        goto otherBlock
    }
    // That's it, the goto will make one of these blocks finsh and return from the function

passBack:
    return i

namedBlock:

    fmt.Println("Hey, I was invoked via a goto statement!")
    i++
    goto passBack

otherBlock:

    fmt.Println("Hey, I'm another block. Did I get invoked??")
    i--
    goto passBack
}
