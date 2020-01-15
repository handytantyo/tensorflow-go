package tensorflow

import (
	"testing"

	tf "github.com/tensorflow/tensorflow/tensorflow/go"
)

func Test_graph_Operation(t *testing.T) {
	g := &graph{g: tf.NewGraph()}
	g.Operation("test")
}
