package predictor

import (
	"bufio"
	"fmt"
	"log"
	"os"
)

// argmax to get an index that has maximum number
func argmax(numbers []float32) (index int, err error) {
	if len(numbers) == 0 {
		return 0, fmt.Errorf("len number must be greater than 0")
	}

	max := numbers[0]
	index = 0
	for i, number := range numbers {
		if number > max {
			max = number
			index = i
		}
	}

	return index, nil
}

// getLabels to get labels from the file
func getLabels(filename string) (labels []string) {
	// file class
	file, err := os.Open(filename)
	if err != nil {
		log.Println(err)
		return
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	for scanner.Scan() { // internally, it advances token based on sperator
		labels = append(labels, scanner.Text()) // token in unicode-char
	}

	return

}
