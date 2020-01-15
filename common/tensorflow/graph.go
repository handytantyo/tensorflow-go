package tensorflow

import tf "github.com/tensorflow/tensorflow/tensorflow/go"

type graph struct {
	g *tf.Graph
}

func (g *graph) Operation(name string) *tf.Operation {
	return g.g.Operation(name)
}
