// Code generated by MockGen. DO NOT EDIT.
// Source: interface.go

// Package mock_tensorflow is a generated GoMock package.
package mock_tensorflow

import (
	gomock "github.com/golang/mock/gomock"
	tensorflow "github.com/handytan/tensorflow-go/common/tensorflow"
	go0 "github.com/tensorflow/tensorflow/tensorflow/go"
	reflect "reflect"
)

// MockTensor is a mock of Tensor interface
type MockTensor struct {
	ctrl     *gomock.Controller
	recorder *MockTensorMockRecorder
}

// MockTensorMockRecorder is the mock recorder for MockTensor
type MockTensorMockRecorder struct {
	mock *MockTensor
}

// NewMockTensor creates a new mock instance
func NewMockTensor(ctrl *gomock.Controller) *MockTensor {
	mock := &MockTensor{ctrl: ctrl}
	mock.recorder = &MockTensorMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use
func (m *MockTensor) EXPECT() *MockTensorMockRecorder {
	return m.recorder
}

// Value mocks base method
func (m *MockTensor) Value() interface{} {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Value")
	ret0, _ := ret[0].(interface{})
	return ret0
}

// Value indicates an expected call of Value
func (mr *MockTensorMockRecorder) Value() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Value", reflect.TypeOf((*MockTensor)(nil).Value))
}

// Tensor mocks base method
func (m *MockTensor) Tensor() *go0.Tensor {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Tensor")
	ret0, _ := ret[0].(*go0.Tensor)
	return ret0
}

// Tensor indicates an expected call of Tensor
func (mr *MockTensorMockRecorder) Tensor() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Tensor", reflect.TypeOf((*MockTensor)(nil).Tensor))
}

// MockSavedModel is a mock of SavedModel interface
type MockSavedModel struct {
	ctrl     *gomock.Controller
	recorder *MockSavedModelMockRecorder
}

// MockSavedModelMockRecorder is the mock recorder for MockSavedModel
type MockSavedModelMockRecorder struct {
	mock *MockSavedModel
}

// NewMockSavedModel creates a new mock instance
func NewMockSavedModel(ctrl *gomock.Controller) *MockSavedModel {
	mock := &MockSavedModel{ctrl: ctrl}
	mock.recorder = &MockSavedModelMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use
func (m *MockSavedModel) EXPECT() *MockSavedModelMockRecorder {
	return m.recorder
}

// Session mocks base method
func (m *MockSavedModel) Session() tensorflow.Session {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Session")
	ret0, _ := ret[0].(tensorflow.Session)
	return ret0
}

// Session indicates an expected call of Session
func (mr *MockSavedModelMockRecorder) Session() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Session", reflect.TypeOf((*MockSavedModel)(nil).Session))
}

// Graph mocks base method
func (m *MockSavedModel) Graph() tensorflow.Graph {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Graph")
	ret0, _ := ret[0].(tensorflow.Graph)
	return ret0
}

// Graph indicates an expected call of Graph
func (mr *MockSavedModelMockRecorder) Graph() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Graph", reflect.TypeOf((*MockSavedModel)(nil).Graph))
}

// MockSession is a mock of Session interface
type MockSession struct {
	ctrl     *gomock.Controller
	recorder *MockSessionMockRecorder
}

// MockSessionMockRecorder is the mock recorder for MockSession
type MockSessionMockRecorder struct {
	mock *MockSession
}

// NewMockSession creates a new mock instance
func NewMockSession(ctrl *gomock.Controller) *MockSession {
	mock := &MockSession{ctrl: ctrl}
	mock.recorder = &MockSessionMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use
func (m *MockSession) EXPECT() *MockSessionMockRecorder {
	return m.recorder
}

// Run mocks base method
func (m *MockSession) Run(feeds map[go0.Output]*go0.Tensor, fetches []go0.Output, targets []*go0.Operation) ([]tensorflow.Tensor, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Run", feeds, fetches, targets)
	ret0, _ := ret[0].([]tensorflow.Tensor)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// Run indicates an expected call of Run
func (mr *MockSessionMockRecorder) Run(feeds, fetches, targets interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Run", reflect.TypeOf((*MockSession)(nil).Run), feeds, fetches, targets)
}

// Close mocks base method
func (m *MockSession) Close() error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Close")
	ret0, _ := ret[0].(error)
	return ret0
}

// Close indicates an expected call of Close
func (mr *MockSessionMockRecorder) Close() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Close", reflect.TypeOf((*MockSession)(nil).Close))
}

// MockGraph is a mock of Graph interface
type MockGraph struct {
	ctrl     *gomock.Controller
	recorder *MockGraphMockRecorder
}

// MockGraphMockRecorder is the mock recorder for MockGraph
type MockGraphMockRecorder struct {
	mock *MockGraph
}

// NewMockGraph creates a new mock instance
func NewMockGraph(ctrl *gomock.Controller) *MockGraph {
	mock := &MockGraph{ctrl: ctrl}
	mock.recorder = &MockGraphMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use
func (m *MockGraph) EXPECT() *MockGraphMockRecorder {
	return m.recorder
}

// Operation mocks base method
func (m *MockGraph) Operation(name string) *go0.Operation {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Operation", name)
	ret0, _ := ret[0].(*go0.Operation)
	return ret0
}

// Operation indicates an expected call of Operation
func (mr *MockGraphMockRecorder) Operation(name interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Operation", reflect.TypeOf((*MockGraph)(nil).Operation), name)
}
