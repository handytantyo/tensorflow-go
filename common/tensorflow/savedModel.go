package tensorflow

import tf "github.com/tensorflow/tensorflow/tensorflow/go"

type savedModel struct {
	model *tf.SavedModel
}

func LoadSavedModel(exportDir string, tags []string, options *tf.SessionOptions) (SavedModel, error) {
	model, err := tf.LoadSavedModel(exportDir, tags, options)
	return &savedModel{model: model}, err
}

func (s *savedModel) Graph() Graph {
	return &graph{g: s.model.Graph}
}

func (s *savedModel) Session() Session {
	return &session{s: s.model.Session}
}
