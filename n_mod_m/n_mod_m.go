package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
	"fmt"
)

func nModM(n, m int) int {
	return n - n / m * m
}

func main() {
		file, err := os.Open(os.Args[1])

		if err == nil {

				reader := bufio.NewReader(file)
				str, err := reader.ReadString('\n')

				for err == nil {
						nm := strings.Split(strings.Trim(str, "\n"), ",")
						n, _ := strconv.Atoi(nm[0])
						m, _ := strconv.Atoi(nm[1])
						fmt.Println(nModM(n, m))

						str, err = reader.ReadString('\n')
				}
		} else {
		}
}