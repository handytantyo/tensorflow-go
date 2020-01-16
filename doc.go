// Package predictor tensorflow gives the example to implement the tensorflow-go
// It has simple interfaces to Predict, PredictClass Cassandra data,
// as well as Close the session
//
// The entry points are method New . Call them to get as an instance
// After done the predictor we must call Close method from the instance
// Close method is used for closing the session of tensor graph
//
// Mocks are provided for testing Predict Class, Close
// also the wrapper for tensorflow-go
//
// The name predictor is just shows that this package is for predicting the data
// and intregated with the model
package predictor
