# go-badge 

go-badge is a library to render shield badges to SVG.

This software has been provided as https://github.com/narqo/go-badge at first and it is modified by gjbae1212.

narqo/go-badge that originally was made has licensed under the MIT.

This forked project is following the MIT.  


## Installation
Using `go get`

```
go get github.com/gjbae1212/go-badge
```

## Usage

```go
package main

import (
	"fmt"
	"os"

	"github.com/gjbae1212/go-badge"
)

func main() {
	err := badge.Render("godoc", "reference", "#5272B4", os.Stdout)
	if err != nil {
		panic(err)
	}

	badge, err := badge.RenderBytes("godoc", "reference", "#5272B4")
	if err != nil {
		panic(err)
	}
	fmt.Printf("%s", badge)
}

```

## License

MIT

---

All the kudos should go to the great [Shields.io](https://github.com/badges/shields) specification project.