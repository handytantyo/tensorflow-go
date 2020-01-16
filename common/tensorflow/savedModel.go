package tensorflow

import tf "github.com/tensorflow/tensorflow/tensorflow/go"

type savedModel struct {
	model *tf.SavedModel
}

// LoadSavedModel wrapper for LoadSavedModel method in SavedModel Tensor
func LoadSavedModel(exportDir string, tags []string, options *tf.SessionOptions) (SavedModel, error) {
	model, err := tf.LoadSavedModel(exportDir, tags, options)
	return &savedModel{model: model}, err
}

// Graph wrapper for Graph variable in SavedModel Tensor
func (s *savedModel) Graph() Graph {
	return &graph{g: s.model.Graph}
}

// Session wrapper for Session variable in SavedModel Tensor
func (s *savedModel) Session() Session {
	return &session{s: s.model.Session}
}
