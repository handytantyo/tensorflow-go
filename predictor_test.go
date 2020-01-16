package predictor

import (
	"path"
	"reflect"
	"testing"

	"github.com/golang/mock/gomock"
	"github.com/handytan/tensorflow-go/common/tensorflow"
	mocktensorflow "github.com/handytan/tensorflow-go/common/tensorflow/mock"
)

func TestNew(t *testing.T) {
	type args struct {
		folderModelName string
		tags            []string
		labelsFileName  string
	}
	tests := []struct {
		name    string
		args    args
		wantErr bool
	}{
		{
			name: "When program can find the labels file name, folder model name and it's tags, then should return the instance and error is nil",
			args: args{
				folderModelName: path.Join("myModel"),
				tags:            []string{"myTag"},
				labelsFileName:  path.Join("classes.txt"),
			},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			_, err := New(tt.args.folderModelName, tt.args.tags, tt.args.labelsFileName)
			if (err != nil) != tt.wantErr {
				t.Errorf("New() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
		})
	}
}

func Test_predictor_PredictClass(t *testing.T) {
	type fields struct {
		model  tensorflow.SavedModel
		labels []string
	}
	type args struct {
		predictions interface{}
	}
	tests := []struct {
		name       string
		fields     fields
		args       args
		wantResult []string
	}{
		{
			name: "When predictions are contains of [][]float32, then should return result labels",
			fields: fields{
				labels: []string{"satu", "dua", "tiga"},
			},
			args: args{
				predictions: [][]float32{
					{1, 2, 3},
					{},
					{1, 3, 2},
					{3, 1, 2},
				},
			},
			wantResult: []string{"tiga", "", "dua", "satu"},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			i := &predictor{
				model:  tt.fields.model,
				labels: tt.fields.labels,
			}
			if gotResult := i.PredictClass(tt.args.predictions); !reflect.DeepEqual(gotResult, tt.wantResult) {
				t.Errorf("predictor.PredictClass() = %v, want %v", gotResult, tt.wantResult)
			}
		})
	}
}

func Test_predictor_Close(t *testing.T) {
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()

	mockTensor := mocktensorflow.NewMockSavedModel(ctrl)
	mockSession := mocktensorflow.NewMockSession(ctrl)

	type fields struct {
		model  tensorflow.SavedModel
		labels []string
	}
	tests := []struct {
		name      string
		mockCalls []*gomock.Call
		fields    fields
		wantErr   bool
	}{
		{
			name: "When close session tensor success, then error is not nil",
			mockCalls: []*gomock.Call{
				mockTensor.EXPECT().Session().Return(mockSession),
				mockSession.EXPECT().Close().Return(nil),
			},
			fields: fields{
				model: mockTensor,
			},
			wantErr: false,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			i := &predictor{
				model:  tt.fields.model,
				labels: tt.fields.labels,
			}
			gomock.InOrder(tt.mockCalls...)
			if err := i.Close(); (err != nil) != tt.wantErr {
				t.Errorf("predictor.Close() error = %v, wantErr %v", err, tt.wantErr)
			}
		})
	}
}
