package tensorflow

import (
	"testing"

	"github.com/stretchr/testify/assert"
	tf "github.com/tensorflow/tensorflow/tensorflow/go"
)

func TestLoadSavedModel(t *testing.T) {
	type args struct {
		exportDir string
		tags      []string
		options   *tf.SessionOptions
	}
	tests := []struct {
		name    string
		args    args
		wantErr bool
	}{
		{
			name: "When init success, then should return instance of SavedModel and error is not nil",
			args: args{
				exportDir: "test",
				tags:      []string{"test"},
				options:   nil,
			},
			wantErr: true,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			_, err := LoadSavedModel(tt.args.exportDir, tt.args.tags, tt.args.options)
			if (err != nil) != tt.wantErr {
				t.Errorf("LoadSavedModel() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
		})
	}
}

func Test_savedModel_Graph(t *testing.T) {
	s := &savedModel{model: &tf.SavedModel{}}
	assert.NotNil(t, s.Graph())
}

func Test_savedModel_Session(t *testing.T) {
	s := &savedModel{model: &tf.SavedModel{}}
	assert.NotNil(t, s.Session())
}
