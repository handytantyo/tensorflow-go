ЧА
К'я&
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtypeА
is_initialized
"
dtypetypeШ
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"myTag*1.14.02unknownяи
{
inputLayer_inputPlaceholder* 
shape:         *
dtype0*+
_output_shapes
:         
`
inputLayer/ShapeShapeinputLayer_input*
out_type0*
_output_shapes
:*
T0
h
inputLayer/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
j
 inputLayer/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
j
 inputLayer/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┤
inputLayer/strided_sliceStridedSliceinputLayer/ShapeinputLayer/strided_slice/stack inputLayer/strided_slice/stack_1 inputLayer/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
Z
inputLayer/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Б
inputLayer/ProdProdinputLayer/strided_sliceinputLayer/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
]
inputLayer/stack/0Const*
valueB :
         *
dtype0*
_output_shapes
: 
w
inputLayer/stackPackinputLayer/stack/0inputLayer/Prod*

axis *
N*
_output_shapes
:*
T0
К
inputLayer/ReshapeReshapeinputLayer_inputinputLayer/stack*
T0*
Tshape0*0
_output_shapes
:                  
m
dense_1/random_uniform/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
_
dense_1/random_uniform/minConst*
valueB
 *Л╜╛*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *Л╜>*
dtype0*
_output_shapes
: 
и
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
_output_shapes

: *
seed2Ф╤н*
seed▒ х)*
T0*
dtype0
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
М
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes

: 
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes

: 
В
dense_1/kernel
VariableV2*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
╝
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
{
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

: 
Z
dense_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_1/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
й
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
: 
Щ
dense_1/MatMulMatMulinputLayer/Reshapedense_1/kernel/read*
T0*'
_output_shapes
:          *
transpose_a( *
transpose_b( 
Ж
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:          
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:          
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
Р
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
В
dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
_output_shapes
: *
T0

c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*'
_output_shapes
:          
п
dropout_1/cond/mul/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:          :          *
T0*
_class
loc:@dense_1/Relu
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
И
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┐
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
dtype0*'
_output_shapes
:          *
seed2╒╪*
seed▒ х)*
T0
з
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
┬
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:          
┤
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:          
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
И
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
T0*
_output_shapes
: 
й
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*'
_output_shapes
:          
З
dropout_1/cond/dropout/mulMuldropout_1/cond/muldropout_1/cond/dropout/truediv*
T0*'
_output_shapes
:          
Щ
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *'
_output_shapes
:          *

DstT0
О
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*
T0*'
_output_shapes
:          
н
dropout_1/cond/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:          :          
С
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*)
_output_shapes
:          : *
T0*
N
m
dense_2/random_uniform/shapeConst*
valueB"    @   *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *  А╛*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *  А>*
dtype0*
_output_shapes
: 
и
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
T0*
dtype0*
_output_shapes

: @*
seed2Ё┤З*
seed▒ х)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0
М
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes

: @
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
_output_shapes

: @*
T0
В
dense_2/kernel
VariableV2*
shape
: @*
shared_name *
dtype0*
_output_shapes

: @*
	container 
╝
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: @
{
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

: @
Z
dense_2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
x
dense_2/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
й
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:@
Ы
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*'
_output_shapes
:         @*
transpose_a( 
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         @
]
dense_2/SigmoidSigmoiddense_2/BiasAdd*'
_output_shapes
:         @*
T0
В
dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

s
dropout_2/cond/mul/yConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*
T0*'
_output_shapes
:         @
╡
dropout_2/cond/mul/SwitchSwitchdense_2/Sigmoiddropout_2/cond/pred_id*
T0*"
_class
loc:@dense_2/Sigmoid*:
_output_shapes(
&:         @:         @
z
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_2/cond/dropout/ShapeShapedropout_2/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
└
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
seed▒ х)*
T0*
dtype0*'
_output_shapes
:         @*
seed2ял╪
з
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
┬
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*'
_output_shapes
:         @*
T0
┤
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*'
_output_shapes
:         @*
T0
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
}
dropout_2/cond/dropout/subSubdropout_2/cond/dropout/sub/xdropout_2/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_2/cond/dropout/truediv/xConst^dropout_2/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
И
dropout_2/cond/dropout/truedivRealDiv dropout_2/cond/dropout/truediv/xdropout_2/cond/dropout/sub*
T0*
_output_shapes
: 
й
#dropout_2/cond/dropout/GreaterEqualGreaterEqual%dropout_2/cond/dropout/random_uniformdropout_2/cond/dropout/rate*'
_output_shapes
:         @*
T0
З
dropout_2/cond/dropout/mulMuldropout_2/cond/muldropout_2/cond/dropout/truediv*'
_output_shapes
:         @*
T0
Щ
dropout_2/cond/dropout/CastCast#dropout_2/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *'
_output_shapes
:         @*

DstT0
О
dropout_2/cond/dropout/mul_1Muldropout_2/cond/dropout/muldropout_2/cond/dropout/Cast*
T0*'
_output_shapes
:         @
│
dropout_2/cond/Switch_1Switchdense_2/Sigmoiddropout_2/cond/pred_id*
T0*"
_class
loc:@dense_2/Sigmoid*:
_output_shapes(
&:         @:         @
С
dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul_1*
N*)
_output_shapes
:         @: *
T0
t
#inferenceLayer/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
f
!inferenceLayer/random_uniform/minConst*
_output_shapes
: *
valueB
 *к7Щ╛*
dtype0
f
!inferenceLayer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *к7Щ>*
dtype0
╢
+inferenceLayer/random_uniform/RandomUniformRandomUniform#inferenceLayer/random_uniform/shape*
dtype0*
_output_shapes

:@*
seed2╢┴Н*
seed▒ х)*
T0
П
!inferenceLayer/random_uniform/subSub!inferenceLayer/random_uniform/max!inferenceLayer/random_uniform/min*
T0*
_output_shapes
: 
б
!inferenceLayer/random_uniform/mulMul+inferenceLayer/random_uniform/RandomUniform!inferenceLayer/random_uniform/sub*
_output_shapes

:@*
T0
У
inferenceLayer/random_uniformAdd!inferenceLayer/random_uniform/mul!inferenceLayer/random_uniform/min*
T0*
_output_shapes

:@
Й
inferenceLayer/kernel
VariableV2*
dtype0*
_output_shapes

:@*
	container *
shape
:@*
shared_name 
╪
inferenceLayer/kernel/AssignAssigninferenceLayer/kernelinferenceLayer/random_uniform*
use_locking(*
T0*(
_class
loc:@inferenceLayer/kernel*
validate_shape(*
_output_shapes

:@
Р
inferenceLayer/kernel/readIdentityinferenceLayer/kernel*
T0*(
_class
loc:@inferenceLayer/kernel*
_output_shapes

:@
a
inferenceLayer/ConstConst*
valueB*    *
dtype0*
_output_shapes
:

inferenceLayer/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
┼
inferenceLayer/bias/AssignAssigninferenceLayer/biasinferenceLayer/Const*
use_locking(*
T0*&
_class
loc:@inferenceLayer/bias*
validate_shape(*
_output_shapes
:
Ж
inferenceLayer/bias/readIdentityinferenceLayer/bias*
T0*&
_class
loc:@inferenceLayer/bias*
_output_shapes
:
й
inferenceLayer/MatMulMatMuldropout_2/cond/MergeinferenceLayer/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
Ы
inferenceLayer/BiasAddBiasAddinferenceLayer/MatMulinferenceLayer/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
k
inferenceLayer/SoftmaxSoftmaxinferenceLayer/BiasAdd*'
_output_shapes
:         *
T0
]
RMSprop/lr/initial_valueConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
n

RMSprop/lr
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
к
RMSprop/lr/AssignAssign
RMSprop/lrRMSprop/lr/initial_value*
T0*
_class
loc:@RMSprop/lr*
validate_shape(*
_output_shapes
: *
use_locking(
g
RMSprop/lr/readIdentity
RMSprop/lr*
_output_shapes
: *
T0*
_class
loc:@RMSprop/lr
^
RMSprop/rho/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
RMSprop/rho
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
о
RMSprop/rho/AssignAssignRMSprop/rhoRMSprop/rho/initial_value*
use_locking(*
T0*
_class
loc:@RMSprop/rho*
validate_shape(*
_output_shapes
: 
j
RMSprop/rho/readIdentityRMSprop/rho*
T0*
_class
loc:@RMSprop/rho*
_output_shapes
: 
`
RMSprop/decay/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
q
RMSprop/decay
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
╢
RMSprop/decay/AssignAssignRMSprop/decayRMSprop/decay/initial_value* 
_class
loc:@RMSprop/decay*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
p
RMSprop/decay/readIdentityRMSprop/decay*
T0* 
_class
loc:@RMSprop/decay*
_output_shapes
: 
b
 RMSprop/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
v
RMSprop/iterations
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
╩
RMSprop/iterations/AssignAssignRMSprop/iterations RMSprop/iterations/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*%
_class
loc:@RMSprop/iterations

RMSprop/iterations/readIdentityRMSprop/iterations*
T0	*%
_class
loc:@RMSprop/iterations*
_output_shapes
: 
К
inferenceLayer_targetPlaceholder*
dtype0*0
_output_shapes
:                  *%
shape:                  
x
inferenceLayer_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:         *
shape:         
y
.loss/inferenceLayer_loss/Sum/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
║
loss/inferenceLayer_loss/SumSuminferenceLayer/Softmax.loss/inferenceLayer_loss/Sum/reduction_indices*
T0*'
_output_shapes
:         *
	keep_dims(*

Tidx0
У
 loss/inferenceLayer_loss/truedivRealDivinferenceLayer/Softmaxloss/inferenceLayer_loss/Sum*
T0*'
_output_shapes
:         
c
loss/inferenceLayer_loss/ConstConst*
_output_shapes
: *
valueB
 *Х┐╓3*
dtype0
c
loss/inferenceLayer_loss/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Д
loss/inferenceLayer_loss/subSubloss/inferenceLayer_loss/sub/xloss/inferenceLayer_loss/Const*
_output_shapes
: *
T0
л
.loss/inferenceLayer_loss/clip_by_value/MinimumMinimum loss/inferenceLayer_loss/truedivloss/inferenceLayer_loss/sub*
T0*'
_output_shapes
:         
│
&loss/inferenceLayer_loss/clip_by_valueMaximum.loss/inferenceLayer_loss/clip_by_value/Minimumloss/inferenceLayer_loss/Const*
T0*'
_output_shapes
:         
}
loss/inferenceLayer_loss/LogLog&loss/inferenceLayer_loss/clip_by_value*'
_output_shapes
:         *
T0
К
loss/inferenceLayer_loss/mulMulinferenceLayer_targetloss/inferenceLayer_loss/Log*'
_output_shapes
:         *
T0
{
0loss/inferenceLayer_loss/Sum_1/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
└
loss/inferenceLayer_loss/Sum_1Sumloss/inferenceLayer_loss/mul0loss/inferenceLayer_loss/Sum_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:         
q
loss/inferenceLayer_loss/NegNegloss/inferenceLayer_loss/Sum_1*#
_output_shapes
:         *
T0
r
/loss/inferenceLayer_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
┐
loss/inferenceLayer_loss/MeanMeanloss/inferenceLayer_loss/Neg/loss/inferenceLayer_loss/Mean/reduction_indices*#
_output_shapes
:         *
	keep_dims( *

Tidx0*
T0
С
loss/inferenceLayer_loss/mul_1Mulloss/inferenceLayer_loss/MeaninferenceLayer_sample_weights*#
_output_shapes
:         *
T0
h
#loss/inferenceLayer_loss/NotEqual/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
Я
!loss/inferenceLayer_loss/NotEqualNotEqualinferenceLayer_sample_weights#loss/inferenceLayer_loss/NotEqual/y*#
_output_shapes
:         *
T0
Х
loss/inferenceLayer_loss/CastCast!loss/inferenceLayer_loss/NotEqual*
Truncate( *#
_output_shapes
:         *

DstT0*

SrcT0

j
 loss/inferenceLayer_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
ж
loss/inferenceLayer_loss/Mean_1Meanloss/inferenceLayer_loss/Cast loss/inferenceLayer_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Ь
"loss/inferenceLayer_loss/truediv_1RealDivloss/inferenceLayer_loss/mul_1loss/inferenceLayer_loss/Mean_1*#
_output_shapes
:         *
T0
j
 loss/inferenceLayer_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
л
loss/inferenceLayer_loss/Mean_2Mean"loss/inferenceLayer_loss/truediv_1 loss/inferenceLayer_loss/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
]
loss/mulMul
loss/mul/xloss/inferenceLayer_loss/Mean_2*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
valueB :
         *
dtype0*
_output_shapes
: 
Ю
metrics/acc/ArgMaxArgMaxinferenceLayer_targetmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:         
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
         *
dtype0*
_output_shapes
: 
г
metrics/acc/ArgMax_1ArgMaxinferenceLayer/Softmaxmetrics/acc/ArgMax_1/dimension*
output_type0	*#
_output_shapes
:         *

Tidx0*
T0
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*#
_output_shapes
:         *
T0	
x
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:         *

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
А
 training/RMSprop/gradients/ShapeConst*
_output_shapes
: *
valueB *
_class
loc:@loss/mul*
dtype0
Ж
$training/RMSprop/gradients/grad_ys_0Const*
valueB
 *  А?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
┐
training/RMSprop/gradients/FillFill training/RMSprop/gradients/Shape$training/RMSprop/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@loss/mul
│
,training/RMSprop/gradients/loss/mul_grad/MulMultraining/RMSprop/gradients/Fillloss/inferenceLayer_loss/Mean_2*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
а
.training/RMSprop/gradients/loss/mul_grad/Mul_1Multraining/RMSprop/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
╦
Mtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Reshape/shapeConst*
valueB:*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
dtype0*
_output_shapes
:
╕
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/ReshapeReshape.training/RMSprop/gradients/loss/mul_grad/Mul_1Mtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2
█
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/ShapeShape"loss/inferenceLayer_loss/truediv_1*
out_type0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
_output_shapes
:*
T0
╨
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/TileTileGtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/ReshapeEtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Shape*

Tmultiples0*
T0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*#
_output_shapes
:         
▌
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Shape_1Shape"loss/inferenceLayer_loss/truediv_1*
T0*
out_type0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
_output_shapes
:
╛
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Shape_2Const*
valueB *2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
dtype0*
_output_shapes
: 
├
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/ConstConst*
valueB: *2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
dtype0*
_output_shapes
:
╬
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/ProdProdGtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Shape_1Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Const*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
_output_shapes
: 
┼
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Const_1Const*
valueB: *2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
dtype0*
_output_shapes
:
╥
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Prod_1ProdGtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Shape_2Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Const_1*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
_output_shapes
: 
┐
Itraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
dtype0*
_output_shapes
: 
║
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/MaximumMaximumFtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Prod_1Itraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Maximum/y*
T0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
_output_shapes
: 
╕
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/floordivFloorDivDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/ProdGtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Maximum*
_output_shapes
: *
T0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2
К
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/CastCastHtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/floordiv*

SrcT0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*
Truncate( *
_output_shapes
: *

DstT0
└
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/truedivRealDivDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/TileDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/Cast*
T0*2
_class(
&$loc:@loss/inferenceLayer_loss/Mean_2*#
_output_shapes
:         
▌
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/ShapeShapeloss/inferenceLayer_loss/mul_1*
T0*
out_type0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*
_output_shapes
:
─
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/Shape_1Const*
valueB *5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*
dtype0*
_output_shapes
: 
√
Xtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsHtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/ShapeJtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/Shape_1*
T0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*2
_output_shapes 
:         :         
д
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/RealDivRealDivGtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/truedivloss/inferenceLayer_loss/Mean_1*
T0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*#
_output_shapes
:         
ъ
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/SumSumJtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/RealDivXtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/BroadcastGradientArgs*
T0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
┌
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/ReshapeReshapeFtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/SumHtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/Shape*
T0*
Tshape0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*#
_output_shapes
:         
╥
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/NegNegloss/inferenceLayer_loss/mul_1*
T0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*#
_output_shapes
:         
е
Ltraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/RealDiv_1RealDivFtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/Negloss/inferenceLayer_loss/Mean_1*
T0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*#
_output_shapes
:         
л
Ltraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/RealDiv_2RealDivLtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/RealDiv_1loss/inferenceLayer_loss/Mean_1*
T0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*#
_output_shapes
:         
╔
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/mulMulGtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_2_grad/truedivLtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/RealDiv_2*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*#
_output_shapes
:         *
T0
ъ
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/Sum_1SumFtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/mulZtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
╙
Ltraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/Reshape_1ReshapeHtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/Sum_1Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*5
_class+
)'loc:@loss/inferenceLayer_loss/truediv_1*
_output_shapes
: 
╘
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/ShapeShapeloss/inferenceLayer_loss/Mean*
out_type0*1
_class'
%#loc:@loss/inferenceLayer_loss/mul_1*
_output_shapes
:*
T0
╓
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/Shape_1ShapeinferenceLayer_sample_weights*
out_type0*1
_class'
%#loc:@loss/inferenceLayer_loss/mul_1*
_output_shapes
:*
T0
ы
Ttraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/ShapeFtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/Shape_1*2
_output_shapes 
:         :         *
T0*1
_class'
%#loc:@loss/inferenceLayer_loss/mul_1
Х
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/MulMulJtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/ReshapeinferenceLayer_sample_weights*1
_class'
%#loc:@loss/inferenceLayer_loss/mul_1*#
_output_shapes
:         *
T0
╓
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/SumSumBtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/MulTtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/BroadcastGradientArgs*
T0*1
_class'
%#loc:@loss/inferenceLayer_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
╩
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/ReshapeReshapeBtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/SumDtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/Shape*
T0*
Tshape0*1
_class'
%#loc:@loss/inferenceLayer_loss/mul_1*#
_output_shapes
:         
Ч
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/Mul_1Mulloss/inferenceLayer_loss/MeanJtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_1_grad/Reshape*
T0*1
_class'
%#loc:@loss/inferenceLayer_loss/mul_1*#
_output_shapes
:         
▄
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/Sum_1SumDtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/Mul_1Vtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/BroadcastGradientArgs:1*
T0*1
_class'
%#loc:@loss/inferenceLayer_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
╨
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/Reshape_1ReshapeDtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/Sum_1Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/Shape_1*
T0*
Tshape0*1
_class'
%#loc:@loss/inferenceLayer_loss/mul_1*#
_output_shapes
:         
╤
Ctraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/ShapeShapeloss/inferenceLayer_loss/Neg*
out_type0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
:*
T0
╢
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/SizeConst*
value	B :*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
dtype0*
_output_shapes
: 
Т
Atraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/addAdd/loss/inferenceLayer_loss/Mean/reduction_indicesBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Size*
_output_shapes
: *
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean
й
Atraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/modFloorModAtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/addBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Size*
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
: 
┴
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Shape_1Const*
valueB: *0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
dtype0*
_output_shapes
:
╜
Itraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/range/startConst*
value	B : *0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
dtype0*
_output_shapes
: 
╜
Itraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/range/deltaConst*
value	B :*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
dtype0*
_output_shapes
: 
А
Ctraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/rangeRangeItraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/range/startBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/SizeItraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/range/delta*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
:*

Tidx0
╝
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Fill/valueConst*
value	B :*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
dtype0*
_output_shapes
: 
┬
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/FillFillEtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Shape_1Htraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Fill/value*

index_type0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
: *
T0
═
Ktraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/DynamicStitchDynamicStitchCtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/rangeAtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/modCtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/ShapeBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Fill*
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
N*
_output_shapes
:
╗
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Maximum/yConst*
value	B :*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
dtype0*
_output_shapes
: 
╜
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/MaximumMaximumKtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/DynamicStitchGtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Maximum/y*
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
:
╡
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/floordivFloorDivCtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/ShapeEtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Maximum*
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
:
╙
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/ReshapeReshapeFtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_1_grad/ReshapeKtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*#
_output_shapes
:         
╦
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/TileTileEtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/ReshapeFtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/floordiv*

Tmultiples0*
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*#
_output_shapes
:         
╙
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Shape_2Shapeloss/inferenceLayer_loss/Neg*
_output_shapes
:*
T0*
out_type0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean
╘
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Shape_3Shapeloss/inferenceLayer_loss/Mean*
T0*
out_type0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
:
┐
Ctraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/ConstConst*
valueB: *0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
dtype0*
_output_shapes
:
╞
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/ProdProdEtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Shape_2Ctraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Const*
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
┴
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Const_1Const*
valueB: *0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
dtype0*
_output_shapes
:
╩
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Prod_1ProdEtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Shape_3Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Const_1*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
╜
Itraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Maximum_1/yConst*
value	B :*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
dtype0*
_output_shapes
: 
╢
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Maximum_1MaximumDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Prod_1Itraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Maximum_1/y*
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
: 
┤
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/floordiv_1FloorDivBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/ProdGtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Maximum_1*
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
_output_shapes
: 
Ж
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/CastCastHtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/floordiv_1*

SrcT0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0
╕
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/truedivRealDivBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/TileBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/Cast*
T0*0
_class&
$"loc:@loss/inferenceLayer_loss/Mean*#
_output_shapes
:         
э
@training/RMSprop/gradients/loss/inferenceLayer_loss/Neg_grad/NegNegEtraining/RMSprop/gradients/loss/inferenceLayer_loss/Mean_grad/truediv*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/Neg*#
_output_shapes
:         
╙
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/ShapeShapeloss/inferenceLayer_loss/mul*
T0*
out_type0*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
_output_shapes
:
╕
Ctraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/SizeConst*
value	B :*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
dtype0*
_output_shapes
: 
Ф
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/addAdd0loss/inferenceLayer_loss/Sum_1/reduction_indicesCtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Size*
T0*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
_output_shapes
: 
л
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/modFloorModBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/addCtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Size*
T0*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
_output_shapes
: 
╝
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Shape_1Const*
_output_shapes
: *
valueB *1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
dtype0
┐
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/range/startConst*
value	B : *1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
dtype0*
_output_shapes
: 
┐
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/range/deltaConst*
_output_shapes
: *
value	B :*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
dtype0
Е
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/rangeRangeJtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/range/startCtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/SizeJtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/range/delta*
_output_shapes
:*

Tidx0*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1
╛
Itraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Fill/valueConst*
value	B :*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
dtype0*
_output_shapes
: 
─
Ctraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/FillFillFtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Shape_1Itraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1
╙
Ltraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/DynamicStitchDynamicStitchDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/rangeBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/modDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/ShapeCtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Fill*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
N*
_output_shapes
:*
T0
╜
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1
┴
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/MaximumMaximumLtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/DynamicStitchHtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Maximum/y*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
_output_shapes
:*
T0
╣
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/floordivFloorDivDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/ShapeFtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Maximum*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*
_output_shapes
:*
T0
▌
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/ReshapeReshape@training/RMSprop/gradients/loss/inferenceLayer_loss/Neg_grad/NegLtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/DynamicStitch*
Tshape0*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*0
_output_shapes
:                  *
T0
╙
Ctraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/TileTileFtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/ReshapeGtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/floordiv*
T0*1
_class'
%#loc:@loss/inferenceLayer_loss/Sum_1*'
_output_shapes
:         *

Tmultiples0
╚
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/ShapeShapeinferenceLayer_target*
T0*
out_type0*/
_class%
#!loc:@loss/inferenceLayer_loss/mul*
_output_shapes
:
╤
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Shape_1Shapeloss/inferenceLayer_loss/Log*
T0*
out_type0*/
_class%
#!loc:@loss/inferenceLayer_loss/mul*
_output_shapes
:
у
Rtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/ShapeDtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Shape_1*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/mul*2
_output_shapes 
:         :         
Н
@training/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/MulMulCtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Tileloss/inferenceLayer_loss/Log*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/mul*'
_output_shapes
:         
╬
@training/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/SumSum@training/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/MulRtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/BroadcastGradientArgs*/
_class%
#!loc:@loss/inferenceLayer_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
╧
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/ReshapeReshape@training/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/SumBtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@loss/inferenceLayer_loss/mul*0
_output_shapes
:                  
И
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Mul_1MulinferenceLayer_targetCtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_1_grad/Tile*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/mul*'
_output_shapes
:         
╘
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Sum_1SumBtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Mul_1Ttraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
╠
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Reshape_1ReshapeBtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Sum_1Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@loss/inferenceLayer_loss/mul*'
_output_shapes
:         
й
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Log_grad/Reciprocal
Reciprocal&loss/inferenceLayer_loss/clip_by_valueG^training/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Reshape_1*'
_output_shapes
:         *
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/Log
╗
@training/RMSprop/gradients/loss/inferenceLayer_loss/Log_grad/mulMulFtraining/RMSprop/gradients/loss/inferenceLayer_loss/mul_grad/Reshape_1Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Log_grad/Reciprocal*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/Log*'
_output_shapes
:         
ї
Ltraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/ShapeShape.loss/inferenceLayer_loss/clip_by_value/Minimum*
out_type0*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*
_output_shapes
:*
T0
╠
Ntraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Shape_1Const*
valueB *9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*
dtype0*
_output_shapes
: 
Й
Ntraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Shape_2Shape@training/RMSprop/gradients/loss/inferenceLayer_loss/Log_grad/mul*
T0*
out_type0*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*
_output_shapes
:
╥
Rtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*
dtype0*
_output_shapes
: 
ў
Ltraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/zerosFillNtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Shape_2Rtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/zeros/Const*'
_output_shapes
:         *
T0*

index_type0*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value
а
Straining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/GreaterEqualGreaterEqual.loss/inferenceLayer_loss/clip_by_value/Minimumloss/inferenceLayer_loss/Const*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*'
_output_shapes
:         *
T0
Л
\training/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/ShapeNtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Shape_1*
T0*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*2
_output_shapes 
:         :         
й
Mtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/SelectSelectStraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/GreaterEqual@training/RMSprop/gradients/loss/inferenceLayer_loss/Log_grad/mulLtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/zeros*
T0*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*'
_output_shapes
:         
∙
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/SumSumMtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Select\training/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/BroadcastGradientArgs*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ю
Ntraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/ReshapeReshapeJtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/SumLtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Shape*
T0*
Tshape0*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*'
_output_shapes
:         
л
Otraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Select_1SelectStraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/GreaterEqualLtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/zeros@training/RMSprop/gradients/loss/inferenceLayer_loss/Log_grad/mul*
T0*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*'
_output_shapes
:         
 
Ltraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Sum_1SumOtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Select_1^training/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value
у
Ptraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Reshape_1ReshapeLtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Sum_1Ntraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*9
_class/
-+loc:@loss/inferenceLayer_loss/clip_by_value*
_output_shapes
: 
ў
Ttraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/ShapeShape loss/inferenceLayer_loss/truediv*
T0*
out_type0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*
_output_shapes
:
▄
Vtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
з
Vtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Shape_2ShapeNtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Reshape*
out_type0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*
_output_shapes
:*
T0
т
Ztraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
Ч
Ttraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/zerosFillVtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Shape_2Ztraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*'
_output_shapes
:         
Ъ
Xtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/LessEqual	LessEqual loss/inferenceLayer_loss/truedivloss/inferenceLayer_loss/sub*
T0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*'
_output_shapes
:         
л
dtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsTtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/ShapeVtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Shape_1*
T0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*2
_output_shapes 
:         :         
╘
Utraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/SelectSelectXtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/LessEqualNtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/ReshapeTtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/zeros*
T0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*'
_output_shapes
:         
Щ
Rtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/SumSumUtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Selectdtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum
О
Vtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/ReshapeReshapeRtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/SumTtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*'
_output_shapes
:         
╓
Wtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Select_1SelectXtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/LessEqualTtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/zerosNtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value_grad/Reshape*
T0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*'
_output_shapes
:         
Я
Ttraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Sum_1SumWtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Select_1ftraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum*
_output_shapes
:
Г
Xtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeTtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Sum_1Vtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*A
_class7
53loc:@loss/inferenceLayer_loss/clip_by_value/Minimum
╤
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/ShapeShapeinferenceLayer/Softmax*
T0*
out_type0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*
_output_shapes
:
┘
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/Shape_1Shapeloss/inferenceLayer_loss/Sum*
T0*
out_type0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*
_output_shapes
:
є
Vtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/ShapeHtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/Shape_1*
T0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*2
_output_shapes 
:         :         
░
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/RealDivRealDivVtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/Reshapeloss/inferenceLayer_loss/Sum*
T0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*'
_output_shapes
:         
т
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/SumSumHtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/RealDivVtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*
_output_shapes
:
╓
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/ReshapeReshapeDtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/SumFtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/Shape*
T0*
Tshape0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*'
_output_shapes
:         
╩
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/NegNeginferenceLayer/Softmax*'
_output_shapes
:         *
T0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv
а
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/RealDiv_1RealDivDtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/Negloss/inferenceLayer_loss/Sum*
T0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*'
_output_shapes
:         
ж
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/RealDiv_2RealDivJtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/RealDiv_1loss/inferenceLayer_loss/Sum*'
_output_shapes
:         *
T0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv
╓
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/mulMulVtraining/RMSprop/gradients/loss/inferenceLayer_loss/clip_by_value/Minimum_grad/ReshapeJtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/RealDiv_2*'
_output_shapes
:         *
T0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv
т
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/Sum_1SumDtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/mulXtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/BroadcastGradientArgs:1*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
▄
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/Reshape_1ReshapeFtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/Sum_1Htraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/Shape_1*
T0*
Tshape0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*'
_output_shapes
:         
╔
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/ShapeShapeinferenceLayer/Softmax*
T0*
out_type0*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
_output_shapes
:
┤
Atraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/SizeConst*
value	B :*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
dtype0*
_output_shapes
: 
М
@training/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/addAdd.loss/inferenceLayer_loss/Sum/reduction_indicesAtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Size*
_output_shapes
: *
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum
г
@training/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/modFloorMod@training/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/addAtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Size*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
_output_shapes
: 
╕
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Shape_1Const*
_output_shapes
: *
valueB */
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
dtype0
╗
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/range/startConst*
value	B : */
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
dtype0*
_output_shapes
: 
╗
Htraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/range/deltaConst*
value	B :*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
dtype0*
_output_shapes
: 
√
Btraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/rangeRangeHtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/range/startAtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/SizeHtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/range/delta*

Tidx0*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
_output_shapes
:
║
Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Fill/valueConst*
value	B :*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
dtype0*
_output_shapes
: 
╝
Atraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/FillFillDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Shape_1Gtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum
╟
Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/DynamicStitchDynamicStitchBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/range@training/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/modBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/ShapeAtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Fill*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
N*
_output_shapes
:
╣
Ftraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Maximum/yConst*
value	B :*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
dtype0*
_output_shapes
: 
╣
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/MaximumMaximumJtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/DynamicStitchFtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Maximum/y*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
_output_shapes
:*
T0
▒
Etraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/floordivFloorDivBtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/ShapeDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Maximum*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*
_output_shapes
:
с
Dtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/ReshapeReshapeJtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/Reshape_1Jtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/DynamicStitch*
T0*
Tshape0*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum*0
_output_shapes
:                  
╦
Atraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/TileTileDtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/ReshapeEtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/floordiv*'
_output_shapes
:         *

Tmultiples0*
T0*/
_class%
#!loc:@loss/inferenceLayer_loss/Sum
д
training/RMSprop/gradients/AddNAddNHtraining/RMSprop/gradients/loss/inferenceLayer_loss/truediv_grad/ReshapeAtraining/RMSprop/gradients/loss/inferenceLayer_loss/Sum_grad/Tile*
T0*3
_class)
'%loc:@loss/inferenceLayer_loss/truediv*
N*'
_output_shapes
:         
╫
:training/RMSprop/gradients/inferenceLayer/Softmax_grad/mulMultraining/RMSprop/gradients/AddNinferenceLayer/Softmax*
T0*)
_class
loc:@inferenceLayer/Softmax*'
_output_shapes
:         
┬
Ltraining/RMSprop/gradients/inferenceLayer/Softmax_grad/Sum/reduction_indicesConst*
valueB :
         *)
_class
loc:@inferenceLayer/Softmax*
dtype0*
_output_shapes
: 
┼
:training/RMSprop/gradients/inferenceLayer/Softmax_grad/SumSum:training/RMSprop/gradients/inferenceLayer/Softmax_grad/mulLtraining/RMSprop/gradients/inferenceLayer/Softmax_grad/Sum/reduction_indices*)
_class
loc:@inferenceLayer/Softmax*'
_output_shapes
:         *

