package predictor

// Predictor interface for model tensorflow-go
type Predictor interface {
	Predict(data interface{}) (result interface{}, err error)
	PredictClass(predictions interface{}) (result []string)
	Close() error
}
