package predictor

// Predictor interface for model tensorflow-go
type Predictor interface {

	// Predict result of the data
	// The result will be the score of each class
	Predict(data interface{}) (result interface{}, err error)

	// PredictClass will predict the class of each prediction
	PredictClass(predictions interface{}) (result []string)

	// Close the session tensorflow
	// This contacts any other processes associated with this
	// session, if applicable. Blocks until all previous calls to Run have returned.
	Close() error
}
