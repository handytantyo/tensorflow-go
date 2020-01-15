package tensorflow

import (
	"testing"

	tf "github.com/tensorflow/tensorflow/tensorflow/go"
)

func Test_session_Run(t *testing.T) {
	type fields struct {
		s *tf.Session
	}
	type args struct {
		feeds   map[tf.Output]*tf.Tensor
		fetches []tf.Output
		targets []*tf.Operation
	}
	tests := []struct {
		name       string
		fields     fields
		args       args
		wantResult []Tensor
		wantErr    bool
	}{
		{
			name: "When instance is available, then should return instance and error is not nil",
			fields: fields{
				s: &tf.Session{},
			},
			args: args{
				feeds:   make(map[tf.Output]*tf.Tensor),
				fetches: []tf.Output{},
				targets: []*tf.Operation{},
			},
			wantErr: true,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			s := &session{
				s: tt.fields.s,
			}
			_, err := s.Run(tt.args.feeds, tt.args.fetches, tt.args.targets)
			if (err != nil) != tt.wantErr {
				t.Errorf("session.Run() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
		})
	}
}

func Test_session_Close(t *testing.T) {
	s := &session{s: &tf.Session{}}
	s.Close()
}
