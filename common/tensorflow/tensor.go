package tensorflow

import (
	tf "github.com/tensorflow/tensorflow/tensorflow/go"
)

type tensorflow struct {
	t *tf.Tensor
}

// NewTensor make new instance for wrapper NewTensor
// It will return Tensor interface and the error message
func NewTensor(value interface{}) (Tensor, error) {
	t, err := tf.NewTensor(value)
	return &tensorflow{t: t}, err
}

// Tensor wrapper for Tensor variable in Tensor instance
func (t *tensorflow) Tensor() *tf.Tensor {
	return t.t
}

// Value wrapper for Value method in Tensor instance
func (t *tensorflow) Value() interface{} {
	return t.t.Value()
}
