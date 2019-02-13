// All .go files must have a package declaration as the first line of source code
// NB: The `main` package is a special name that's used to build an executable, as opposed to a library
package main

// Go uses `import` to specify which packages this file requires
// NB: You will get a *compile-time* error if you import a package that you do not actually used
import (
    "fmt"
)

// We use this syntax to define a function in Go
// The function `main()` is reserved for the entry-point of our program
func main() {
    fmt.Println("Hello World!")
}
