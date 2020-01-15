package predictor

import (
	"os"
	"path"
	"reflect"
	"testing"
)

func Test_argmax(t *testing.T) {
	type args struct {
		numbers []float32
	}
	tests := []struct {
		name      string
		args      args
		wantIndex int
		wantErr   bool
	}{
		{
			name: "When there is slice of float32 len is 0, then should return index 0 and error is not nil",
			args: args{
				numbers: []float32{},
			},
			wantIndex: 0,
			wantErr:   true,
		},
		{
			name: "When there is slice of float32 as an input, then should return index that has the biggest number",
			args: args{
				numbers: []float32{1, 2, 3, 4},
			},
			wantIndex: 3,
			wantErr:   false,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			gotIndex, err := argmax(tt.args.numbers)
			if (err != nil) != tt.wantErr {
				t.Errorf("argmax() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if gotIndex != tt.wantIndex {
				t.Errorf("argmax() = %v, want %v", gotIndex, tt.wantIndex)
			}
		})
	}
}

func Test_getLabels(t *testing.T) {
	dir, _ := os.Getwd()
	type args struct {
		filename string
	}
	tests := []struct {
		name       string
		args       args
		wantLabels []string
	}{
		{
			name: "When program cannot find the file, then should return error is not nil",
			args: args{
				filename: "testing.txt",
			},
		},
		{
			name: "When program can find the file, then should return labels and error is nil",
			args: args{
				filename: path.Join(dir, "../classes.txt"),
			},
			wantLabels: []string{"minus", "puluhan", "satuan"},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if gotLabels := getLabels(tt.args.filename); !reflect.DeepEqual(gotLabels, tt.wantLabels) {
				t.Errorf("getLabels() = %v, want %v", gotLabels, tt.wantLabels)
			}
		})
	}
}
