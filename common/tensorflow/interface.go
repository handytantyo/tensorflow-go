package tensorflow

import tf "github.com/tensorflow/tensorflow/tensorflow/go"

// Tensor interface for for wrapping tensorflow instance
type Tensor interface {
	Value() interface{}
	Tensor() *tf.Tensor
}

// SavedModel interface for for wrapping tensorflow instance
type SavedModel interface {
	Session() Session
	Graph() Graph
}

// Session interface for for wrapping tensorflow instance
type Session interface {
	Run(feeds map[tf.Output]*tf.Tensor, fetches []tf.Output, targets []*tf.Operation) (result []Tensor, err error)
	Close() error
}

// Graph interface for for wrapping tensorflow instance
type Graph interface {
	Operation(name string) *tf.Operation
}
