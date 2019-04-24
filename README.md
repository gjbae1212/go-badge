# go-badge

<p align="left"> 
  <a href="https://circleci.com/gh/gjbae1212/go-badge"><img src="https://circleci.com/gh/gjbae1212/go-badge.svg?style=svg"></a>   
  <a href="/LICENSE"><img src="https://img.shields.io/badge/license-MIT-GREEN.svg" alt="license" /></a>
  <a href="https://goreportcard.com/report/github.com/gjbae1212/go-badge"><img src="https://goreportcard.com/badge/github.com/gjbae1212/go-badge" alt="Go Report Card" /></a>
  <a href="https://codecov.io/gh/gjbae1212/go-badge">
  <img src="https://codecov.io/gh/gjbae1212/go-badge/branch/master/graph/badge.svg" />
  </a>          
</p> 

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