Tidx0*
	keep_dims(*
T0
√
:training/RMSprop/gradients/inferenceLayer/Softmax_grad/subSubtraining/RMSprop/gradients/AddN:training/RMSprop/gradients/inferenceLayer/Softmax_grad/Sum*
T0*)
_class
loc:@inferenceLayer/Softmax*'
_output_shapes
:         
Ї
<training/RMSprop/gradients/inferenceLayer/Softmax_grad/mul_1Mul:training/RMSprop/gradients/inferenceLayer/Softmax_grad/subinferenceLayer/Softmax*
T0*)
_class
loc:@inferenceLayer/Softmax*'
_output_shapes
:         
Ў
Btraining/RMSprop/gradients/inferenceLayer/BiasAdd_grad/BiasAddGradBiasAddGrad<training/RMSprop/gradients/inferenceLayer/Softmax_grad/mul_1*
T0*)
_class
loc:@inferenceLayer/BiasAdd*
data_formatNHWC*
_output_shapes
:
в
<training/RMSprop/gradients/inferenceLayer/MatMul_grad/MatMulMatMul<training/RMSprop/gradients/inferenceLayer/Softmax_grad/mul_1inferenceLayer/kernel/read*'
_output_shapes
:         @*
transpose_a( *
transpose_b(*
T0*(
_class
loc:@inferenceLayer/MatMul
Х
>training/RMSprop/gradients/inferenceLayer/MatMul_grad/MatMul_1MatMuldropout_2/cond/Merge<training/RMSprop/gradients/inferenceLayer/Softmax_grad/mul_1*(
_class
loc:@inferenceLayer/MatMul*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0
Н
>training/RMSprop/gradients/dropout_2/cond/Merge_grad/cond_gradSwitch<training/RMSprop/gradients/inferenceLayer/MatMul_grad/MatMuldropout_2/cond/pred_id*
T0*(
_class
loc:@inferenceLayer/MatMul*:
_output_shapes(
&:         @:         @
╜
!training/RMSprop/gradients/SwitchSwitchdense_2/Sigmoiddropout_2/cond/pred_id*
T0*"
_class
loc:@dense_2/Sigmoid*:
_output_shapes(
&:         @:         @
к
#training/RMSprop/gradients/IdentityIdentity#training/RMSprop/gradients/Switch:1*
T0*"
_class
loc:@dense_2/Sigmoid*'
_output_shapes
:         @
й
"training/RMSprop/gradients/Shape_1Shape#training/RMSprop/gradients/Switch:1*
T0*
out_type0*"
_class
loc:@dense_2/Sigmoid*
_output_shapes
:
╡
&training/RMSprop/gradients/zeros/ConstConst$^training/RMSprop/gradients/Identity*
valueB
 *    *"
_class
loc:@dense_2/Sigmoid*
dtype0*
_output_shapes
: 
▄
 training/RMSprop/gradients/zerosFill"training/RMSprop/gradients/Shape_1&training/RMSprop/gradients/zeros/Const*
T0*

index_type0*"
_class
loc:@dense_2/Sigmoid*'
_output_shapes
:         @
Н
Atraining/RMSprop/gradients/dropout_2/cond/Switch_1_grad/cond_gradMerge>training/RMSprop/gradients/dropout_2/cond/Merge_grad/cond_grad training/RMSprop/gradients/zeros*
T0*"
_class
loc:@dense_2/Sigmoid*
N*)
_output_shapes
:         @: 
═
Btraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/ShapeShapedropout_2/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
_output_shapes
:
╨
Dtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1Shapedropout_2/cond/dropout/Cast*
T0*
out_type0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
_output_shapes
:
у
Rtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/ShapeDtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*2
_output_shapes 
:         :         
Й
@training/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/MulMul@training/RMSprop/gradients/dropout_2/cond/Merge_grad/cond_grad:1dropout_2/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*'
_output_shapes
:         @
╬
@training/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/SumSum@training/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/MulRtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
╞
Dtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/ReshapeReshape@training/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/SumBtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*'
_output_shapes
:         @
К
Btraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Mul_1Muldropout_2/cond/dropout/mul@training/RMSprop/gradients/dropout_2/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*'
_output_shapes
:         @*
T0
╘
Btraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Sum_1SumBtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Mul_1Ttraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
╠
Ftraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Reshape_1ReshapeBtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Sum_1Dtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1*'
_output_shapes
:         @*
T0*
Tshape0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1
┴
@training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/ShapeShapedropout_2/cond/mul*
T0*
out_type0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
:
┤
Btraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_2/cond/dropout/mul*
dtype0*
_output_shapes
: 
█
Ptraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs@training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/ShapeBtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*2
_output_shapes 
:         :         
М
>training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/MulMulDtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Reshapedropout_2/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*'
_output_shapes
:         @
╞
>training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/SumSum>training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/MulPtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul
╛
Btraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/ReshapeReshape>training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Sum@training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@dropout_2/cond/dropout/mul*'
_output_shapes
:         @
В
@training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Muldropout_2/cond/mulDtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*'
_output_shapes
:         @
╠
@training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Sum_1Sum@training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Rtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
│
Dtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Reshape_1Reshape@training/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Sum_1Btraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
: 
║
8training/RMSprop/gradients/dropout_2/cond/mul_grad/ShapeShapedropout_2/cond/mul/Switch:1*
_output_shapes
:*
T0*
out_type0*%
_class
loc:@dropout_2/cond/mul
д
:training/RMSprop/gradients/dropout_2/cond/mul_grad/Shape_1Const*
valueB *%
_class
loc:@dropout_2/cond/mul*
dtype0*
_output_shapes
: 
╗
Htraining/RMSprop/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/RMSprop/gradients/dropout_2/cond/mul_grad/Shape:training/RMSprop/gradients/dropout_2/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_2/cond/mul*2
_output_shapes 
:         :         
Ё
6training/RMSprop/gradients/dropout_2/cond/mul_grad/MulMulBtraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Reshapedropout_2/cond/mul/y*
T0*%
_class
loc:@dropout_2/cond/mul*'
_output_shapes
:         @
ж
6training/RMSprop/gradients/dropout_2/cond/mul_grad/SumSum6training/RMSprop/gradients/dropout_2/cond/mul_grad/MulHtraining/RMSprop/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_2/cond/mul
Ю
:training/RMSprop/gradients/dropout_2/cond/mul_grad/ReshapeReshape6training/RMSprop/gradients/dropout_2/cond/mul_grad/Sum8training/RMSprop/gradients/dropout_2/cond/mul_grad/Shape*'
_output_shapes
:         @*
T0*
Tshape0*%
_class
loc:@dropout_2/cond/mul
∙
8training/RMSprop/gradients/dropout_2/cond/mul_grad/Mul_1Muldropout_2/cond/mul/Switch:1Btraining/RMSprop/gradients/dropout_2/cond/dropout/mul_grad/Reshape*'
_output_shapes
:         @*
T0*%
_class
loc:@dropout_2/cond/mul
м
8training/RMSprop/gradients/dropout_2/cond/mul_grad/Sum_1Sum8training/RMSprop/gradients/dropout_2/cond/mul_grad/Mul_1Jtraining/RMSprop/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs:1*
T0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
У
<training/RMSprop/gradients/dropout_2/cond/mul_grad/Reshape_1Reshape8training/RMSprop/gradients/dropout_2/cond/mul_grad/Sum_1:training/RMSprop/gradients/dropout_2/cond/mul_grad/Shape_1*
T0*
Tshape0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
: 
┐
#training/RMSprop/gradients/Switch_1Switchdense_2/Sigmoiddropout_2/cond/pred_id*:
_output_shapes(
&:         @:         @*
T0*"
_class
loc:@dense_2/Sigmoid
м
%training/RMSprop/gradients/Identity_1Identity#training/RMSprop/gradients/Switch_1*
T0*"
_class
loc:@dense_2/Sigmoid*'
_output_shapes
:         @
й
"training/RMSprop/gradients/Shape_2Shape#training/RMSprop/gradients/Switch_1*
T0*
out_type0*"
_class
loc:@dense_2/Sigmoid*
_output_shapes
:
╣
(training/RMSprop/gradients/zeros_1/ConstConst&^training/RMSprop/gradients/Identity_1*
valueB
 *    *"
_class
loc:@dense_2/Sigmoid*
dtype0*
_output_shapes
: 
р
"training/RMSprop/gradients/zeros_1Fill"training/RMSprop/gradients/Shape_2(training/RMSprop/gradients/zeros_1/Const*
T0*

index_type0*"
_class
loc:@dense_2/Sigmoid*'
_output_shapes
:         @
Н
Ctraining/RMSprop/gradients/dropout_2/cond/mul/Switch_grad/cond_gradMerge"training/RMSprop/gradients/zeros_1:training/RMSprop/gradients/dropout_2/cond/mul_grad/Reshape*
T0*"
_class
loc:@dense_2/Sigmoid*
N*)
_output_shapes
:         @: 
Р
!training/RMSprop/gradients/AddN_1AddNAtraining/RMSprop/gradients/dropout_2/cond/Switch_1_grad/cond_gradCtraining/RMSprop/gradients/dropout_2/cond/mul/Switch_grad/cond_grad*
T0*"
_class
loc:@dense_2/Sigmoid*
N*'
_output_shapes
:         @
╘
;training/RMSprop/gradients/dense_2/Sigmoid_grad/SigmoidGradSigmoidGraddense_2/Sigmoid!training/RMSprop/gradients/AddN_1*
T0*"
_class
loc:@dense_2/Sigmoid*'
_output_shapes
:         @
ч
;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad;training/RMSprop/gradients/dense_2/Sigmoid_grad/SigmoidGrad*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
:@
М
5training/RMSprop/gradients/dense_2/MatMul_grad/MatMulMatMul;training/RMSprop/gradients/dense_2/Sigmoid_grad/SigmoidGraddense_2/kernel/read*'
_output_shapes
:          *
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul
Ж
7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge;training/RMSprop/gradients/dense_2/Sigmoid_grad/SigmoidGrad*
_output_shapes

: @*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul
 
>training/RMSprop/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch5training/RMSprop/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*!
_class
loc:@dense_2/MatMul*:
_output_shapes(
&:          :          
╣
#training/RMSprop/gradients/Switch_2Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:          :          
л
%training/RMSprop/gradients/Identity_2Identity%training/RMSprop/gradients/Switch_2:1*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:          
и
"training/RMSprop/gradients/Shape_3Shape%training/RMSprop/gradients/Switch_2:1*
T0*
out_type0*
_class
loc:@dense_1/Relu*
_output_shapes
:
╢
(training/RMSprop/gradients/zeros_2/ConstConst&^training/RMSprop/gradients/Identity_2*
valueB
 *    *
_class
loc:@dense_1/Relu*
dtype0*
_output_shapes
: 
▌
"training/RMSprop/gradients/zeros_2Fill"training/RMSprop/gradients/Shape_3(training/RMSprop/gradients/zeros_2/Const*
T0*

index_type0*
_class
loc:@dense_1/Relu*'
_output_shapes
:          
М
Atraining/RMSprop/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge>training/RMSprop/gradients/dropout_1/cond/Merge_grad/cond_grad"training/RMSprop/gradients/zeros_2*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:          : 
═
Btraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:
╨
Dtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
T0*
out_type0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:
у
Rtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeDtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*2
_output_shapes 
:         :         
Й
@training/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul@training/RMSprop/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*'
_output_shapes
:          *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
╬
@training/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum@training/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/MulRtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
╞
Dtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape@training/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/SumBtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:          
К
Btraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul@training/RMSprop/gradients/dropout_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:          
╘
Btraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1SumBtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Ttraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
╠
Ftraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1ReshapeBtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Dtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:          
┴
@training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/mul*
T0*
out_type0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:
┤
Btraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_1/cond/dropout/mul*
dtype0*
_output_shapes
: 
█
Ptraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs@training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/ShapeBtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*2
_output_shapes 
:         :         
М
>training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/MulMulDtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:          
╞
>training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/SumSum>training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/MulPtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:
╛
Btraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape>training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Sum@training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Shape*'
_output_shapes
:          *
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul
В
@training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/mulDtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:          
╠
@training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum@training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Rtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
│
Dtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape@training/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Btraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
: 
║
8training/RMSprop/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
T0*
out_type0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:
д
:training/RMSprop/gradients/dropout_1/cond/mul_grad/Shape_1Const*
_output_shapes
: *
valueB *%
_class
loc:@dropout_1/cond/mul*
dtype0
╗
Htraining/RMSprop/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/RMSprop/gradients/dropout_1/cond/mul_grad/Shape:training/RMSprop/gradients/dropout_1/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_1/cond/mul*2
_output_shapes 
:         :         
Ё
6training/RMSprop/gradients/dropout_1/cond/mul_grad/MulMulBtraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Reshapedropout_1/cond/mul/y*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:          *
T0
ж
6training/RMSprop/gradients/dropout_1/cond/mul_grad/SumSum6training/RMSprop/gradients/dropout_1/cond/mul_grad/MulHtraining/RMSprop/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_1/cond/mul
Ю
:training/RMSprop/gradients/dropout_1/cond/mul_grad/ReshapeReshape6training/RMSprop/gradients/dropout_1/cond/mul_grad/Sum8training/RMSprop/gradients/dropout_1/cond/mul_grad/Shape*'
_output_shapes
:          *
T0*
Tshape0*%
_class
loc:@dropout_1/cond/mul
∙
8training/RMSprop/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1Btraining/RMSprop/gradients/dropout_1/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:          
м
8training/RMSprop/gradients/dropout_1/cond/mul_grad/Sum_1Sum8training/RMSprop/gradients/dropout_1/cond/mul_grad/Mul_1Jtraining/RMSprop/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
У
<training/RMSprop/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape8training/RMSprop/gradients/dropout_1/cond/mul_grad/Sum_1:training/RMSprop/gradients/dropout_1/cond/mul_grad/Shape_1*
Tshape0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
: *
T0
╣
#training/RMSprop/gradients/Switch_3Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:          :          
й
%training/RMSprop/gradients/Identity_3Identity#training/RMSprop/gradients/Switch_3*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:          
ж
"training/RMSprop/gradients/Shape_4Shape#training/RMSprop/gradients/Switch_3*
_output_shapes
:*
T0*
out_type0*
_class
loc:@dense_1/Relu
╢
(training/RMSprop/gradients/zeros_3/ConstConst&^training/RMSprop/gradients/Identity_3*
valueB
 *    *
_class
loc:@dense_1/Relu*
dtype0*
_output_shapes
: 
▌
"training/RMSprop/gradients/zeros_3Fill"training/RMSprop/gradients/Shape_4(training/RMSprop/gradients/zeros_3/Const*
T0*

index_type0*
_class
loc:@dense_1/Relu*'
_output_shapes
:          
К
Ctraining/RMSprop/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMerge"training/RMSprop/gradients/zeros_3:training/RMSprop/gradients/dropout_1/cond/mul_grad/Reshape*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:          : *
T0
Н
!training/RMSprop/gradients/AddN_2AddNAtraining/RMSprop/gradients/dropout_1/cond/Switch_1_grad/cond_gradCtraining/RMSprop/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_1/Relu*
N*'
_output_shapes
:          
┼
5training/RMSprop/gradients/dense_1/Relu_grad/ReluGradReluGrad!training/RMSprop/gradients/AddN_2dense_1/Relu*'
_output_shapes
:          *
T0*
_class
loc:@dense_1/Relu
с
;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
Ж
5training/RMSprop/gradients/dense_1/MatMul_grad/MatMulMatMul5training/RMSprop/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul*'
_output_shapes
:         *
transpose_a( 
■
7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1MatMulinputLayer/Reshape5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_1/MatMul*
_output_shapes

: *
transpose_a(*
transpose_b( 
k
training/RMSprop/zerosConst*
_output_shapes

: *
valueB *    *
dtype0
Н
training/RMSprop/Variable
VariableV2*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
▌
 training/RMSprop/Variable/AssignAssigntraining/RMSprop/Variabletraining/RMSprop/zeros*
T0*,
_class"
 loc:@training/RMSprop/Variable*
validate_shape(*
_output_shapes

: *
use_locking(
Ь
training/RMSprop/Variable/readIdentitytraining/RMSprop/Variable*
T0*,
_class"
 loc:@training/RMSprop/Variable*
_output_shapes

: 
e
training/RMSprop/zeros_1Const*
valueB *    *
dtype0*
_output_shapes
: 
З
training/RMSprop/Variable_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
с
"training/RMSprop/Variable_1/AssignAssigntraining/RMSprop/Variable_1training/RMSprop/zeros_1*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_1*
validate_shape(*
_output_shapes
: 
Ю
 training/RMSprop/Variable_1/readIdentitytraining/RMSprop/Variable_1*
T0*.
_class$
" loc:@training/RMSprop/Variable_1*
_output_shapes
: 
y
(training/RMSprop/zeros_2/shape_as_tensorConst*
valueB"    @   *
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
е
training/RMSprop/zeros_2Fill(training/RMSprop/zeros_2/shape_as_tensortraining/RMSprop/zeros_2/Const*
T0*

index_type0*
_output_shapes

: @
П
training/RMSprop/Variable_2
VariableV2*
dtype0*
_output_shapes

: @*
	container *
shape
: @*
shared_name 
х
"training/RMSprop/Variable_2/AssignAssigntraining/RMSprop/Variable_2training/RMSprop/zeros_2*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_2*
validate_shape(*
_output_shapes

: @
в
 training/RMSprop/Variable_2/readIdentitytraining/RMSprop/Variable_2*
T0*.
_class$
" loc:@training/RMSprop/Variable_2*
_output_shapes

: @
e
training/RMSprop/zeros_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
З
training/RMSprop/Variable_3
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
с
"training/RMSprop/Variable_3/AssignAssigntraining/RMSprop/Variable_3training/RMSprop/zeros_3*.
_class$
" loc:@training/RMSprop/Variable_3*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ю
 training/RMSprop/Variable_3/readIdentitytraining/RMSprop/Variable_3*
T0*.
_class$
" loc:@training/RMSprop/Variable_3*
_output_shapes
:@
m
training/RMSprop/zeros_4Const*
valueB@*    *
dtype0*
_output_shapes

:@
П
training/RMSprop/Variable_4
VariableV2*
shape
:@*
shared_name *
dtype0*
_output_shapes

:@*
	container 
х
"training/RMSprop/Variable_4/AssignAssigntraining/RMSprop/Variable_4training/RMSprop/zeros_4*
_output_shapes

:@*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_4*
validate_shape(
в
 training/RMSprop/Variable_4/readIdentitytraining/RMSprop/Variable_4*
T0*.
_class$
" loc:@training/RMSprop/Variable_4*
_output_shapes

:@
e
training/RMSprop/zeros_5Const*
valueB*    *
dtype0*
_output_shapes
:
З
training/RMSprop/Variable_5
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
с
"training/RMSprop/Variable_5/AssignAssigntraining/RMSprop/Variable_5training/RMSprop/zeros_5*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_5*
validate_shape(
Ю
 training/RMSprop/Variable_5/readIdentitytraining/RMSprop/Variable_5*
T0*.
_class$
" loc:@training/RMSprop/Variable_5*
_output_shapes
:
b
 training/RMSprop/AssignAdd/valueConst*
dtype0	*
_output_shapes
: *
value	B	 R
╕
training/RMSprop/AssignAdd	AssignAddRMSprop/iterations training/RMSprop/AssignAdd/value*
use_locking( *
T0	*%
_class
loc:@RMSprop/iterations*
_output_shapes
: 
v
training/RMSprop/mulMulRMSprop/rho/readtraining/RMSprop/Variable/read*
_output_shapes

: *
T0
[
training/RMSprop/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/RMSprop/subSubtraining/RMSprop/sub/xRMSprop/rho/read*
T0*
_output_shapes
: 
Г
training/RMSprop/SquareSquare7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
u
training/RMSprop/mul_1Multraining/RMSprop/subtraining/RMSprop/Square*
_output_shapes

: *
T0
r
training/RMSprop/addAddtraining/RMSprop/multraining/RMSprop/mul_1*
T0*
_output_shapes

: 
╥
training/RMSprop/AssignAssigntraining/RMSprop/Variabletraining/RMSprop/add*,
_class"
 loc:@training/RMSprop/Variable*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
Р
training/RMSprop/mul_2MulRMSprop/lr/read7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
[
training/RMSprop/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
]
training/RMSprop/Const_1Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
К
&training/RMSprop/clip_by_value/MinimumMinimumtraining/RMSprop/addtraining/RMSprop/Const_1*
T0*
_output_shapes

: 
Т
training/RMSprop/clip_by_valueMaximum&training/RMSprop/clip_by_value/Minimumtraining/RMSprop/Const*
T0*
_output_shapes

: 
f
training/RMSprop/SqrtSqrttraining/RMSprop/clip_by_value*
T0*
_output_shapes

: 
]
training/RMSprop/add_1/yConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
w
training/RMSprop/add_1Addtraining/RMSprop/Sqrttraining/RMSprop/add_1/y*
_output_shapes

: *
T0
|
training/RMSprop/truedivRealDivtraining/RMSprop/mul_2training/RMSprop/add_1*
T0*
_output_shapes

: 
u
training/RMSprop/sub_1Subdense_1/kernel/readtraining/RMSprop/truediv*
_output_shapes

: *
T0
└
training/RMSprop/Assign_1Assigndense_1/kerneltraining/RMSprop/sub_1*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
v
training/RMSprop/mul_3MulRMSprop/rho/read training/RMSprop/Variable_1/read*
T0*
_output_shapes
: 
]
training/RMSprop/sub_2/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
j
training/RMSprop/sub_2Subtraining/RMSprop/sub_2/xRMSprop/rho/read*
T0*
_output_shapes
: 
Е
training/RMSprop/Square_1Square;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
u
training/RMSprop/mul_4Multraining/RMSprop/sub_2training/RMSprop/Square_1*
T0*
_output_shapes
: 
r
training/RMSprop/add_2Addtraining/RMSprop/mul_3training/RMSprop/mul_4*
T0*
_output_shapes
: 
╓
training/RMSprop/Assign_2Assigntraining/RMSprop/Variable_1training/RMSprop/add_2*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_1*
validate_shape(*
_output_shapes
: 
Р
training/RMSprop/mul_5MulRMSprop/lr/read;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
]
training/RMSprop/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_3Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
К
(training/RMSprop/clip_by_value_1/MinimumMinimumtraining/RMSprop/add_2training/RMSprop/Const_3*
T0*
_output_shapes
: 
Ф
 training/RMSprop/clip_by_value_1Maximum(training/RMSprop/clip_by_value_1/Minimumtraining/RMSprop/Const_2*
_output_shapes
: *
T0
f
training/RMSprop/Sqrt_1Sqrt training/RMSprop/clip_by_value_1*
_output_shapes
: *
T0
]
training/RMSprop/add_3/yConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
u
training/RMSprop/add_3Addtraining/RMSprop/Sqrt_1training/RMSprop/add_3/y*
T0*
_output_shapes
: 
z
training/RMSprop/truediv_1RealDivtraining/RMSprop/mul_5training/RMSprop/add_3*
T0*
_output_shapes
: 
q
training/RMSprop/sub_3Subdense_1/bias/readtraining/RMSprop/truediv_1*
_output_shapes
: *
T0
╕
training/RMSprop/Assign_3Assigndense_1/biastraining/RMSprop/sub_3*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
z
training/RMSprop/mul_6MulRMSprop/rho/read training/RMSprop/Variable_2/read*
_output_shapes

: @*
T0
]
training/RMSprop/sub_4/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
j
training/RMSprop/sub_4Subtraining/RMSprop/sub_4/xRMSprop/rho/read*
T0*
_output_shapes
: 
Е
training/RMSprop/Square_2Square7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

: @*
T0
y
training/RMSprop/mul_7Multraining/RMSprop/sub_4training/RMSprop/Square_2*
_output_shapes

: @*
T0
v
training/RMSprop/add_4Addtraining/RMSprop/mul_6training/RMSprop/mul_7*
_output_shapes

: @*
T0
┌
training/RMSprop/Assign_4Assigntraining/RMSprop/Variable_2training/RMSprop/add_4*
T0*.
_class$
" loc:@training/RMSprop/Variable_2*
validate_shape(*
_output_shapes

: @*
use_locking(
Р
training/RMSprop/mul_8MulRMSprop/lr/read7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

: @
]
training/RMSprop/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_5Const*
dtype0*
_output_shapes
: *
valueB
 *  А
О
(training/RMSprop/clip_by_value_2/MinimumMinimumtraining/RMSprop/add_4training/RMSprop/Const_5*
T0*
_output_shapes

: @
Ш
 training/RMSprop/clip_by_value_2Maximum(training/RMSprop/clip_by_value_2/Minimumtraining/RMSprop/Const_4*
T0*
_output_shapes

: @
j
training/RMSprop/Sqrt_2Sqrt training/RMSprop/clip_by_value_2*
_output_shapes

: @*
T0
]
training/RMSprop/add_5/yConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
y
training/RMSprop/add_5Addtraining/RMSprop/Sqrt_2training/RMSprop/add_5/y*
_output_shapes

: @*
T0
~
training/RMSprop/truediv_2RealDivtraining/RMSprop/mul_8training/RMSprop/add_5*
_output_shapes

: @*
T0
w
training/RMSprop/sub_5Subdense_2/kernel/readtraining/RMSprop/truediv_2*
T0*
_output_shapes

: @
└
training/RMSprop/Assign_5Assigndense_2/kerneltraining/RMSprop/sub_5*
_output_shapes

: @*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
v
training/RMSprop/mul_9MulRMSprop/rho/read training/RMSprop/Variable_3/read*
T0*
_output_shapes
:@
]
training/RMSprop/sub_6/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
j
training/RMSprop/sub_6Subtraining/RMSprop/sub_6/xRMSprop/rho/read*
T0*
_output_shapes
: 
Е
training/RMSprop/Square_3Square;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
v
training/RMSprop/mul_10Multraining/RMSprop/sub_6training/RMSprop/Square_3*
T0*
_output_shapes
:@
s
training/RMSprop/add_6Addtraining/RMSprop/mul_9training/RMSprop/mul_10*
T0*
_output_shapes
:@
╓
training/RMSprop/Assign_6Assigntraining/RMSprop/Variable_3training/RMSprop/add_6*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_3*
validate_shape(*
_output_shapes
:@
С
training/RMSprop/mul_11MulRMSprop/lr/read;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
]
training/RMSprop/Const_6Const*
_output_shapes
: *
valueB
 *    *
dtype0
]
training/RMSprop/Const_7Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
К
(training/RMSprop/clip_by_value_3/MinimumMinimumtraining/RMSprop/add_6training/RMSprop/Const_7*
T0*
_output_shapes
:@
Ф
 training/RMSprop/clip_by_value_3Maximum(training/RMSprop/clip_by_value_3/Minimumtraining/RMSprop/Const_6*
T0*
_output_shapes
:@
f
training/RMSprop/Sqrt_3Sqrt training/RMSprop/clip_by_value_3*
_output_shapes
:@*
T0
]
training/RMSprop/add_7/yConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
u
training/RMSprop/add_7Addtraining/RMSprop/Sqrt_3training/RMSprop/add_7/y*
T0*
_output_shapes
:@
{
training/RMSprop/truediv_3RealDivtraining/RMSprop/mul_11training/RMSprop/add_7*
T0*
_output_shapes
:@
q
training/RMSprop/sub_7Subdense_2/bias/readtraining/RMSprop/truediv_3*
T0*
_output_shapes
:@
╕
training/RMSprop/Assign_7Assigndense_2/biastraining/RMSprop/sub_7*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
{
training/RMSprop/mul_12MulRMSprop/rho/read training/RMSprop/Variable_4/read*
_output_shapes

:@*
T0
]
training/RMSprop/sub_8/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
j
training/RMSprop/sub_8Subtraining/RMSprop/sub_8/xRMSprop/rho/read*
_output_shapes
: *
T0
М
training/RMSprop/Square_4Square>training/RMSprop/gradients/inferenceLayer/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
z
training/RMSprop/mul_13Multraining/RMSprop/sub_8training/RMSprop/Square_4*
T0*
_output_shapes

:@
x
training/RMSprop/add_8Addtraining/RMSprop/mul_12training/RMSprop/mul_13*
_output_shapes

:@*
T0
┌
training/RMSprop/Assign_8Assigntraining/RMSprop/Variable_4training/RMSprop/add_8*
_output_shapes

:@*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_4*
validate_shape(
Ш
training/RMSprop/mul_14MulRMSprop/lr/read>training/RMSprop/gradients/inferenceLayer/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
]
training/RMSprop/Const_8Const*
_output_shapes
: *
valueB
 *    *
dtype0
]
training/RMSprop/Const_9Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
О
(training/RMSprop/clip_by_value_4/MinimumMinimumtraining/RMSprop/add_8training/RMSprop/Const_9*
T0*
_output_shapes

:@
Ш
 training/RMSprop/clip_by_value_4Maximum(training/RMSprop/clip_by_value_4/Minimumtraining/RMSprop/Const_8*
T0*
_output_shapes

:@
j
training/RMSprop/Sqrt_4Sqrt training/RMSprop/clip_by_value_4*
T0*
_output_shapes

:@
]
training/RMSprop/add_9/yConst*
dtype0*
_output_shapes
: *
valueB
 *Х┐╓3
y
training/RMSprop/add_9Addtraining/RMSprop/Sqrt_4training/RMSprop/add_9/y*
T0*
_output_shapes

:@

training/RMSprop/truediv_4RealDivtraining/RMSprop/mul_14training/RMSprop/add_9*
T0*
_output_shapes

:@
~
training/RMSprop/sub_9SubinferenceLayer/kernel/readtraining/RMSprop/truediv_4*
T0*
_output_shapes

:@
╬
training/RMSprop/Assign_9AssigninferenceLayer/kerneltraining/RMSprop/sub_9*
use_locking(*
T0*(
_class
loc:@inferenceLayer/kernel*
validate_shape(*
_output_shapes

:@
w
training/RMSprop/mul_15MulRMSprop/rho/read training/RMSprop/Variable_5/read*
_output_shapes
:*
T0
^
training/RMSprop/sub_10/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
l
training/RMSprop/sub_10Subtraining/RMSprop/sub_10/xRMSprop/rho/read*
T0*
_output_shapes
: 
М
training/RMSprop/Square_5SquareBtraining/RMSprop/gradients/inferenceLayer/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
w
training/RMSprop/mul_16Multraining/RMSprop/sub_10training/RMSprop/Square_5*
T0*
_output_shapes
:
u
training/RMSprop/add_10Addtraining/RMSprop/mul_15training/RMSprop/mul_16*
_output_shapes
:*
T0
╪
training/RMSprop/Assign_10Assigntraining/RMSprop/Variable_5training/RMSprop/add_10*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_5*
validate_shape(
Ш
training/RMSprop/mul_17MulRMSprop/lr/readBtraining/RMSprop/gradients/inferenceLayer/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
^
training/RMSprop/Const_10Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_11Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
М
(training/RMSprop/clip_by_value_5/MinimumMinimumtraining/RMSprop/add_10training/RMSprop/Const_11*
T0*
_output_shapes
:
Х
 training/RMSprop/clip_by_value_5Maximum(training/RMSprop/clip_by_value_5/Minimumtraining/RMSprop/Const_10*
T0*
_output_shapes
:
f
training/RMSprop/Sqrt_5Sqrt training/RMSprop/clip_by_value_5*
T0*
_output_shapes
:
^
training/RMSprop/add_11/yConst*
dtype0*
_output_shapes
: *
valueB
 *Х┐╓3
w
training/RMSprop/add_11Addtraining/RMSprop/Sqrt_5training/RMSprop/add_11/y*
_output_shapes
:*
T0
|
training/RMSprop/truediv_5RealDivtraining/RMSprop/mul_17training/RMSprop/add_11*
_output_shapes
:*
T0
y
training/RMSprop/sub_11SubinferenceLayer/bias/readtraining/RMSprop/truediv_5*
T0*
_output_shapes
:
╚
training/RMSprop/Assign_11AssigninferenceLayer/biastraining/RMSprop/sub_11*&
_class
loc:@inferenceLayer/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ж
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/RMSprop/Assign^training/RMSprop/AssignAdd^training/RMSprop/Assign_1^training/RMSprop/Assign_10^training/RMSprop/Assign_11^training/RMSprop/Assign_2^training/RMSprop/Assign_3^training/RMSprop/Assign_4^training/RMSprop/Assign_5^training/RMSprop/Assign_6^training/RMSprop/Assign_7^training/RMSprop/Assign_8^training/RMSprop/Assign_9
0

group_depsNoOp	^loss/mul^metrics/acc/Mean
Ж
IsVariableInitializedIsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Д
IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
И
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
Д
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
Ц
IsVariableInitialized_4IsVariableInitializedinferenceLayer/kernel*(
_class
loc:@inferenceLayer/kernel*
dtype0*
_output_shapes
: 
Т
IsVariableInitialized_5IsVariableInitializedinferenceLayer/bias*&
_class
loc:@inferenceLayer/bias*
dtype0*
_output_shapes
: 
А
IsVariableInitialized_6IsVariableInitialized
RMSprop/lr*
_class
loc:@RMSprop/lr*
dtype0*
_output_shapes
: 
В
IsVariableInitialized_7IsVariableInitializedRMSprop/rho*
_class
loc:@RMSprop/rho*
dtype0*
_output_shapes
: 
Ж
IsVariableInitialized_8IsVariableInitializedRMSprop/decay* 
_class
loc:@RMSprop/decay*
dtype0*
_output_shapes
: 
Р
IsVariableInitialized_9IsVariableInitializedRMSprop/iterations*%
_class
loc:@RMSprop/iterations*
dtype0	*
_output_shapes
: 
Я
IsVariableInitialized_10IsVariableInitializedtraining/RMSprop/Variable*,
_class"
 loc:@training/RMSprop/Variable*
dtype0*
_output_shapes
: 
г
IsVariableInitialized_11IsVariableInitializedtraining/RMSprop/Variable_1*.
_class$
" loc:@training/RMSprop/Variable_1*
dtype0*
_output_shapes
: 
г
IsVariableInitialized_12IsVariableInitializedtraining/RMSprop/Variable_2*
dtype0*
_output_shapes
: *.
_class$
" loc:@training/RMSprop/Variable_2
г
IsVariableInitialized_13IsVariableInitializedtraining/RMSprop/Variable_3*
dtype0*
_output_shapes
: *.
_class$
" loc:@training/RMSprop/Variable_3
г
IsVariableInitialized_14IsVariableInitializedtraining/RMSprop/Variable_4*
dtype0*
_output_shapes
: *.
_class$
" loc:@training/RMSprop/Variable_4
г
IsVariableInitialized_15IsVariableInitializedtraining/RMSprop/Variable_5*.
_class$
" loc:@training/RMSprop/Variable_5*
dtype0*
_output_shapes
: 
▄
initNoOp^RMSprop/decay/Assign^RMSprop/iterations/Assign^RMSprop/lr/Assign^RMSprop/rho/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^inferenceLayer/bias/Assign^inferenceLayer/kernel/Assign!^training/RMSprop/Variable/Assign#^training/RMSprop/Variable_1/Assign#^training/RMSprop/Variable_2/Assign#^training/RMSprop/Variable_3/Assign#^training/RMSprop/Variable_4/Assign#^training/RMSprop/Variable_5/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0
Д
save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_7bae2a76ecc04fa3b1b8e875da716c5c/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
┴
save/SaveV2/tensor_namesConst"/device:CPU:0*х
value█B╪BRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBinferenceLayer/biasBinferenceLayer/kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5*
dtype0*
_output_shapes
:
Т
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*3
value*B(B B B B B B B B B B B B B B B B 
т
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesRMSprop/decayRMSprop/iterations
RMSprop/lrRMSprop/rhodense_1/biasdense_1/kerneldense_2/biasdense_2/kernelinferenceLayer/biasinferenceLayer/kerneltraining/RMSprop/Variabletraining/RMSprop/Variable_1training/RMSprop/Variable_2training/RMSprop/Variable_3training/RMSprop/Variable_4training/RMSprop/Variable_5"/device:CPU:0*
dtypes
2	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
м
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
─
save/RestoreV2/tensor_namesConst"/device:CPU:0*х
value█B╪BRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBinferenceLayer/biasBinferenceLayer/kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5*
dtype0*
_output_shapes
:
Х
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ъ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*T
_output_shapesB
@::::::::::::::::
а
save/AssignAssignRMSprop/decaysave/RestoreV2*
T0* 
_class
loc:@RMSprop/decay*
validate_shape(*
_output_shapes
: *
use_locking(
о
save/Assign_1AssignRMSprop/iterationssave/RestoreV2:1*
T0	*%
_class
loc:@RMSprop/iterations*
validate_shape(*
_output_shapes
: *
use_locking(
Ю
save/Assign_2Assign
RMSprop/lrsave/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@RMSprop/lr*
validate_shape(
а
save/Assign_3AssignRMSprop/rhosave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@RMSprop/rho*
validate_shape(*
_output_shapes
: 
ж
save/Assign_4Assigndense_1/biassave/RestoreV2:4*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
о
save/Assign_5Assigndense_1/kernelsave/RestoreV2:5*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

: 
ж
save/Assign_6Assigndense_2/biassave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:@
о
save/Assign_7Assigndense_2/kernelsave/RestoreV2:7*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: @
┤
save/Assign_8AssigninferenceLayer/biassave/RestoreV2:8*
use_locking(*
T0*&
_class
loc:@inferenceLayer/bias*
validate_shape(*
_output_shapes
:
╝
save/Assign_9AssigninferenceLayer/kernelsave/RestoreV2:9*
T0*(
_class
loc:@inferenceLayer/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
╞
save/Assign_10Assigntraining/RMSprop/Variablesave/RestoreV2:10*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*,
_class"
 loc:@training/RMSprop/Variable
╞
save/Assign_11Assigntraining/RMSprop/Variable_1save/RestoreV2:11*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_1*
validate_shape(*
_output_shapes
: 
╩
save/Assign_12Assigntraining/RMSprop/Variable_2save/RestoreV2:12*
validate_shape(*
_output_shapes

: @*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_2
╞
save/Assign_13Assigntraining/RMSprop/Variable_3save/RestoreV2:13*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_3*
validate_shape(*
_output_shapes
:@
╩
save/Assign_14Assigntraining/RMSprop/Variable_4save/RestoreV2:14*.
_class$
" loc:@training/RMSprop/Variable_4*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
╞
save/Assign_15Assigntraining/RMSprop/Variable_5save/RestoreV2:15*
use_locking(*
T0*.
_class$
" loc:@training/RMSprop/Variable_5*
validate_shape(*
_output_shapes
:
Ю
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"&<
save/Const:0save/Identity:0save/restore_all (5 @F8"╪
cond_context╟─
д
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *╨
dense_1/Relu:0
dropout_1/cond/dropout/Cast:0
%dropout_1/cond/dropout/GreaterEqual:0
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/mul:0
dropout_1/cond/dropout/mul_1:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/dropout/rate:0
dropout_1/cond/dropout/sub/x:0
dropout_1/cond/dropout/sub:0
"dropout_1/cond/dropout/truediv/x:0
 dropout_1/cond/dropout/truediv:0
dropout_1/cond/mul/Switch:1
dropout_1/cond/mul/y:0
dropout_1/cond/mul:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0-
dense_1/Relu:0dropout_1/cond/mul/Switch:1
▓
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*▐
dense_1/Relu:0
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0+
dense_1/Relu:0dropout_1/cond/Switch_1:0
к
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *╓
dense_2/Sigmoid:0
dropout_2/cond/dropout/Cast:0
%dropout_2/cond/dropout/GreaterEqual:0
dropout_2/cond/dropout/Shape:0
dropout_2/cond/dropout/mul:0
dropout_2/cond/dropout/mul_1:0
5dropout_2/cond/dropout/random_uniform/RandomUniform:0
+dropout_2/cond/dropout/random_uniform/max:0
+dropout_2/cond/dropout/random_uniform/min:0
+dropout_2/cond/dropout/random_uniform/mul:0
+dropout_2/cond/dropout/random_uniform/sub:0
'dropout_2/cond/dropout/random_uniform:0
dropout_2/cond/dropout/rate:0
dropout_2/cond/dropout/sub/x:0
dropout_2/cond/dropout/sub:0
"dropout_2/cond/dropout/truediv/x:0
 dropout_2/cond/dropout/truediv:0
dropout_2/cond/mul/Switch:1
dropout_2/cond/mul/y:0
dropout_2/cond/mul:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_t:00
dense_2/Sigmoid:0dropout_2/cond/mul/Switch:14
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0
╕
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*ф
dense_2/Sigmoid:0
dropout_2/cond/Switch_1:0
dropout_2/cond/Switch_1:1
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:0.
dense_2/Sigmoid:0dropout_2/cond/Switch_1:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0"ў
	variablesщц
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
x
inferenceLayer/kernel:0inferenceLayer/kernel/AssigninferenceLayer/kernel/read:02inferenceLayer/random_uniform:08
i
inferenceLayer/bias:0inferenceLayer/bias/AssigninferenceLayer/bias/read:02inferenceLayer/Const:08
R
RMSprop/lr:0RMSprop/lr/AssignRMSprop/lr/read:02RMSprop/lr/initial_value:08
V
RMSprop/rho:0RMSprop/rho/AssignRMSprop/rho/read:02RMSprop/rho/initial_value:08
^
RMSprop/decay:0RMSprop/decay/AssignRMSprop/decay/read:02RMSprop/decay/initial_value:08
r
RMSprop/iterations:0RMSprop/iterations/AssignRMSprop/iterations/read:02"RMSprop/iterations/initial_value:08
}
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign training/RMSprop/Variable/read:02training/RMSprop/zeros:08
Е
training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign"training/RMSprop/Variable_1/read:02training/RMSprop/zeros_1:08
Е
training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign"training/RMSprop/Variable_2/read:02training/RMSprop/zeros_2:08
Е
training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign"training/RMSprop/Variable_3/read:02training/RMSprop/zeros_3:08
Е
training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign"training/RMSprop/Variable_4/read:02training/RMSprop/zeros_4:08
Е
training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign"training/RMSprop/Variable_5/read:02training/RMSprop/zeros_5:08"Б
trainable_variablesщц
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
x
inferenceLayer/kernel:0inferenceLayer/kernel/AssigninferenceLayer/kernel/read:02inferenceLayer/random_uniform:08
i
inferenceLayer/bias:0inferenceLayer/bias/AssigninferenceLayer/bias/read:02inferenceLayer/Const:08
R
RMSprop/lr:0RMSprop/lr/AssignRMSprop/lr/read:02RMSprop/lr/initial_value:08
V
RMSprop/rho:0RMSprop/rho/AssignRMSprop/rho/read:02RMSprop/rho/initial_value:08
^
RMSprop/decay:0RMSprop/decay/AssignRMSprop/decay/read:02RMSprop/decay/initial_value:08
r
RMSprop/iterations:0RMSprop/iterations/AssignRMSprop/iterations/read:02"RMSprop/iterations/initial_value:08
}
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign training/RMSprop/Variable/read:02training/RMSprop/zeros:08
Е
training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign"training/RMSprop/Variable_1/read:02training/RMSprop/zeros_1:08
Е
training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign"training/RMSprop/Variable_2/read:02training/RMSprop/zeros_2:08
Е
training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign"training/RMSprop/Variable_3/read:02training/RMSprop/zeros_3:08
Е
training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign"training/RMSprop/Variable_4/read:02training/RMSprop/zeros_4:08
Е
training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign"training/RMSprop/Variable_5/read:02training/RMSprop/zeros_5:08