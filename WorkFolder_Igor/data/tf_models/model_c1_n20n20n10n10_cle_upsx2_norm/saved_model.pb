да
Ъ
.
Abs
x"T
y"T"
Ttype:

2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8§Г
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:
*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:
*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:

*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:
*
dtype0
v
y_pred/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namey_pred/kernel
o
!y_pred/kernel/Read/ReadVariableOpReadVariableOpy_pred/kernel*
_output_shapes

:
*
dtype0
n
y_pred/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namey_pred/bias
g
y_pred/bias/Read/ReadVariableOpReadVariableOpy_pred/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:

*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:
*
dtype0

Adam/y_pred/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/y_pred/kernel/m
}
(Adam/y_pred/kernel/m/Read/ReadVariableOpReadVariableOpAdam/y_pred/kernel/m*
_output_shapes

:
*
dtype0
|
Adam/y_pred/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/y_pred/bias/m
u
&Adam/y_pred/bias/m/Read/ReadVariableOpReadVariableOpAdam/y_pred/bias/m*
_output_shapes
:*
dtype0

Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:

*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:
*
dtype0

Adam/y_pred/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/y_pred/kernel/v
}
(Adam/y_pred/kernel/v/Read/ReadVariableOpReadVariableOpAdam/y_pred/kernel/v*
_output_shapes

:
*
dtype0
|
Adam/y_pred/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/y_pred/bias/v
u
&Adam/y_pred/bias/v/Read/ReadVariableOpReadVariableOpAdam/y_pred/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
М6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ї5
valueэ5Bъ5 Bу5
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
є
*iter

+beta_1

,beta_2
	-decay
.learning_ratemXmYmZm[m\m]m^m_$m`%mavbvcvdvevfvgvhvi$vj%vk
F
0
1
2
3
4
5
6
7
$8
%9
F
0
1
2
3
4
5
6
7
$8
%9
 
­

/layers
trainable_variables
0layer_regularization_losses
	variables
1layer_metrics
2non_trainable_variables
	regularization_losses
3metrics
 
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

4layers
trainable_variables
5layer_regularization_losses
	variables
6layer_metrics
7non_trainable_variables
regularization_losses
8metrics
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

9layers
trainable_variables
:layer_regularization_losses
	variables
;layer_metrics
<non_trainable_variables
regularization_losses
=metrics
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

>layers
trainable_variables
?layer_regularization_losses
	variables
@layer_metrics
Anon_trainable_variables
regularization_losses
Bmetrics
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

Clayers
 trainable_variables
Dlayer_regularization_losses
!	variables
Elayer_metrics
Fnon_trainable_variables
"regularization_losses
Gmetrics
YW
VARIABLE_VALUEy_pred/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEy_pred/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
­

Hlayers
&trainable_variables
Ilayer_regularization_losses
'	variables
Jlayer_metrics
Knon_trainable_variables
(regularization_losses
Lmetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
#
0
1
2
3
4
 
 
 

M0
N1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ototal
	Pcount
Q	variables
R	keras_api
D
	Stotal
	Tcount
U
_fn_kwargs
V	variables
W	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

O0
P1

Q	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

S0
T1

V	variables
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/y_pred/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/y_pred/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/y_pred/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/y_pred/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_dense_4_inputPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
р
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_4_inputdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasy_pred/kernely_pred/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_417783
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ћ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp!y_pred/kernel/Read/ReadVariableOpy_pred/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp(Adam/y_pred/kernel/m/Read/ReadVariableOp&Adam/y_pred/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp(Adam/y_pred/kernel/v/Read/ReadVariableOp&Adam/y_pred/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_418309
ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasy_pred/kernely_pred/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/y_pred/kernel/mAdam/y_pred/bias/mAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vAdam/y_pred/kernel/vAdam/y_pred/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_418436ђ


ѓ
B__inference_y_pred_layer_call_and_return_conditional_losses_417329

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
э

'__inference_y_pred_layer_call_fn_418125

inputs
unknown:

	unknown_0:
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_y_pred_layer_call_and_return_conditional_losses_4173292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
я

(__inference_dense_4_layer_call_fn_418045

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_4172292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

є
C__inference_dense_6_layer_call_and_return_conditional_losses_417279

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е

ђ
-__inference_sequential_2_layer_call_fn_418025

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:

	unknown_5:


	unknown_6:

	unknown_7:

	unknown_8:
identityЂStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ: : : : *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_4175622
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

є
C__inference_dense_4_layer_call_and_return_conditional_losses_417229

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ

љ
-__inference_sequential_2_layer_call_fn_417618
dense_4_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:

	unknown_5:


	unknown_6:

	unknown_7:

	unknown_8:
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ: : : : *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_4175622
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_4_input
џQ
в
__inference__traced_save_418309
file_prefix-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop,
(savev2_y_pred_kernel_read_readvariableop*
&savev2_y_pred_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop3
/savev2_adam_y_pred_kernel_m_read_readvariableop1
-savev2_adam_y_pred_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop3
/savev2_adam_y_pred_kernel_v_read_readvariableop1
-savev2_adam_y_pred_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesи
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЋ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop(savev2_y_pred_kernel_read_readvariableop&savev2_y_pred_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop/savev2_adam_y_pred_kernel_m_read_readvariableop-savev2_adam_y_pred_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop/savev2_adam_y_pred_kernel_v_read_readvariableop-savev2_adam_y_pred_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*
_input_shapes
: :::::
:
:

:
:
:: : : : : : : : : :::::
:
:

:
:
::::::
:
:

:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$	 

_output_shapes

:
: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::$" 

_output_shapes

:
: #

_output_shapes
:
:$$ 

_output_shapes

:

: %

_output_shapes
:
:$& 

_output_shapes

:
: '

_output_shapes
::(

_output_shapes
: 
т
Ф
G__inference_dense_7_layer_call_and_return_all_conditional_losses_418096

inputs
unknown:


	unknown_0:

identity

identity_1ЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4173042
StatefulPartitionedCallЖ
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_7_activity_regularizer_4172102
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identityf

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
е
F
/__inference_dense_4_activity_regularizer_417171
x
identity7
AbsAbsx*
T0*
_output_shapes
:2
Abs>
RankRankAbs:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2
rangeK
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
я

(__inference_dense_7_layer_call_fn_418105

inputs
unknown:


	unknown_0:

identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4173042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

є
C__inference_dense_7_layer_call_and_return_conditional_losses_418169

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Њ~

H__inference_sequential_2_layer_call_and_return_conditional_losses_417967

inputs8
&dense_4_matmul_readvariableop_resource:5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:8
&dense_6_matmul_readvariableop_resource:
5
'dense_6_biasadd_readvariableop_resource:
8
&dense_7_matmul_readvariableop_resource:

5
'dense_7_biasadd_readvariableop_resource:
7
%y_pred_matmul_readvariableop_resource:
4
&y_pred_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4Ђdense_4/BiasAdd/ReadVariableOpЂdense_4/MatMul/ReadVariableOpЂdense_5/BiasAdd/ReadVariableOpЂdense_5/MatMul/ReadVariableOpЂdense_6/BiasAdd/ReadVariableOpЂdense_6/MatMul/ReadVariableOpЂdense_7/BiasAdd/ReadVariableOpЂdense_7/MatMul/ReadVariableOpЂy_pred/BiasAdd/ReadVariableOpЂy_pred/MatMul/ReadVariableOpm
dense_4/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
dense_4/CastЅ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_4/MatMul/ReadVariableOp
dense_4/MatMulMatMuldense_4/Cast:y:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/MatMulЄ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOpЁ
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/BiasAddp
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/Relu
dense_4/ActivityRegularizer/AbsAbsdense_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2!
dense_4/ActivityRegularizer/Abs
!dense_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_4/ActivityRegularizer/ConstЛ
dense_4/ActivityRegularizer/SumSum#dense_4/ActivityRegularizer/Abs:y:0*dense_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_4/ActivityRegularizer/Sum
!dense_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72#
!dense_4/ActivityRegularizer/mul/xР
dense_4/ActivityRegularizer/mulMul*dense_4/ActivityRegularizer/mul/x:output:0(dense_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_4/ActivityRegularizer/mul
!dense_4/ActivityRegularizer/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_4/ActivityRegularizer/ShapeЌ
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_4/ActivityRegularizer/strided_slice/stackА
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_1А
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_2
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_4/ActivityRegularizer/strided_sliceА
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_4/ActivityRegularizer/CastС
#dense_4/ActivityRegularizer/truedivRealDiv#dense_4/ActivityRegularizer/mul:z:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_4/ActivityRegularizer/truedivЅ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_5/MatMul/ReadVariableOp
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_5/MatMulЄ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOpЁ
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_5/BiasAddp
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_5/Relu
dense_5/ActivityRegularizer/AbsAbsdense_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2!
dense_5/ActivityRegularizer/Abs
!dense_5/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_5/ActivityRegularizer/ConstЛ
dense_5/ActivityRegularizer/SumSum#dense_5/ActivityRegularizer/Abs:y:0*dense_5/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_5/ActivityRegularizer/Sum
!dense_5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72#
!dense_5/ActivityRegularizer/mul/xР
dense_5/ActivityRegularizer/mulMul*dense_5/ActivityRegularizer/mul/x:output:0(dense_5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_5/ActivityRegularizer/mul
!dense_5/ActivityRegularizer/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_5/ActivityRegularizer/ShapeЌ
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_5/ActivityRegularizer/strided_slice/stackА
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_1А
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_2
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_5/ActivityRegularizer/strided_sliceА
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_5/ActivityRegularizer/CastС
#dense_5/ActivityRegularizer/truedivRealDiv#dense_5/ActivityRegularizer/mul:z:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_5/ActivityRegularizer/truedivЅ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_6/MatMulЄ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_6/BiasAdd/ReadVariableOpЁ
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_6/Relu
dense_6/ActivityRegularizer/AbsAbsdense_6/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
2!
dense_6/ActivityRegularizer/Abs
!dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_6/ActivityRegularizer/ConstЛ
dense_6/ActivityRegularizer/SumSum#dense_6/ActivityRegularizer/Abs:y:0*dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_6/ActivityRegularizer/Sum
!dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72#
!dense_6/ActivityRegularizer/mul/xР
dense_6/ActivityRegularizer/mulMul*dense_6/ActivityRegularizer/mul/x:output:0(dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_6/ActivityRegularizer/mul
!dense_6/ActivityRegularizer/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/ShapeЌ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stackА
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1А
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_sliceА
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/CastС
#dense_6/ActivityRegularizer/truedivRealDiv#dense_6/ActivityRegularizer/mul:z:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivЅ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_7/MatMul/ReadVariableOp
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_7/MatMulЄ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_7/BiasAdd/ReadVariableOpЁ
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_7/BiasAddp
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_7/Relu
dense_7/ActivityRegularizer/AbsAbsdense_7/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
2!
dense_7/ActivityRegularizer/Abs
!dense_7/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_7/ActivityRegularizer/ConstЛ
dense_7/ActivityRegularizer/SumSum#dense_7/ActivityRegularizer/Abs:y:0*dense_7/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_7/ActivityRegularizer/Sum
!dense_7/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72#
!dense_7/ActivityRegularizer/mul/xР
dense_7/ActivityRegularizer/mulMul*dense_7/ActivityRegularizer/mul/x:output:0(dense_7/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_7/ActivityRegularizer/mul
!dense_7/ActivityRegularizer/ShapeShapedense_7/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_7/ActivityRegularizer/ShapeЌ
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_7/ActivityRegularizer/strided_slice/stackА
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_1А
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_2
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_7/ActivityRegularizer/strided_sliceА
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_7/ActivityRegularizer/CastС
#dense_7/ActivityRegularizer/truedivRealDiv#dense_7/ActivityRegularizer/mul:z:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_7/ActivityRegularizer/truedivЂ
y_pred/MatMul/ReadVariableOpReadVariableOp%y_pred_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
y_pred/MatMul/ReadVariableOp
y_pred/MatMulMatMuldense_7/Relu:activations:0$y_pred/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
y_pred/MatMulЁ
y_pred/BiasAdd/ReadVariableOpReadVariableOp&y_pred_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
y_pred/BiasAdd/ReadVariableOp
y_pred/BiasAddBiasAddy_pred/MatMul:product:0%y_pred/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
y_pred/BiasAddv
y_pred/SoftmaxSoftmaxy_pred/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
y_pred/Softmaxs
IdentityIdentityy_pred/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityu

Identity_1Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1u

Identity_2Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2u

Identity_3Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3u

Identity_4Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^y_pred/BiasAdd/ReadVariableOp^y_pred/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2>
y_pred/BiasAdd/ReadVariableOpy_pred/BiasAdd/ReadVariableOp2<
y_pred/MatMul/ReadVariableOpy_pred/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е

ђ
-__inference_sequential_2_layer_call_fn_417996

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:

	unknown_5:


	unknown_6:

	unknown_7:

	unknown_8:
identityЂStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ: : : : *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_4173402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
т
Ф
G__inference_dense_5_layer_call_and_return_all_conditional_losses_418056

inputs
unknown:
	unknown_0:
identity

identity_1ЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4172542
StatefulPartitionedCallЖ
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_5_activity_regularizer_4171842
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityf

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
]

H__inference_sequential_2_layer_call_and_return_conditional_losses_417562

inputs 
dense_4_417500:
dense_4_417502: 
dense_5_417513:
dense_5_417515: 
dense_6_417526:

dense_6_417528:
 
dense_7_417539:


dense_7_417541:

y_pred_417552:

y_pred_417554:
identity

identity_1

identity_2

identity_3

identity_4Ђdense_4/StatefulPartitionedCallЂdense_5/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂy_pred/StatefulPartitionedCallm
dense_4/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
dense_4/Cast
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4/Cast:y:0dense_4_417500dense_4_417502*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_4172292!
dense_4/StatefulPartitionedCallі
+dense_4/ActivityRegularizer/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_4_activity_regularizer_4171712-
+dense_4/ActivityRegularizer/PartitionedCall
!dense_4/ActivityRegularizer/ShapeShape(dense_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_4/ActivityRegularizer/ShapeЌ
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_4/ActivityRegularizer/strided_slice/stackА
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_1А
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_2
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_4/ActivityRegularizer/strided_sliceА
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_4/ActivityRegularizer/Castв
#dense_4/ActivityRegularizer/truedivRealDiv4dense_4/ActivityRegularizer/PartitionedCall:output:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_4/ActivityRegularizer/truedivБ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_417513dense_5_417515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4172542!
dense_5/StatefulPartitionedCallі
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_5_activity_regularizer_4171842-
+dense_5/ActivityRegularizer/PartitionedCall
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_5/ActivityRegularizer/ShapeЌ
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_5/ActivityRegularizer/strided_slice/stackА
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_1А
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_2
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_5/ActivityRegularizer/strided_sliceА
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_5/ActivityRegularizer/Castв
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_5/ActivityRegularizer/truedivБ
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_417526dense_6_417528*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4172792!
dense_6/StatefulPartitionedCallі
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_6_activity_regularizer_4171972-
+dense_6/ActivityRegularizer/PartitionedCall
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/ShapeЌ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stackА
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1А
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_sliceА
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/Castв
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivБ
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_417539dense_7_417541*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4173042!
dense_7/StatefulPartitionedCallі
+dense_7/ActivityRegularizer/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_7_activity_regularizer_4172102-
+dense_7/ActivityRegularizer/PartitionedCall
!dense_7/ActivityRegularizer/ShapeShape(dense_7/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_7/ActivityRegularizer/ShapeЌ
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_7/ActivityRegularizer/strided_slice/stackА
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_1А
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_2
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_7/ActivityRegularizer/strided_sliceА
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_7/ActivityRegularizer/Castв
#dense_7/ActivityRegularizer/truedivRealDiv4dense_7/ActivityRegularizer/PartitionedCall:output:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_7/ActivityRegularizer/truedivЌ
y_pred/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0y_pred_417552y_pred_417554*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_y_pred_layer_call_and_return_conditional_losses_4173292 
y_pred/StatefulPartitionedCall
IdentityIdentity'y_pred/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityu

Identity_1Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1u

Identity_2Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2u

Identity_3Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3u

Identity_4Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4ї
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^y_pred/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
y_pred/StatefulPartitionedCally_pred/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е
F
/__inference_dense_7_activity_regularizer_417210
x
identity7
AbsAbsx*
T0*
_output_shapes
:2
Abs>
RankRankAbs:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2
rangeK
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex

є
C__inference_dense_7_layer_call_and_return_conditional_losses_417304

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
]

H__inference_sequential_2_layer_call_and_return_conditional_losses_417340

inputs 
dense_4_417230:
dense_4_417232: 
dense_5_417255:
dense_5_417257: 
dense_6_417280:

dense_6_417282:
 
dense_7_417305:


dense_7_417307:

y_pred_417330:

y_pred_417332:
identity

identity_1

identity_2

identity_3

identity_4Ђdense_4/StatefulPartitionedCallЂdense_5/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂy_pred/StatefulPartitionedCallm
dense_4/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
dense_4/Cast
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4/Cast:y:0dense_4_417230dense_4_417232*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_4172292!
dense_4/StatefulPartitionedCallі
+dense_4/ActivityRegularizer/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_4_activity_regularizer_4171712-
+dense_4/ActivityRegularizer/PartitionedCall
!dense_4/ActivityRegularizer/ShapeShape(dense_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_4/ActivityRegularizer/ShapeЌ
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_4/ActivityRegularizer/strided_slice/stackА
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_1А
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_2
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_4/ActivityRegularizer/strided_sliceА
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_4/ActivityRegularizer/Castв
#dense_4/ActivityRegularizer/truedivRealDiv4dense_4/ActivityRegularizer/PartitionedCall:output:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_4/ActivityRegularizer/truedivБ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_417255dense_5_417257*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4172542!
dense_5/StatefulPartitionedCallі
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_5_activity_regularizer_4171842-
+dense_5/ActivityRegularizer/PartitionedCall
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_5/ActivityRegularizer/ShapeЌ
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_5/ActivityRegularizer/strided_slice/stackА
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_1А
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_2
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_5/ActivityRegularizer/strided_sliceА
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_5/ActivityRegularizer/Castв
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_5/ActivityRegularizer/truedivБ
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_417280dense_6_417282*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4172792!
dense_6/StatefulPartitionedCallі
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_6_activity_regularizer_4171972-
+dense_6/ActivityRegularizer/PartitionedCall
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/ShapeЌ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stackА
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1А
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_sliceА
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/Castв
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivБ
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_417305dense_7_417307*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4173042!
dense_7/StatefulPartitionedCallі
+dense_7/ActivityRegularizer/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_7_activity_regularizer_4172102-
+dense_7/ActivityRegularizer/PartitionedCall
!dense_7/ActivityRegularizer/ShapeShape(dense_7/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_7/ActivityRegularizer/ShapeЌ
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_7/ActivityRegularizer/strided_slice/stackА
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_1А
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_2
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_7/ActivityRegularizer/strided_sliceА
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_7/ActivityRegularizer/Castв
#dense_7/ActivityRegularizer/truedivRealDiv4dense_7/ActivityRegularizer/PartitionedCall:output:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_7/ActivityRegularizer/truedivЌ
y_pred/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0y_pred_417330y_pred_417332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_y_pred_layer_call_and_return_conditional_losses_4173292 
y_pred/StatefulPartitionedCall
IdentityIdentity'y_pred/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityu

Identity_1Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1u

Identity_2Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2u

Identity_3Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3u

Identity_4Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4ї
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^y_pred/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
y_pred/StatefulPartitionedCally_pred/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
т
Ф
G__inference_dense_4_layer_call_and_return_all_conditional_losses_418036

inputs
unknown:
	unknown_0:
identity

identity_1ЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_4172292
StatefulPartitionedCallЖ
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_4_activity_regularizer_4171712
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityf

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

є
C__inference_dense_6_layer_call_and_return_conditional_losses_418158

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
я

(__inference_dense_6_layer_call_fn_418085

inputs
unknown:

	unknown_0:

identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4172792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

є
C__inference_dense_5_layer_call_and_return_conditional_losses_417254

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ў

№
$__inference_signature_wrapper_417783
dense_4_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:

	unknown_5:


	unknown_6:

	unknown_7:

	unknown_8:
identityЂStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_4171582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_4_input
ъ

љ
-__inference_sequential_2_layer_call_fn_417367
dense_4_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:

	unknown_5:


	unknown_6:

	unknown_7:

	unknown_8:
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ: : : : *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_4173402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_4_input
]

H__inference_sequential_2_layer_call_and_return_conditional_losses_417750
dense_4_input 
dense_4_417688:
dense_4_417690: 
dense_5_417701:
dense_5_417703: 
dense_6_417714:

dense_6_417716:
 
dense_7_417727:


dense_7_417729:

y_pred_417740:

y_pred_417742:
identity

identity_1

identity_2

identity_3

identity_4Ђdense_4/StatefulPartitionedCallЂdense_5/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂy_pred/StatefulPartitionedCallt
dense_4/CastCastdense_4_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
dense_4/Cast
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4/Cast:y:0dense_4_417688dense_4_417690*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_4172292!
dense_4/StatefulPartitionedCallі
+dense_4/ActivityRegularizer/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_4_activity_regularizer_4171712-
+dense_4/ActivityRegularizer/PartitionedCall
!dense_4/ActivityRegularizer/ShapeShape(dense_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_4/ActivityRegularizer/ShapeЌ
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_4/ActivityRegularizer/strided_slice/stackА
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_1А
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_2
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_4/ActivityRegularizer/strided_sliceА
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_4/ActivityRegularizer/Castв
#dense_4/ActivityRegularizer/truedivRealDiv4dense_4/ActivityRegularizer/PartitionedCall:output:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_4/ActivityRegularizer/truedivБ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_417701dense_5_417703*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4172542!
dense_5/StatefulPartitionedCallі
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_5_activity_regularizer_4171842-
+dense_5/ActivityRegularizer/PartitionedCall
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_5/ActivityRegularizer/ShapeЌ
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_5/ActivityRegularizer/strided_slice/stackА
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_1А
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_2
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_5/ActivityRegularizer/strided_sliceА
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_5/ActivityRegularizer/Castв
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_5/ActivityRegularizer/truedivБ
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_417714dense_6_417716*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4172792!
dense_6/StatefulPartitionedCallі
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_6_activity_regularizer_4171972-
+dense_6/ActivityRegularizer/PartitionedCall
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/ShapeЌ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stackА
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1А
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_sliceА
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/Castв
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivБ
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_417727dense_7_417729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4173042!
dense_7/StatefulPartitionedCallі
+dense_7/ActivityRegularizer/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_7_activity_regularizer_4172102-
+dense_7/ActivityRegularizer/PartitionedCall
!dense_7/ActivityRegularizer/ShapeShape(dense_7/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_7/ActivityRegularizer/ShapeЌ
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_7/ActivityRegularizer/strided_slice/stackА
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_1А
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_2
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_7/ActivityRegularizer/strided_sliceА
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_7/ActivityRegularizer/Castв
#dense_7/ActivityRegularizer/truedivRealDiv4dense_7/ActivityRegularizer/PartitionedCall:output:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_7/ActivityRegularizer/truedivЌ
y_pred/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0y_pred_417740y_pred_417742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_y_pred_layer_call_and_return_conditional_losses_4173292 
y_pred/StatefulPartitionedCall
IdentityIdentity'y_pred/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityu

Identity_1Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1u

Identity_2Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2u

Identity_3Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3u

Identity_4Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4ї
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^y_pred/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
y_pred/StatefulPartitionedCally_pred/StatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_4_input

є
C__inference_dense_4_layer_call_and_return_conditional_losses_418136

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
я

(__inference_dense_5_layer_call_fn_418065

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4172542
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е
F
/__inference_dense_6_activity_regularizer_417197
x
identity7
AbsAbsx*
T0*
_output_shapes
:2
Abs>
RankRankAbs:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2
rangeK
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
Њ~

H__inference_sequential_2_layer_call_and_return_conditional_losses_417875

inputs8
&dense_4_matmul_readvariableop_resource:5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:8
&dense_6_matmul_readvariableop_resource:
5
'dense_6_biasadd_readvariableop_resource:
8
&dense_7_matmul_readvariableop_resource:

5
'dense_7_biasadd_readvariableop_resource:
7
%y_pred_matmul_readvariableop_resource:
4
&y_pred_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4Ђdense_4/BiasAdd/ReadVariableOpЂdense_4/MatMul/ReadVariableOpЂdense_5/BiasAdd/ReadVariableOpЂdense_5/MatMul/ReadVariableOpЂdense_6/BiasAdd/ReadVariableOpЂdense_6/MatMul/ReadVariableOpЂdense_7/BiasAdd/ReadVariableOpЂdense_7/MatMul/ReadVariableOpЂy_pred/BiasAdd/ReadVariableOpЂy_pred/MatMul/ReadVariableOpm
dense_4/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
dense_4/CastЅ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_4/MatMul/ReadVariableOp
dense_4/MatMulMatMuldense_4/Cast:y:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/MatMulЄ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOpЁ
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/BiasAddp
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_4/Relu
dense_4/ActivityRegularizer/AbsAbsdense_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2!
dense_4/ActivityRegularizer/Abs
!dense_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_4/ActivityRegularizer/ConstЛ
dense_4/ActivityRegularizer/SumSum#dense_4/ActivityRegularizer/Abs:y:0*dense_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_4/ActivityRegularizer/Sum
!dense_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72#
!dense_4/ActivityRegularizer/mul/xР
dense_4/ActivityRegularizer/mulMul*dense_4/ActivityRegularizer/mul/x:output:0(dense_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_4/ActivityRegularizer/mul
!dense_4/ActivityRegularizer/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_4/ActivityRegularizer/ShapeЌ
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_4/ActivityRegularizer/strided_slice/stackА
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_1А
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_2
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_4/ActivityRegularizer/strided_sliceА
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_4/ActivityRegularizer/CastС
#dense_4/ActivityRegularizer/truedivRealDiv#dense_4/ActivityRegularizer/mul:z:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_4/ActivityRegularizer/truedivЅ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_5/MatMul/ReadVariableOp
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_5/MatMulЄ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOpЁ
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_5/BiasAddp
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_5/Relu
dense_5/ActivityRegularizer/AbsAbsdense_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2!
dense_5/ActivityRegularizer/Abs
!dense_5/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_5/ActivityRegularizer/ConstЛ
dense_5/ActivityRegularizer/SumSum#dense_5/ActivityRegularizer/Abs:y:0*dense_5/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_5/ActivityRegularizer/Sum
!dense_5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72#
!dense_5/ActivityRegularizer/mul/xР
dense_5/ActivityRegularizer/mulMul*dense_5/ActivityRegularizer/mul/x:output:0(dense_5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_5/ActivityRegularizer/mul
!dense_5/ActivityRegularizer/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_5/ActivityRegularizer/ShapeЌ
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_5/ActivityRegularizer/strided_slice/stackА
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_1А
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_2
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_5/ActivityRegularizer/strided_sliceА
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_5/ActivityRegularizer/CastС
#dense_5/ActivityRegularizer/truedivRealDiv#dense_5/ActivityRegularizer/mul:z:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_5/ActivityRegularizer/truedivЅ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_6/MatMulЄ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_6/BiasAdd/ReadVariableOpЁ
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_6/Relu
dense_6/ActivityRegularizer/AbsAbsdense_6/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
2!
dense_6/ActivityRegularizer/Abs
!dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_6/ActivityRegularizer/ConstЛ
dense_6/ActivityRegularizer/SumSum#dense_6/ActivityRegularizer/Abs:y:0*dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_6/ActivityRegularizer/Sum
!dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72#
!dense_6/ActivityRegularizer/mul/xР
dense_6/ActivityRegularizer/mulMul*dense_6/ActivityRegularizer/mul/x:output:0(dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_6/ActivityRegularizer/mul
!dense_6/ActivityRegularizer/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/ShapeЌ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stackА
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1А
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_sliceА
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/CastС
#dense_6/ActivityRegularizer/truedivRealDiv#dense_6/ActivityRegularizer/mul:z:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivЅ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_7/MatMul/ReadVariableOp
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_7/MatMulЄ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_7/BiasAdd/ReadVariableOpЁ
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_7/BiasAddp
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_7/Relu
dense_7/ActivityRegularizer/AbsAbsdense_7/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
2!
dense_7/ActivityRegularizer/Abs
!dense_7/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_7/ActivityRegularizer/ConstЛ
dense_7/ActivityRegularizer/SumSum#dense_7/ActivityRegularizer/Abs:y:0*dense_7/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_7/ActivityRegularizer/Sum
!dense_7/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72#
!dense_7/ActivityRegularizer/mul/xР
dense_7/ActivityRegularizer/mulMul*dense_7/ActivityRegularizer/mul/x:output:0(dense_7/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_7/ActivityRegularizer/mul
!dense_7/ActivityRegularizer/ShapeShapedense_7/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_7/ActivityRegularizer/ShapeЌ
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_7/ActivityRegularizer/strided_slice/stackА
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_1А
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_2
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_7/ActivityRegularizer/strided_sliceА
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_7/ActivityRegularizer/CastС
#dense_7/ActivityRegularizer/truedivRealDiv#dense_7/ActivityRegularizer/mul:z:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_7/ActivityRegularizer/truedivЂ
y_pred/MatMul/ReadVariableOpReadVariableOp%y_pred_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
y_pred/MatMul/ReadVariableOp
y_pred/MatMulMatMuldense_7/Relu:activations:0$y_pred/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
y_pred/MatMulЁ
y_pred/BiasAdd/ReadVariableOpReadVariableOp&y_pred_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
y_pred/BiasAdd/ReadVariableOp
y_pred/BiasAddBiasAddy_pred/MatMul:product:0%y_pred/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
y_pred/BiasAddv
y_pred/SoftmaxSoftmaxy_pred/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
y_pred/Softmaxs
IdentityIdentityy_pred/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityu

Identity_1Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1u

Identity_2Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2u

Identity_3Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3u

Identity_4Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^y_pred/BiasAdd/ReadVariableOp^y_pred/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2>
y_pred/BiasAdd/ReadVariableOpy_pred/BiasAdd/ReadVariableOp2<
y_pred/MatMul/ReadVariableOpy_pred/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ІЇ
ў
"__inference__traced_restore_418436
file_prefix1
assignvariableop_dense_4_kernel:-
assignvariableop_1_dense_4_bias:3
!assignvariableop_2_dense_5_kernel:-
assignvariableop_3_dense_5_bias:3
!assignvariableop_4_dense_6_kernel:
-
assignvariableop_5_dense_6_bias:
3
!assignvariableop_6_dense_7_kernel:

-
assignvariableop_7_dense_7_bias:
2
 assignvariableop_8_y_pred_kernel:
,
assignvariableop_9_y_pred_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: ;
)assignvariableop_19_adam_dense_4_kernel_m:5
'assignvariableop_20_adam_dense_4_bias_m:;
)assignvariableop_21_adam_dense_5_kernel_m:5
'assignvariableop_22_adam_dense_5_bias_m:;
)assignvariableop_23_adam_dense_6_kernel_m:
5
'assignvariableop_24_adam_dense_6_bias_m:
;
)assignvariableop_25_adam_dense_7_kernel_m:

5
'assignvariableop_26_adam_dense_7_bias_m:
:
(assignvariableop_27_adam_y_pred_kernel_m:
4
&assignvariableop_28_adam_y_pred_bias_m:;
)assignvariableop_29_adam_dense_4_kernel_v:5
'assignvariableop_30_adam_dense_4_bias_v:;
)assignvariableop_31_adam_dense_5_kernel_v:5
'assignvariableop_32_adam_dense_5_bias_v:;
)assignvariableop_33_adam_dense_6_kernel_v:
5
'assignvariableop_34_adam_dense_6_bias_v:
;
)assignvariableop_35_adam_dense_7_kernel_v:

5
'assignvariableop_36_adam_dense_7_bias_v:
:
(assignvariableop_37_adam_y_pred_kernel_v:
4
&assignvariableop_38_adam_y_pred_bias_v:
identity_40ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesо
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesі
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ж
_output_shapesЃ
 ::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Є
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Є
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4І
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_6_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Є
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_6_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6І
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_7_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Є
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_7_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ѕ
AssignVariableOp_8AssignVariableOp assignvariableop_8_y_pred_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѓ
AssignVariableOp_9AssignVariableOpassignvariableop_9_y_pred_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10Ѕ
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ї
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ї
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13І
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ў
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ё
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ё
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ѓ
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ѓ
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Б
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_4_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Џ
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_4_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Б
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_5_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Џ
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_5_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Б
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_6_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Џ
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_6_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Б
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_7_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Џ
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_7_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27А
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_y_pred_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ў
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_y_pred_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Б
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_4_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Џ
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_4_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Б
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_5_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Џ
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_5_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Б
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_6_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Џ
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_6_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Б
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_7_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Џ
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_7_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37А
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_y_pred_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ў
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_y_pred_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpИ
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39f
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_40 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

є
C__inference_dense_5_layer_call_and_return_conditional_losses_418147

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е
F
/__inference_dense_5_activity_regularizer_417184
x
identity7
AbsAbsx*
T0*
_output_shapes
:2
Abs>
RankRankAbs:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2
rangeK
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'72
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
]

H__inference_sequential_2_layer_call_and_return_conditional_losses_417684
dense_4_input 
dense_4_417622:
dense_4_417624: 
dense_5_417635:
dense_5_417637: 
dense_6_417648:

dense_6_417650:
 
dense_7_417661:


dense_7_417663:

y_pred_417674:

y_pred_417676:
identity

identity_1

identity_2

identity_3

identity_4Ђdense_4/StatefulPartitionedCallЂdense_5/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂy_pred/StatefulPartitionedCallt
dense_4/CastCastdense_4_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
dense_4/Cast
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4/Cast:y:0dense_4_417622dense_4_417624*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_4172292!
dense_4/StatefulPartitionedCallі
+dense_4/ActivityRegularizer/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_4_activity_regularizer_4171712-
+dense_4/ActivityRegularizer/PartitionedCall
!dense_4/ActivityRegularizer/ShapeShape(dense_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_4/ActivityRegularizer/ShapeЌ
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_4/ActivityRegularizer/strided_slice/stackА
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_1А
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_4/ActivityRegularizer/strided_slice/stack_2
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_4/ActivityRegularizer/strided_sliceА
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_4/ActivityRegularizer/Castв
#dense_4/ActivityRegularizer/truedivRealDiv4dense_4/ActivityRegularizer/PartitionedCall:output:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_4/ActivityRegularizer/truedivБ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_417635dense_5_417637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4172542!
dense_5/StatefulPartitionedCallі
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_5_activity_regularizer_4171842-
+dense_5/ActivityRegularizer/PartitionedCall
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_5/ActivityRegularizer/ShapeЌ
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_5/ActivityRegularizer/strided_slice/stackА
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_1А
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_5/ActivityRegularizer/strided_slice/stack_2
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_5/ActivityRegularizer/strided_sliceА
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_5/ActivityRegularizer/Castв
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_5/ActivityRegularizer/truedivБ
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_417648dense_6_417650*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4172792!
dense_6/StatefulPartitionedCallі
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_6_activity_regularizer_4171972-
+dense_6/ActivityRegularizer/PartitionedCall
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/ShapeЌ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stackА
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1А
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_sliceА
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/Castв
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivБ
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_417661dense_7_417663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4173042!
dense_7/StatefulPartitionedCallі
+dense_7/ActivityRegularizer/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_7_activity_regularizer_4172102-
+dense_7/ActivityRegularizer/PartitionedCall
!dense_7/ActivityRegularizer/ShapeShape(dense_7/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_7/ActivityRegularizer/ShapeЌ
/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_7/ActivityRegularizer/strided_slice/stackА
1dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_1А
1dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_7/ActivityRegularizer/strided_slice/stack_2
)dense_7/ActivityRegularizer/strided_sliceStridedSlice*dense_7/ActivityRegularizer/Shape:output:08dense_7/ActivityRegularizer/strided_slice/stack:output:0:dense_7/ActivityRegularizer/strided_slice/stack_1:output:0:dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_7/ActivityRegularizer/strided_sliceА
 dense_7/ActivityRegularizer/CastCast2dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_7/ActivityRegularizer/Castв
#dense_7/ActivityRegularizer/truedivRealDiv4dense_7/ActivityRegularizer/PartitionedCall:output:0$dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_7/ActivityRegularizer/truedivЌ
y_pred/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0y_pred_417674y_pred_417676*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_y_pred_layer_call_and_return_conditional_losses_4173292 
y_pred/StatefulPartitionedCall
IdentityIdentity'y_pred/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityu

Identity_1Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1u

Identity_2Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2u

Identity_3Identity'dense_6/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3u

Identity_4Identity'dense_7/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4ї
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^y_pred/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
y_pred/StatefulPartitionedCally_pred/StatefulPartitionedCall:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_4_input
§
С	
!__inference__wrapped_model_417158
dense_4_inputE
3sequential_2_dense_4_matmul_readvariableop_resource:B
4sequential_2_dense_4_biasadd_readvariableop_resource:E
3sequential_2_dense_5_matmul_readvariableop_resource:B
4sequential_2_dense_5_biasadd_readvariableop_resource:E
3sequential_2_dense_6_matmul_readvariableop_resource:
B
4sequential_2_dense_6_biasadd_readvariableop_resource:
E
3sequential_2_dense_7_matmul_readvariableop_resource:

B
4sequential_2_dense_7_biasadd_readvariableop_resource:
D
2sequential_2_y_pred_matmul_readvariableop_resource:
A
3sequential_2_y_pred_biasadd_readvariableop_resource:
identityЂ+sequential_2/dense_4/BiasAdd/ReadVariableOpЂ*sequential_2/dense_4/MatMul/ReadVariableOpЂ+sequential_2/dense_5/BiasAdd/ReadVariableOpЂ*sequential_2/dense_5/MatMul/ReadVariableOpЂ+sequential_2/dense_6/BiasAdd/ReadVariableOpЂ*sequential_2/dense_6/MatMul/ReadVariableOpЂ+sequential_2/dense_7/BiasAdd/ReadVariableOpЂ*sequential_2/dense_7/MatMul/ReadVariableOpЂ*sequential_2/y_pred/BiasAdd/ReadVariableOpЂ)sequential_2/y_pred/MatMul/ReadVariableOp
sequential_2/dense_4/CastCastdense_4_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_4/CastЬ
*sequential_2/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*sequential_2/dense_4/MatMul/ReadVariableOpЩ
sequential_2/dense_4/MatMulMatMulsequential_2/dense_4/Cast:y:02sequential_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_4/MatMulЫ
+sequential_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_2/dense_4/BiasAdd/ReadVariableOpе
sequential_2/dense_4/BiasAddBiasAdd%sequential_2/dense_4/MatMul:product:03sequential_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_4/BiasAdd
sequential_2/dense_4/ReluRelu%sequential_2/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_4/ReluО
,sequential_2/dense_4/ActivityRegularizer/AbsAbs'sequential_2/dense_4/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2.
,sequential_2/dense_4/ActivityRegularizer/AbsБ
.sequential_2/dense_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.sequential_2/dense_4/ActivityRegularizer/Constя
,sequential_2/dense_4/ActivityRegularizer/SumSum0sequential_2/dense_4/ActivityRegularizer/Abs:y:07sequential_2/dense_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2.
,sequential_2/dense_4/ActivityRegularizer/SumЅ
.sequential_2/dense_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'720
.sequential_2/dense_4/ActivityRegularizer/mul/xє
,sequential_2/dense_4/ActivityRegularizer/mulMul7sequential_2/dense_4/ActivityRegularizer/mul/x:output:05sequential_2/dense_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,sequential_2/dense_4/ActivityRegularizer/mulЗ
.sequential_2/dense_4/ActivityRegularizer/ShapeShape'sequential_2/dense_4/Relu:activations:0*
T0*
_output_shapes
:20
.sequential_2/dense_4/ActivityRegularizer/ShapeЦ
<sequential_2/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential_2/dense_4/ActivityRegularizer/strided_slice/stackЪ
>sequential_2/dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/dense_4/ActivityRegularizer/strided_slice/stack_1Ъ
>sequential_2/dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/dense_4/ActivityRegularizer/strided_slice/stack_2и
6sequential_2/dense_4/ActivityRegularizer/strided_sliceStridedSlice7sequential_2/dense_4/ActivityRegularizer/Shape:output:0Esequential_2/dense_4/ActivityRegularizer/strided_slice/stack:output:0Gsequential_2/dense_4/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_2/dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6sequential_2/dense_4/ActivityRegularizer/strided_sliceз
-sequential_2/dense_4/ActivityRegularizer/CastCast?sequential_2/dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2/
-sequential_2/dense_4/ActivityRegularizer/Castѕ
0sequential_2/dense_4/ActivityRegularizer/truedivRealDiv0sequential_2/dense_4/ActivityRegularizer/mul:z:01sequential_2/dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 22
0sequential_2/dense_4/ActivityRegularizer/truedivЬ
*sequential_2/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*sequential_2/dense_5/MatMul/ReadVariableOpг
sequential_2/dense_5/MatMulMatMul'sequential_2/dense_4/Relu:activations:02sequential_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_5/MatMulЫ
+sequential_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_2/dense_5/BiasAdd/ReadVariableOpе
sequential_2/dense_5/BiasAddBiasAdd%sequential_2/dense_5/MatMul:product:03sequential_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_5/BiasAdd
sequential_2/dense_5/ReluRelu%sequential_2/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/dense_5/ReluО
,sequential_2/dense_5/ActivityRegularizer/AbsAbs'sequential_2/dense_5/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2.
,sequential_2/dense_5/ActivityRegularizer/AbsБ
.sequential_2/dense_5/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.sequential_2/dense_5/ActivityRegularizer/Constя
,sequential_2/dense_5/ActivityRegularizer/SumSum0sequential_2/dense_5/ActivityRegularizer/Abs:y:07sequential_2/dense_5/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2.
,sequential_2/dense_5/ActivityRegularizer/SumЅ
.sequential_2/dense_5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'720
.sequential_2/dense_5/ActivityRegularizer/mul/xє
,sequential_2/dense_5/ActivityRegularizer/mulMul7sequential_2/dense_5/ActivityRegularizer/mul/x:output:05sequential_2/dense_5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,sequential_2/dense_5/ActivityRegularizer/mulЗ
.sequential_2/dense_5/ActivityRegularizer/ShapeShape'sequential_2/dense_5/Relu:activations:0*
T0*
_output_shapes
:20
.sequential_2/dense_5/ActivityRegularizer/ShapeЦ
<sequential_2/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential_2/dense_5/ActivityRegularizer/strided_slice/stackЪ
>sequential_2/dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/dense_5/ActivityRegularizer/strided_slice/stack_1Ъ
>sequential_2/dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/dense_5/ActivityRegularizer/strided_slice/stack_2и
6sequential_2/dense_5/ActivityRegularizer/strided_sliceStridedSlice7sequential_2/dense_5/ActivityRegularizer/Shape:output:0Esequential_2/dense_5/ActivityRegularizer/strided_slice/stack:output:0Gsequential_2/dense_5/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_2/dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6sequential_2/dense_5/ActivityRegularizer/strided_sliceз
-sequential_2/dense_5/ActivityRegularizer/CastCast?sequential_2/dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2/
-sequential_2/dense_5/ActivityRegularizer/Castѕ
0sequential_2/dense_5/ActivityRegularizer/truedivRealDiv0sequential_2/dense_5/ActivityRegularizer/mul:z:01sequential_2/dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 22
0sequential_2/dense_5/ActivityRegularizer/truedivЬ
*sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02,
*sequential_2/dense_6/MatMul/ReadVariableOpг
sequential_2/dense_6/MatMulMatMul'sequential_2/dense_5/Relu:activations:02sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_2/dense_6/MatMulЫ
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_2/dense_6/BiasAdd/ReadVariableOpе
sequential_2/dense_6/BiasAddBiasAdd%sequential_2/dense_6/MatMul:product:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_2/dense_6/BiasAdd
sequential_2/dense_6/ReluRelu%sequential_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_2/dense_6/ReluО
,sequential_2/dense_6/ActivityRegularizer/AbsAbs'sequential_2/dense_6/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
2.
,sequential_2/dense_6/ActivityRegularizer/AbsБ
.sequential_2/dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.sequential_2/dense_6/ActivityRegularizer/Constя
,sequential_2/dense_6/ActivityRegularizer/SumSum0sequential_2/dense_6/ActivityRegularizer/Abs:y:07sequential_2/dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2.
,sequential_2/dense_6/ActivityRegularizer/SumЅ
.sequential_2/dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'720
.sequential_2/dense_6/ActivityRegularizer/mul/xє
,sequential_2/dense_6/ActivityRegularizer/mulMul7sequential_2/dense_6/ActivityRegularizer/mul/x:output:05sequential_2/dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,sequential_2/dense_6/ActivityRegularizer/mulЗ
.sequential_2/dense_6/ActivityRegularizer/ShapeShape'sequential_2/dense_6/Relu:activations:0*
T0*
_output_shapes
:20
.sequential_2/dense_6/ActivityRegularizer/ShapeЦ
<sequential_2/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential_2/dense_6/ActivityRegularizer/strided_slice/stackЪ
>sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_1Ъ
>sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/dense_6/ActivityRegularizer/strided_slice/stack_2и
6sequential_2/dense_6/ActivityRegularizer/strided_sliceStridedSlice7sequential_2/dense_6/ActivityRegularizer/Shape:output:0Esequential_2/dense_6/ActivityRegularizer/strided_slice/stack:output:0Gsequential_2/dense_6/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_2/dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6sequential_2/dense_6/ActivityRegularizer/strided_sliceз
-sequential_2/dense_6/ActivityRegularizer/CastCast?sequential_2/dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2/
-sequential_2/dense_6/ActivityRegularizer/Castѕ
0sequential_2/dense_6/ActivityRegularizer/truedivRealDiv0sequential_2/dense_6/ActivityRegularizer/mul:z:01sequential_2/dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 22
0sequential_2/dense_6/ActivityRegularizer/truedivЬ
*sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_7_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02,
*sequential_2/dense_7/MatMul/ReadVariableOpг
sequential_2/dense_7/MatMulMatMul'sequential_2/dense_6/Relu:activations:02sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_2/dense_7/MatMulЫ
+sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_2/dense_7/BiasAdd/ReadVariableOpе
sequential_2/dense_7/BiasAddBiasAdd%sequential_2/dense_7/MatMul:product:03sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_2/dense_7/BiasAdd
sequential_2/dense_7/ReluRelu%sequential_2/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_2/dense_7/ReluО
,sequential_2/dense_7/ActivityRegularizer/AbsAbs'sequential_2/dense_7/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
2.
,sequential_2/dense_7/ActivityRegularizer/AbsБ
.sequential_2/dense_7/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.sequential_2/dense_7/ActivityRegularizer/Constя
,sequential_2/dense_7/ActivityRegularizer/SumSum0sequential_2/dense_7/ActivityRegularizer/Abs:y:07sequential_2/dense_7/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2.
,sequential_2/dense_7/ActivityRegularizer/SumЅ
.sequential_2/dense_7/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ЌХ'720
.sequential_2/dense_7/ActivityRegularizer/mul/xє
,sequential_2/dense_7/ActivityRegularizer/mulMul7sequential_2/dense_7/ActivityRegularizer/mul/x:output:05sequential_2/dense_7/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,sequential_2/dense_7/ActivityRegularizer/mulЗ
.sequential_2/dense_7/ActivityRegularizer/ShapeShape'sequential_2/dense_7/Relu:activations:0*
T0*
_output_shapes
:20
.sequential_2/dense_7/ActivityRegularizer/ShapeЦ
<sequential_2/dense_7/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential_2/dense_7/ActivityRegularizer/strided_slice/stackЪ
>sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_1Ъ
>sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/dense_7/ActivityRegularizer/strided_slice/stack_2и
6sequential_2/dense_7/ActivityRegularizer/strided_sliceStridedSlice7sequential_2/dense_7/ActivityRegularizer/Shape:output:0Esequential_2/dense_7/ActivityRegularizer/strided_slice/stack:output:0Gsequential_2/dense_7/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_2/dense_7/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6sequential_2/dense_7/ActivityRegularizer/strided_sliceз
-sequential_2/dense_7/ActivityRegularizer/CastCast?sequential_2/dense_7/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2/
-sequential_2/dense_7/ActivityRegularizer/Castѕ
0sequential_2/dense_7/ActivityRegularizer/truedivRealDiv0sequential_2/dense_7/ActivityRegularizer/mul:z:01sequential_2/dense_7/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 22
0sequential_2/dense_7/ActivityRegularizer/truedivЩ
)sequential_2/y_pred/MatMul/ReadVariableOpReadVariableOp2sequential_2_y_pred_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02+
)sequential_2/y_pred/MatMul/ReadVariableOpа
sequential_2/y_pred/MatMulMatMul'sequential_2/dense_7/Relu:activations:01sequential_2/y_pred/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/y_pred/MatMulШ
*sequential_2/y_pred/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_y_pred_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*sequential_2/y_pred/BiasAdd/ReadVariableOpб
sequential_2/y_pred/BiasAddBiasAdd$sequential_2/y_pred/MatMul:product:02sequential_2/y_pred/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/y_pred/BiasAdd
sequential_2/y_pred/SoftmaxSoftmax$sequential_2/y_pred/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_2/y_pred/Softmax
IdentityIdentity%sequential_2/y_pred/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp,^sequential_2/dense_4/BiasAdd/ReadVariableOp+^sequential_2/dense_4/MatMul/ReadVariableOp,^sequential_2/dense_5/BiasAdd/ReadVariableOp+^sequential_2/dense_5/MatMul/ReadVariableOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp+^sequential_2/dense_6/MatMul/ReadVariableOp,^sequential_2/dense_7/BiasAdd/ReadVariableOp+^sequential_2/dense_7/MatMul/ReadVariableOp+^sequential_2/y_pred/BiasAdd/ReadVariableOp*^sequential_2/y_pred/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : : : 2Z
+sequential_2/dense_4/BiasAdd/ReadVariableOp+sequential_2/dense_4/BiasAdd/ReadVariableOp2X
*sequential_2/dense_4/MatMul/ReadVariableOp*sequential_2/dense_4/MatMul/ReadVariableOp2Z
+sequential_2/dense_5/BiasAdd/ReadVariableOp+sequential_2/dense_5/BiasAdd/ReadVariableOp2X
*sequential_2/dense_5/MatMul/ReadVariableOp*sequential_2/dense_5/MatMul/ReadVariableOp2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2X
*sequential_2/dense_6/MatMul/ReadVariableOp*sequential_2/dense_6/MatMul/ReadVariableOp2Z
+sequential_2/dense_7/BiasAdd/ReadVariableOp+sequential_2/dense_7/BiasAdd/ReadVariableOp2X
*sequential_2/dense_7/MatMul/ReadVariableOp*sequential_2/dense_7/MatMul/ReadVariableOp2X
*sequential_2/y_pred/BiasAdd/ReadVariableOp*sequential_2/y_pred/BiasAdd/ReadVariableOp2V
)sequential_2/y_pred/MatMul/ReadVariableOp)sequential_2/y_pred/MatMul/ReadVariableOp:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namedense_4_input

ѓ
B__inference_y_pred_layer_call_and_return_conditional_losses_418116

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
т
Ф
G__inference_dense_6_layer_call_and_return_all_conditional_losses_418076

inputs
unknown:

	unknown_0:

identity

identity_1ЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4172792
StatefulPartitionedCallЖ
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *8
f3R1
/__inference_dense_6_activity_regularizer_4171972
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identityf

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Е
serving_defaultЁ
G
dense_4_input6
serving_default_dense_4_input:0џџџџџџџџџ:
y_pred0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:
Љ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
*l&call_and_return_all_conditional_losses
m__call__
n_default_save_signature"
_tf_keras_sequential
Л

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*o&call_and_return_all_conditional_losses
p__call__"
_tf_keras_layer
Л

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*q&call_and_return_all_conditional_losses
r__call__"
_tf_keras_layer
Л

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*s&call_and_return_all_conditional_losses
t__call__"
_tf_keras_layer
Л

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
*u&call_and_return_all_conditional_losses
v__call__"
_tf_keras_layer
Л

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
*w&call_and_return_all_conditional_losses
x__call__"
_tf_keras_layer

*iter

+beta_1

,beta_2
	-decay
.learning_ratemXmYmZm[m\m]m^m_$m`%mavbvcvdvevfvgvhvi$vj%vk"
	optimizer
f
0
1
2
3
4
5
6
7
$8
%9"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
$8
%9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ

/layers
trainable_variables
0layer_regularization_losses
	variables
1layer_metrics
2non_trainable_variables
	regularization_losses
3metrics
m__call__
n_default_save_signature
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
,
yserving_default"
signature_map
 :2dense_4/kernel
:2dense_4/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ

4layers
trainable_variables
5layer_regularization_losses
	variables
6layer_metrics
7non_trainable_variables
regularization_losses
8metrics
p__call__
zactivity_regularizer_fn
*o&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 :2dense_5/kernel
:2dense_5/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ

9layers
trainable_variables
:layer_regularization_losses
	variables
;layer_metrics
<non_trainable_variables
regularization_losses
=metrics
r__call__
|activity_regularizer_fn
*q&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 :
2dense_6/kernel
:
2dense_6/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ

>layers
trainable_variables
?layer_regularization_losses
	variables
@layer_metrics
Anon_trainable_variables
regularization_losses
Bmetrics
t__call__
~activity_regularizer_fn
*s&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 :

2dense_7/kernel
:
2dense_7/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ь

Clayers
 trainable_variables
Dlayer_regularization_losses
!	variables
Elayer_metrics
Fnon_trainable_variables
"regularization_losses
Gmetrics
v__call__
activity_regularizer_fn
*u&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:
2y_pred/kernel
:2y_pred/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
­

Hlayers
&trainable_variables
Ilayer_regularization_losses
'	variables
Jlayer_metrics
Knon_trainable_variables
(regularization_losses
Lmetrics
x__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	Ototal
	Pcount
Q	variables
R	keras_api"
_tf_keras_metric
^
	Stotal
	Tcount
U
_fn_kwargs
V	variables
W	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
O0
P1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
-
V	variables"
_generic_user_object
%:#2Adam/dense_4/kernel/m
:2Adam/dense_4/bias/m
%:#2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
%:#
2Adam/dense_6/kernel/m
:
2Adam/dense_6/bias/m
%:#

2Adam/dense_7/kernel/m
:
2Adam/dense_7/bias/m
$:"
2Adam/y_pred/kernel/m
:2Adam/y_pred/bias/m
%:#2Adam/dense_4/kernel/v
:2Adam/dense_4/bias/v
%:#2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
%:#
2Adam/dense_6/kernel/v
:
2Adam/dense_6/bias/v
%:#

2Adam/dense_7/kernel/v
:
2Adam/dense_7/bias/v
$:"
2Adam/y_pred/kernel/v
:2Adam/y_pred/bias/v
ю2ы
H__inference_sequential_2_layer_call_and_return_conditional_losses_417875
H__inference_sequential_2_layer_call_and_return_conditional_losses_417967
H__inference_sequential_2_layer_call_and_return_conditional_losses_417684
H__inference_sequential_2_layer_call_and_return_conditional_losses_417750Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2џ
-__inference_sequential_2_layer_call_fn_417367
-__inference_sequential_2_layer_call_fn_417996
-__inference_sequential_2_layer_call_fn_418025
-__inference_sequential_2_layer_call_fn_417618Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
вBЯ
!__inference__wrapped_model_417158dense_4_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_dense_4_layer_call_and_return_all_conditional_losses_418036Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_4_layer_call_fn_418045Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_dense_5_layer_call_and_return_all_conditional_losses_418056Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_5_layer_call_fn_418065Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_dense_6_layer_call_and_return_all_conditional_losses_418076Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_6_layer_call_fn_418085Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_dense_7_layer_call_and_return_all_conditional_losses_418096Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_7_layer_call_fn_418105Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_y_pred_layer_call_and_return_conditional_losses_418116Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_y_pred_layer_call_fn_418125Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
бBЮ
$__inference_signature_wrapper_417783dense_4_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
р2н
/__inference_dense_4_activity_regularizer_417171Љ
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ
	
э2ъ
C__inference_dense_4_layer_call_and_return_conditional_losses_418136Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
р2н
/__inference_dense_5_activity_regularizer_417184Љ
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ
	
э2ъ
C__inference_dense_5_layer_call_and_return_conditional_losses_418147Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
р2н
/__inference_dense_6_activity_regularizer_417197Љ
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ
	
э2ъ
C__inference_dense_6_layer_call_and_return_conditional_losses_418158Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
р2н
/__inference_dense_7_activity_regularizer_417210Љ
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ
	
э2ъ
C__inference_dense_7_layer_call_and_return_conditional_losses_418169Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
!__inference__wrapped_model_417158u
$%6Ђ3
,Ђ)
'$
dense_4_inputџџџџџџџџџ
Њ "/Њ,
*
y_pred 
y_predџџџџџџџџџY
/__inference_dense_4_activity_regularizer_417171&Ђ
Ђ
	
x
Њ " Е
G__inference_dense_4_layer_call_and_return_all_conditional_losses_418036j/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "3Ђ0

0џџџџџџџџџ

	
1/0 Ѓ
C__inference_dense_4_layer_call_and_return_conditional_losses_418136\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_dense_4_layer_call_fn_418045O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџY
/__inference_dense_5_activity_regularizer_417184&Ђ
Ђ
	
x
Њ " Е
G__inference_dense_5_layer_call_and_return_all_conditional_losses_418056j/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "3Ђ0

0џџџџџџџџџ

	
1/0 Ѓ
C__inference_dense_5_layer_call_and_return_conditional_losses_418147\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_dense_5_layer_call_fn_418065O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџY
/__inference_dense_6_activity_regularizer_417197&Ђ
Ђ
	
x
Њ " Е
G__inference_dense_6_layer_call_and_return_all_conditional_losses_418076j/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "3Ђ0

0џџџџџџџџџ


	
1/0 Ѓ
C__inference_dense_6_layer_call_and_return_conditional_losses_418158\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ

 {
(__inference_dense_6_layer_call_fn_418085O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ
Y
/__inference_dense_7_activity_regularizer_417210&Ђ
Ђ
	
x
Њ " Е
G__inference_dense_7_layer_call_and_return_all_conditional_losses_418096j/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "3Ђ0

0џџџџџџџџџ


	
1/0 Ѓ
C__inference_dense_7_layer_call_and_return_conditional_losses_418169\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ

 {
(__inference_dense_7_layer_call_fn_418105O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџ
ј
H__inference_sequential_2_layer_call_and_return_conditional_losses_417684Ћ
$%>Ђ;
4Ђ1
'$
dense_4_inputџџџџџџџџџ
p 

 
Њ "]ЂZ

0џџџџџџџџџ
;8
	
1/0 
	
1/1 
	
1/2 
	
1/3 ј
H__inference_sequential_2_layer_call_and_return_conditional_losses_417750Ћ
$%>Ђ;
4Ђ1
'$
dense_4_inputџџџџџџџџџ
p

 
Њ "]ЂZ

0џџџџџџџџџ
;8
	
1/0 
	
1/1 
	
1/2 
	
1/3 ё
H__inference_sequential_2_layer_call_and_return_conditional_losses_417875Є
$%7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "]ЂZ

0џџџџџџџџџ
;8
	
1/0 
	
1/1 
	
1/2 
	
1/3 ё
H__inference_sequential_2_layer_call_and_return_conditional_losses_417967Є
$%7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "]ЂZ

0џџџџџџџџџ
;8
	
1/0 
	
1/1 
	
1/2 
	
1/3 
-__inference_sequential_2_layer_call_fn_417367f
$%>Ђ;
4Ђ1
'$
dense_4_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_2_layer_call_fn_417618f
$%>Ђ;
4Ђ1
'$
dense_4_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
-__inference_sequential_2_layer_call_fn_417996_
$%7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_2_layer_call_fn_418025_
$%7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџЏ
$__inference_signature_wrapper_417783
$%GЂD
Ђ 
=Њ:
8
dense_4_input'$
dense_4_inputџџџџџџџџџ"/Њ,
*
y_pred 
y_predџџџџџџџџџЂ
B__inference_y_pred_layer_call_and_return_conditional_losses_418116\$%/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ
 z
'__inference_y_pred_layer_call_fn_418125O$%/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџ