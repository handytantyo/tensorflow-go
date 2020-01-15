package tensorflow

import tf "github.com/tensorflow/tensorflow/tensorflow/go"

type Tensor interface {
	Value() interface{}
	Tensor() *tf.Tensor
}

type SavedModel interface {
	Session() Session
	Graph() Graph
}

type Session interface {
	Run(feeds map[tf.Output]*tf.Tensor, fetches []tf.Output, targets []*tf.Operation) (result []Tensor, err error)
	Close() error
}

type Graph interface {
	Operation(name string) *tf.Operation
}
