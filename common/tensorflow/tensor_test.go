package tensorflow

import (
	"reflect"
	"testing"

	"github.com/stretchr/testify/assert"
	tf "github.com/tensorflow/tensorflow/tensorflow/go"
)

func TestNewTensor(t *testing.T) {
	type args struct {
		value interface{}
	}
	tests := []struct {
		name    string
		args    args
		wantErr bool
	}{
		{
			name: "When value is not nil, then should return Tensor, err",
			args: args{
				value: []float32{1, 2},
			},
			wantErr: false,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := NewTensor(tt.args.value)
			if (err != nil) != tt.wantErr {
				t.Errorf("NewTensor() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if !assert.NotNil(t, got) {
				t.Errorf("NewTensor() = %v", got)
			}
		})
	}

}

func Test_tensorflow_Tensor(t *testing.T) {
	type fields struct {
		t *tf.Tensor
	}
	tests := []struct {
		name   string
		fields fields
	}{
		{
			name: "When fields is filled, then should return *tf.Tensor",
			fields: fields{
				t: &tf.Tensor{},
			},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			a := &tensorflow{
				t: tt.fields.t,
			}
			if got := a.Tensor(); !assert.NotNil(t, got) {
				t.Errorf("tensorflow.Tensor() = %v", got)
			}
		})
	}
}

func Test_tensorflow_Value(t *testing.T) {
	mock, _ := tf.NewTensor("test")
	type fields struct {
		t *tf.Tensor
	}
	tests := []struct {
		name   string
		fields fields
		want   interface{}
	}{
		{
			name: "When tensor instance is available, then should return values",
			fields: fields{
				t: mock,
			},
			want: "test",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			a := &tensorflow{
				t: tt.fields.t,
			}
			if got := a.Value(); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("tensorflow.Value() = %v, want %v", got, tt.want)
			}
		})
	}
}
