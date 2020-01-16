package predictor

import (
	"fmt"

	"github.com/handytan/tensorflow-go/common/tensorflow"

	tf "github.com/tensorflow/tensorflow/tensorflow/go"
)

type predictor struct {
	model  tensorflow.SavedModel
	labels []string
}

// New instance for predictor tensorflow deep learning golang
// It will return interface of Predictor and error message
func New(folderModelName string, tags []string, labelsFileName string) (Predictor, error) {
	labels := getLabels(labelsFileName)
	model, err := tensorflow.LoadSavedModel(folderModelName, tags, nil)

	return &predictor{model: model, labels: labels}, err
}

// Predict result of the data
// The result will be the score of each class
func (i *predictor) Predict(data interface{}) (result interface{}, err error) {
	// the input that will predicted
	tensor, err := tensorflow.NewTensor(data)
	if err != nil {
		err = fmt.Errorf("[error][NewTensor]: %v", err)
		return
	}

	resultArray, err := i.model.Session().Run(
		map[tf.Output]*tf.Tensor{
			i.model.Graph().Operation("inputLayer_input").Output(0): tensor.Tensor(), // Replace this with your input layer name
		},
		[]tf.Output{
			i.model.Graph().Operation("inferenceLayer/Softmax").Output(0), // Replace this with your output layer name
		},
		nil,
	)

	if err != nil {
		err = fmt.Errorf("Error running the session with input, err: %s", err) // err.Error()
		return
	}

	return resultArray[0].Value(), nil
}

// PredictClass will predict the class of each prediction
func (i *predictor) PredictClass(predictions interface{}) (result []string) {
	for _, r := range predictions.([][]float32) {
		max, err := argmax(r)
		if err != nil {
			result = append(result, "")
			continue
		}
		result = append(result, i.labels[max])
	}

	return result
}

// Close the session tensorflow
// This contacts any other processes associated with this
// session, if applicable. Blocks until all previous calls to Run have returned.
func (i *predictor) Close() error {
	return i.model.Session().Close()
}
