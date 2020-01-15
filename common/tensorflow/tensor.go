package tensorflow

import (
	tf "github.com/tensorflow/tensorflow/tensorflow/go"
)

type tensorflow struct {
	t *tf.Tensor
}

func NewTensor(value interface{}) (Tensor, error) {
	t, err := tf.NewTensor(value)
	return &tensorflow{t: t}, err
}

func (t *tensorflow) Tensor() *tf.Tensor {
	return t.t
}

func (t *tensorflow) Value() interface{} {
	return t.t.Value()
}
