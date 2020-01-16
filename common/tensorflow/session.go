package tensorflow

import tf "github.com/tensorflow/tensorflow/tensorflow/go"

type session struct {
	s *tf.Session
}

// Run wrapper for Run method in Session Tensor
func (s *session) Run(feeds map[tf.Output]*tf.Tensor, fetches []tf.Output, targets []*tf.Operation) (result []Tensor, err error) {
	tensors, err := s.s.Run(feeds, fetches, targets)
	for _, tensor := range tensors {
		result = append(result, &tensorflow{t: tensor})
	}

	return result, err
}

// Close wrapper for Close method in Session Tensor
func (s *session) Close() error {
	return s.s.Close()
}
