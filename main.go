package main

import (
	"fmt"
	"log"

	"github.com/handytan/tensorflow-go/predictor"
)

// reference: https://tonytruong.net/running-a-keras-tensorflow-model-in-golang/
// to test all file coverage -> go test ./... -coverprofile cover.out; go tool cover -func cover.out
var instance predictor.Predictor
var err error

func init() {
	instance, err = predictor.New("myModel", []string{"myTag"}, "classes.txt")
	if err != nil {
		log.Println(err)
		return
	}
}

func main() {
	defer instance.Close()

	data := [][4][3]float32{
		{{10, 20, 30}, {10, 20, 30}, {10, 20, 30}},
		{{-1, -20, -30}, {-10, -20, -30}, {-10, -20, -30}},
	}

	result, err := instance.Predict(data)
	if err != nil {
		log.Println(err)
		return
	}

	resultClass := instance.PredictClass(result)

	fmt.Println("=========== Result ===========")
	log.Println(result)
	log.Println(resultClass)

}
