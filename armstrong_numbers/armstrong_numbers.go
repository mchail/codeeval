package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
	"fmt"
	"math"
)

func isArmstrong(n int) string {
	var num = n
	var sum float64 = 0
	var length = len(strconv.Itoa(n))
	for {
		sum += math.Pow(float64(n % 10), float64(length))
		n /= 10
		if n == 0 {
			break
		}
	}
	if (int(sum) == num) {
		return "True"
	}
	return "False"
}

func main() {
		file, err := os.Open(os.Args[1])

		if err == nil {

				reader := bufio.NewReader(file)
				str, err := reader.ReadString('\n')

				for err == nil {
						n, _ := strconv.Atoi(strings.Trim(str, "\n"))
						fmt.Println(isArmstrong(n))

						str, err = reader.ReadString('\n')
				}
		} else {
		}
}