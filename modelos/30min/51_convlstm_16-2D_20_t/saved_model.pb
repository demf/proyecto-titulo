Чэ
Ї ╚ 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
√
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
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
d
Shape

input"T&
output"out_typeКэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
О
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.15.02v2.15.0-0-g6887368d6d48╜Ы
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
|
count_2VarHandleOp*
_output_shapes
: *

debug_name
count_2/*
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
|
total_2VarHandleOp*
_output_shapes
: *

debug_name
total_2/*
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
д
Adam/v/dense_9/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_9/bias/*
dtype0*
shape:3*$
shared_nameAdam/v/dense_9/bias
w
'Adam/v/dense_9/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_9/bias*
_output_shapes
:3*
dtype0
д
Adam/m/dense_9/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_9/bias/*
dtype0*
shape:3*$
shared_nameAdam/m/dense_9/bias
w
'Adam/m/dense_9/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_9/bias*
_output_shapes
:3*
dtype0
п
Adam/v/dense_9/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_9/kernel/*
dtype0*
shape:	А3*&
shared_nameAdam/v/dense_9/kernel
А
)Adam/v/dense_9/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_9/kernel*
_output_shapes
:	А3*
dtype0
п
Adam/m/dense_9/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_9/kernel/*
dtype0*
shape:	А3*&
shared_nameAdam/m/dense_9/kernel
А
)Adam/m/dense_9/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_9/kernel*
_output_shapes
:	А3*
dtype0
е
Adam/v/dense_8/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_8/bias/*
dtype0*
shape:А*$
shared_nameAdam/v/dense_8/bias
x
'Adam/v/dense_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_8/bias*
_output_shapes	
:А*
dtype0
е
Adam/m/dense_8/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_8/bias/*
dtype0*
shape:А*$
shared_nameAdam/m/dense_8/bias
x
'Adam/m/dense_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_8/bias*
_output_shapes	
:А*
dtype0
░
Adam/v/dense_8/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_8/kernel/*
dtype0*
shape:
░А*&
shared_nameAdam/v/dense_8/kernel
Б
)Adam/v/dense_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_8/kernel* 
_output_shapes
:
░А*
dtype0
░
Adam/m/dense_8/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_8/kernel/*
dtype0*
shape:
░А*&
shared_nameAdam/m/dense_8/kernel
Б
)Adam/m/dense_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_8/kernel* 
_output_shapes
:
░А*
dtype0
╬
!Adam/v/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_5/beta/*
dtype0*
shape:*2
shared_name#!Adam/v/batch_normalization_5/beta
У
5Adam/v/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_5/beta*
_output_shapes
:*
dtype0
╬
!Adam/m/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_5/beta/*
dtype0*
shape:*2
shared_name#!Adam/m/batch_normalization_5/beta
У
5Adam/m/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_5/beta*
_output_shapes
:*
dtype0
╤
"Adam/v/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_5/gamma/*
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_5/gamma
Х
6Adam/v/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_5/gamma*
_output_shapes
:*
dtype0
╤
"Adam/m/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_5/gamma/*
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_5/gamma
Х
6Adam/m/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_5/gamma*
_output_shapes
:*
dtype0
╢
Adam/v/conv_lstm2d_5/biasVarHandleOp*
_output_shapes
: **

debug_nameAdam/v/conv_lstm2d_5/bias/*
dtype0*
shape:@**
shared_nameAdam/v/conv_lstm2d_5/bias
Г
-Adam/v/conv_lstm2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv_lstm2d_5/bias*
_output_shapes
:@*
dtype0
╢
Adam/m/conv_lstm2d_5/biasVarHandleOp*
_output_shapes
: **

debug_nameAdam/m/conv_lstm2d_5/bias/*
dtype0*
shape:@**
shared_nameAdam/m/conv_lstm2d_5/bias
Г
-Adam/m/conv_lstm2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv_lstm2d_5/bias*
_output_shapes
:@*
dtype0
ц
%Adam/v/conv_lstm2d_5/recurrent_kernelVarHandleOp*
_output_shapes
: *6

debug_name(&Adam/v/conv_lstm2d_5/recurrent_kernel/*
dtype0*
shape:@*6
shared_name'%Adam/v/conv_lstm2d_5/recurrent_kernel
з
9Adam/v/conv_lstm2d_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp%Adam/v/conv_lstm2d_5/recurrent_kernel*&
_output_shapes
:@*
dtype0
ц
%Adam/m/conv_lstm2d_5/recurrent_kernelVarHandleOp*
_output_shapes
: *6

debug_name(&Adam/m/conv_lstm2d_5/recurrent_kernel/*
dtype0*
shape:@*6
shared_name'%Adam/m/conv_lstm2d_5/recurrent_kernel
з
9Adam/m/conv_lstm2d_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp%Adam/m/conv_lstm2d_5/recurrent_kernel*&
_output_shapes
:@*
dtype0
╚
Adam/v/conv_lstm2d_5/kernelVarHandleOp*
_output_shapes
: *,

debug_nameAdam/v/conv_lstm2d_5/kernel/*
dtype0*
shape:@*,
shared_nameAdam/v/conv_lstm2d_5/kernel
У
/Adam/v/conv_lstm2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv_lstm2d_5/kernel*&
_output_shapes
:@*
dtype0
╚
Adam/m/conv_lstm2d_5/kernelVarHandleOp*
_output_shapes
: *,

debug_nameAdam/m/conv_lstm2d_5/kernel/*
dtype0*
shape:@*,
shared_nameAdam/m/conv_lstm2d_5/kernel
У
/Adam/m/conv_lstm2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv_lstm2d_5/kernel*&
_output_shapes
:@*
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
б
conv_lstm2d_5/biasVarHandleOp*
_output_shapes
: *#

debug_nameconv_lstm2d_5/bias/*
dtype0*
shape:@*#
shared_nameconv_lstm2d_5/bias
u
&conv_lstm2d_5/bias/Read/ReadVariableOpReadVariableOpconv_lstm2d_5/bias*
_output_shapes
:@*
dtype0
╤
conv_lstm2d_5/recurrent_kernelVarHandleOp*
_output_shapes
: */

debug_name!conv_lstm2d_5/recurrent_kernel/*
dtype0*
shape:@*/
shared_name conv_lstm2d_5/recurrent_kernel
Щ
2conv_lstm2d_5/recurrent_kernel/Read/ReadVariableOpReadVariableOpconv_lstm2d_5/recurrent_kernel*&
_output_shapes
:@*
dtype0
│
conv_lstm2d_5/kernelVarHandleOp*
_output_shapes
: *%

debug_nameconv_lstm2d_5/kernel/*
dtype0*
shape:@*%
shared_nameconv_lstm2d_5/kernel
Е
(conv_lstm2d_5/kernel/Read/ReadVariableOpReadVariableOpconv_lstm2d_5/kernel*&
_output_shapes
:@*
dtype0
П
dense_9/biasVarHandleOp*
_output_shapes
: *

debug_namedense_9/bias/*
dtype0*
shape:3*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:3*
dtype0
Ъ
dense_9/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_9/kernel/*
dtype0*
shape:	А3*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	А3*
dtype0
Р
dense_8/biasVarHandleOp*
_output_shapes
: *

debug_namedense_8/bias/*
dtype0*
shape:А*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:А*
dtype0
Ы
dense_8/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_8/kernel/*
dtype0*
shape:
░А*
shared_namedense_8/kernel
s
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel* 
_output_shapes
:
░А*
dtype0
┌
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_5/moving_variance/*
dtype0*
shape:*6
shared_name'%batch_normalization_5/moving_variance
Ы
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:*
dtype0
╬
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_5/moving_mean/*
dtype0*
shape:*2
shared_name#!batch_normalization_5/moving_mean
У
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:*
dtype0
╣
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_5/beta/*
dtype0*
shape:*+
shared_namebatch_normalization_5/beta
Е
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes
:*
dtype0
╝
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_5/gamma/*
dtype0*
shape:*,
shared_namebatch_normalization_5/gamma
З
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:*
dtype0
К
serving_default_reshape_8_inputPlaceholder*+
_output_shapes
:         3*
dtype0* 
shape:         3
Ў
StatefulPartitionedCallStatefulPartitionedCallserving_default_reshape_8_inputconv_lstm2d_5/kernelconv_lstm2d_5/recurrent_kernelconv_lstm2d_5/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         3*-
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *-
f(R&
$__inference_signature_wrapper_879282

NoOpNoOp
┤Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*яY
valueхYBтY B█Y
й
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell
 
state_spec*
╒
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'axis
	(gamma
)beta
*moving_mean
+moving_variance*
е
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_random_generator* 
О
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
ж
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias*
е
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G_random_generator* 
ж
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias*
О
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
R
V0
W1
X2
(3
)4
*5
+6
?7
@8
N9
O10*
C
V0
W1
X2
(3
)4
?5
@6
N7
O8*
	
Y0* 
░
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

_trace_0
`trace_1* 

atrace_0
btrace_1* 
* 
Б
c
_variables
d_iterations
e_learning_rate
f_index_dict
g
_momentums
h_velocities
i_update_step_xla*

jserving_default* 
* 
* 
* 
С
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

ptrace_0* 

qtrace_0* 

V0
W1
X2*

V0
W1
X2*
	
r0* 
Я

sstates
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ytrace_0
ztrace_1
{trace_2
|trace_3* 
7
}trace_0
~trace_1
trace_2
Аtrace_3* 
┌
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
З_random_generator

Vkernel
Wrecurrent_kernel
Xbias*
* 
 
(0
)1
*2
+3*

(0
)1*
* 
Ш
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

Нtrace_0
Оtrace_1* 

Пtrace_0
Рtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

Цtrace_0
Чtrace_1* 

Шtrace_0
Щtrace_1* 
* 
* 
* 
* 
Ц
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

Яtrace_0* 

аtrace_0* 

?0
@1*

?0
@1*
	
Y0* 
Ш
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

жtrace_0* 

зtrace_0* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

нtrace_0
оtrace_1* 

пtrace_0
░trace_1* 
* 

N0
O1*

N0
O1*
* 
Ш
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

╢trace_0* 

╖trace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

╜trace_0* 

╛trace_0* 
TN
VARIABLE_VALUEconv_lstm2d_5/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv_lstm2d_5/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv_lstm2d_5/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*

┐trace_0* 

*0
+1*
C
0
1
2
3
4
5
6
7
	8*

└0
┴1
┬2*
* 
* 
* 
* 
* 
* 
д
d0
├1
─2
┼3
╞4
╟5
╚6
╔7
╩8
╦9
╠10
═11
╬12
╧13
╨14
╤15
╥16
╙17
╘18*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
L
├0
┼1
╟2
╔3
╦4
═5
╧6
╤7
╙8*
L
─0
╞1
╚2
╩3
╠4
╬5
╨6
╥7
╘8*
* 
* 
* 
* 
* 
* 
* 
* 
* 

╒trace_0* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

V0
W1
X2*

V0
W1
X2*
	
r0* 
Ю
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses*

█trace_0
▄trace_1* 

▌trace_0
▐trace_1* 
* 

*0
+1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
Y0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
▀	variables
р	keras_api

сtotal

тcount*
<
у	variables
ф	keras_api

хtotal

цcount*
M
ч	variables
ш	keras_api

щtotal

ъcount
ы
_fn_kwargs*
f`
VARIABLE_VALUEAdam/m/conv_lstm2d_5/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/conv_lstm2d_5/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/m/conv_lstm2d_5/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/v/conv_lstm2d_5/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/conv_lstm2d_5/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv_lstm2d_5/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_5/gamma1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_5/gamma1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/batch_normalization_5/beta1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_5/beta2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_8/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_8/kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_8/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_8/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_9/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_9/kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_9/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_9/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
	
r0* 
* 
* 
* 
* 
* 

с0
т1*

▀	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

х0
ц1*

у	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

щ0
ъ1*

ч	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
к	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamebatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense_8/kerneldense_8/biasdense_9/kerneldense_9/biasconv_lstm2d_5/kernelconv_lstm2d_5/recurrent_kernelconv_lstm2d_5/bias	iterationlearning_rateAdam/m/conv_lstm2d_5/kernelAdam/v/conv_lstm2d_5/kernel%Adam/m/conv_lstm2d_5/recurrent_kernel%Adam/v/conv_lstm2d_5/recurrent_kernelAdam/m/conv_lstm2d_5/biasAdam/v/conv_lstm2d_5/bias"Adam/m/batch_normalization_5/gamma"Adam/v/batch_normalization_5/gamma!Adam/m/batch_normalization_5/beta!Adam/v/batch_normalization_5/betaAdam/m/dense_8/kernelAdam/v/dense_8/kernelAdam/m/dense_8/biasAdam/v/dense_8/biasAdam/m/dense_9/kernelAdam/v/dense_9/kernelAdam/m/dense_9/biasAdam/v/dense_9/biastotal_2count_2total_1count_1totalcountConst*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *(
f#R!
__inference__traced_save_880902
е	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense_8/kerneldense_8/biasdense_9/kerneldense_9/biasconv_lstm2d_5/kernelconv_lstm2d_5/recurrent_kernelconv_lstm2d_5/bias	iterationlearning_rateAdam/m/conv_lstm2d_5/kernelAdam/v/conv_lstm2d_5/kernel%Adam/m/conv_lstm2d_5/recurrent_kernel%Adam/v/conv_lstm2d_5/recurrent_kernelAdam/m/conv_lstm2d_5/biasAdam/v/conv_lstm2d_5/bias"Adam/m/batch_normalization_5/gamma"Adam/v/batch_normalization_5/gamma!Adam/m/batch_normalization_5/beta!Adam/v/batch_normalization_5/betaAdam/m/dense_8/kernelAdam/v/dense_8/kernelAdam/m/dense_8/biasAdam/v/dense_8/biasAdam/m/dense_9/kernelAdam/v/dense_9/kernelAdam/m/dense_9/biasAdam/v/dense_9/biastotal_2count_2total_1count_1totalcount*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *+
f&R$
"__inference__traced_restore_881022У╨
▄	
┴
while_cond_878596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_878596___redundant_placeholder04
0while_while_cond_878596___redundant_placeholder14
0while_while_cond_878596___redundant_placeholder24
0while_while_cond_878596___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :         3:         3: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
:
╛
G
+__inference_dropout_10_layer_call_fn_880396

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_879098a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╫
a
E__inference_reshape_8_layer_call_and_return_conditional_losses_878501

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :3Q
Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :├
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:p
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         3d
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         3"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         3:S O
+
_output_shapes
:         3
 
_user_specified_nameinputs
к
д
-__inference_sequential_4_layer_call_fn_879169
reshape_8_input!
unknown:@#
	unknown_0:@
	unknown_1:@
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
░А
	unknown_7:	А
	unknown_8:	А3
	unknown_9:3
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallreshape_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         3*-
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_879115s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         3: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         3
)
_user_specified_namereshape_8_input:&"
 
_user_specified_name879145:&"
 
_user_specified_name879147:&"
 
_user_specified_name879149:&"
 
_user_specified_name879151:&"
 
_user_specified_name879153:&"
 
_user_specified_name879155:&"
 
_user_specified_name879157:&"
 
_user_specified_name879159:&	"
 
_user_specified_name879161:&
"
 
_user_specified_name879163:&"
 
_user_specified_name879165
ь
d
+__inference_dropout_10_layer_call_fn_880391

inputs
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_878796p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▄	
┴
while_cond_879674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_879674___redundant_placeholder04
0while_while_cond_879674___redundant_placeholder14
0while_while_cond_879674___redundant_placeholder24
0while_while_cond_879674___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :         3:         3: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
:
·
Ы
$__inference_signature_wrapper_879282
reshape_8_input!
unknown:@#
	unknown_0:@
	unknown_1:@
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
░А
	unknown_7:	А
	unknown_8:	А3
	unknown_9:3
identityИвStatefulPartitionedCall╤
StatefulPartitionedCallStatefulPartitionedCallreshape_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         3*-
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В **
f%R#
!__inference__wrapped_model_877988s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         3: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         3
)
_user_specified_namereshape_8_input:&"
 
_user_specified_name879258:&"
 
_user_specified_name879260:&"
 
_user_specified_name879262:&"
 
_user_specified_name879264:&"
 
_user_specified_name879266:&"
 
_user_specified_name879268:&"
 
_user_specified_name879270:&"
 
_user_specified_name879272:&	"
 
_user_specified_name879274:&
"
 
_user_specified_name879276:&"
 
_user_specified_name879278
═]
ы
while_body_880127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0?
%while_split_readvariableop_resource_0:@A
'while_split_1_readvariableop_resource_0:@5
'while_split_2_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor=
#while_split_readvariableop_resource:@?
%while_split_1_readvariableop_resource:@3
%while_split_2_readvariableop_resource:@Ивwhile/split/ReadVariableOpвwhile/split_1/ReadVariableOpвwhile/split_2/ReadVariableOpР
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      о
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:         3*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╨
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╓
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : А
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes
:@*
dtype0ж
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_split┼
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Ж
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:         3╟
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:         3╟
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:         3╟
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:         3м
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
В
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:         3P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?o
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:         3u
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:         3b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:         3Ж
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:         3R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:         3w
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3|
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:         3Ж
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:         3]

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:         3
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:         3p
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:         3Ж
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:         3R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:         3w
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3_
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:         3Г
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:         3r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_5:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3Г

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :         3:         3: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
╟
к
C__inference_dense_8_layer_call_and_return_conditional_losses_880386

inputs2
matmul_readvariableop_resource:
░А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
░А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         АС
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
░А*
dtype0Ж
!dense_8/kernel/Regularizer/L2LossL2Loss8dense_8/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<Э
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0*dense_8/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АЖ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ░: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:         ░
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╟
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_880362

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    0  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ░Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ░"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         3:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs
№	
├
__inference_loss_fn_1_880466Y
?conv_lstm2d_5_kernel_regularizer_l2loss_readvariableop_resource:@
identityИв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp╛
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp?conv_lstm2d_5_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: f
IdentityIdentity(conv_lstm2d_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
╤

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_880346

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         3Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         3*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         3T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         3i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         3"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         3:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs
°
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_879086

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         3c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         3"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         3:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs
Ж
c
*__inference_dropout_9_layer_call_fn_880329

inputs
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_878756w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         322
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs
═]
ы
while_body_879675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0?
%while_split_readvariableop_resource_0:@A
'while_split_1_readvariableop_resource_0:@5
'while_split_2_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor=
#while_split_readvariableop_resource:@?
%while_split_1_readvariableop_resource:@3
%while_split_2_readvariableop_resource:@Ивwhile/split/ReadVariableOpвwhile/split_1/ReadVariableOpвwhile/split_2/ReadVariableOpР
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      о
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:         3*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╨
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╓
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : А
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes
:@*
dtype0ж
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_split┼
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Ж
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:         3╟
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:         3╟
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:         3╟
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:         3м
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
В
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:         3P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?o
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:         3u
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:         3b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:         3Ж
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:         3R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:         3w
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3|
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:         3Ж
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:         3]

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:         3
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:         3p
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:         3Ж
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:         3R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:         3w
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3_
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:         3Г
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:         3r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_5:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3Г

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :         3:         3: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
тD
╩
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_880658

inputs
states_0
states_17
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identity

identity_1

identity_2Ив6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitП
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
t
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:         3С
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:         3С
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:         3С
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:         3Х
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Х
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Х
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Х
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3e
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:         3b

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:         3b

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:         3д
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:         3:         3:         3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs:YU
/
_output_shapes
:         3
"
_user_specified_name
states_0:YU
/
_output_shapes
:         3
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╪
F
*__inference_dropout_9_layer_call_fn_880334

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_879086h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         3"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         3:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs
Ю9
д
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_878366

inputs!
unknown:@#
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвwhilef

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&                  3W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:         3j
zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    Х
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ~
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&                  3P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskЕ
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:         3:         3:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *S
fNRL
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_878278v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :         3:         3: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_878293*
condR
while_cond_878292*[
output_shapesJ
H: : : : :         3:         3: : : : : *
parallel_iterations Й
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ▐
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:         3*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                Ю
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         3Ж
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpunknown*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*/
_output_shapes
:         3}
NoOpNoOp^StatefulPartitionedCall7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&                  3: : : 22
StatefulPartitionedCallStatefulPartitionedCall2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&                  3
 
_user_specified_nameinputs:&"
 
_user_specified_name878279:&"
 
_user_specified_name878281:&"
 
_user_specified_name878283
╤

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_878756

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         3Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         3*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         3T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         3i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         3"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         3:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs
▄	
┴
while_cond_880126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_880126___redundant_placeholder04
0while_while_cond_880126___redundant_placeholder14
0while_while_cond_880126___redundant_placeholder24
0while_while_cond_880126___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :         3:         3: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
:
╓Р
╧
,sequential_4_conv_lstm2d_5_while_body_877821R
Nsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_loop_counterX
Tsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_maximum_iterations0
,sequential_4_conv_lstm2d_5_while_placeholder2
.sequential_4_conv_lstm2d_5_while_placeholder_12
.sequential_4_conv_lstm2d_5_while_placeholder_22
.sequential_4_conv_lstm2d_5_while_placeholder_3O
Ksequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_strided_slice_0О
Йsequential_4_conv_lstm2d_5_while_tensorarrayv2read_tensorlistgetitem_sequential_4_conv_lstm2d_5_tensorarrayunstack_tensorlistfromtensor_0Z
@sequential_4_conv_lstm2d_5_while_split_readvariableop_resource_0:@\
Bsequential_4_conv_lstm2d_5_while_split_1_readvariableop_resource_0:@P
Bsequential_4_conv_lstm2d_5_while_split_2_readvariableop_resource_0:@-
)sequential_4_conv_lstm2d_5_while_identity/
+sequential_4_conv_lstm2d_5_while_identity_1/
+sequential_4_conv_lstm2d_5_while_identity_2/
+sequential_4_conv_lstm2d_5_while_identity_3/
+sequential_4_conv_lstm2d_5_while_identity_4/
+sequential_4_conv_lstm2d_5_while_identity_5M
Isequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_strided_sliceМ
Зsequential_4_conv_lstm2d_5_while_tensorarrayv2read_tensorlistgetitem_sequential_4_conv_lstm2d_5_tensorarrayunstack_tensorlistfromtensorX
>sequential_4_conv_lstm2d_5_while_split_readvariableop_resource:@Z
@sequential_4_conv_lstm2d_5_while_split_1_readvariableop_resource:@N
@sequential_4_conv_lstm2d_5_while_split_2_readvariableop_resource:@Ив5sequential_4/conv_lstm2d_5/while/split/ReadVariableOpв7sequential_4/conv_lstm2d_5/while/split_1/ReadVariableOpв7sequential_4/conv_lstm2d_5/while/split_2/ReadVariableOpл
Rsequential_4/conv_lstm2d_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ╢
Dsequential_4/conv_lstm2d_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЙsequential_4_conv_lstm2d_5_while_tensorarrayv2read_tensorlistgetitem_sequential_4_conv_lstm2d_5_tensorarrayunstack_tensorlistfromtensor_0,sequential_4_conv_lstm2d_5_while_placeholder[sequential_4/conv_lstm2d_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:         3*
element_dtype0r
0sequential_4/conv_lstm2d_5/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╛
5sequential_4/conv_lstm2d_5/while/split/ReadVariableOpReadVariableOp@sequential_4_conv_lstm2d_5_while_split_readvariableop_resource_0*&
_output_shapes
:@*
dtype0б
&sequential_4/conv_lstm2d_5/while/splitSplit9sequential_4/conv_lstm2d_5/while/split/split_dim:output:0=sequential_4/conv_lstm2d_5/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitt
2sequential_4/conv_lstm2d_5/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┬
7sequential_4/conv_lstm2d_5/while/split_1/ReadVariableOpReadVariableOpBsequential_4_conv_lstm2d_5_while_split_1_readvariableop_resource_0*&
_output_shapes
:@*
dtype0з
(sequential_4/conv_lstm2d_5/while/split_1Split;sequential_4/conv_lstm2d_5/while/split_1/split_dim:output:0?sequential_4/conv_lstm2d_5/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitt
2sequential_4/conv_lstm2d_5/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ╢
7sequential_4/conv_lstm2d_5/while/split_2/ReadVariableOpReadVariableOpBsequential_4_conv_lstm2d_5_while_split_2_readvariableop_resource_0*
_output_shapes
:@*
dtype0ў
(sequential_4/conv_lstm2d_5/while/split_2Split;sequential_4/conv_lstm2d_5/while/split_2/split_dim:output:0?sequential_4/conv_lstm2d_5/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitЦ
,sequential_4/conv_lstm2d_5/while/convolutionConv2DKsequential_4/conv_lstm2d_5/while/TensorArrayV2Read/TensorListGetItem:item:0/sequential_4/conv_lstm2d_5/while/split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
╫
(sequential_4/conv_lstm2d_5/while/BiasAddBiasAdd5sequential_4/conv_lstm2d_5/while/convolution:output:01sequential_4/conv_lstm2d_5/while/split_2:output:0*
T0*/
_output_shapes
:         3Ш
.sequential_4/conv_lstm2d_5/while/convolution_1Conv2DKsequential_4/conv_lstm2d_5/while/TensorArrayV2Read/TensorListGetItem:item:0/sequential_4/conv_lstm2d_5/while/split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
█
*sequential_4/conv_lstm2d_5/while/BiasAdd_1BiasAdd7sequential_4/conv_lstm2d_5/while/convolution_1:output:01sequential_4/conv_lstm2d_5/while/split_2:output:1*
T0*/
_output_shapes
:         3Ш
.sequential_4/conv_lstm2d_5/while/convolution_2Conv2DKsequential_4/conv_lstm2d_5/while/TensorArrayV2Read/TensorListGetItem:item:0/sequential_4/conv_lstm2d_5/while/split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
█
*sequential_4/conv_lstm2d_5/while/BiasAdd_2BiasAdd7sequential_4/conv_lstm2d_5/while/convolution_2:output:01sequential_4/conv_lstm2d_5/while/split_2:output:2*
T0*/
_output_shapes
:         3Ш
.sequential_4/conv_lstm2d_5/while/convolution_3Conv2DKsequential_4/conv_lstm2d_5/while/TensorArrayV2Read/TensorListGetItem:item:0/sequential_4/conv_lstm2d_5/while/split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
█
*sequential_4/conv_lstm2d_5/while/BiasAdd_3BiasAdd7sequential_4/conv_lstm2d_5/while/convolution_3:output:01sequential_4/conv_lstm2d_5/while/split_2:output:3*
T0*/
_output_shapes
:         3¤
.sequential_4/conv_lstm2d_5/while/convolution_4Conv2D.sequential_4_conv_lstm2d_5_while_placeholder_21sequential_4/conv_lstm2d_5/while/split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
¤
.sequential_4/conv_lstm2d_5/while/convolution_5Conv2D.sequential_4_conv_lstm2d_5_while_placeholder_21sequential_4/conv_lstm2d_5/while/split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
¤
.sequential_4/conv_lstm2d_5/while/convolution_6Conv2D.sequential_4_conv_lstm2d_5_while_placeholder_21sequential_4/conv_lstm2d_5/while/split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
¤
.sequential_4/conv_lstm2d_5/while/convolution_7Conv2D.sequential_4_conv_lstm2d_5_while_placeholder_21sequential_4/conv_lstm2d_5/while/split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
╙
$sequential_4/conv_lstm2d_5/while/addAddV21sequential_4/conv_lstm2d_5/while/BiasAdd:output:07sequential_4/conv_lstm2d_5/while/convolution_4:output:0*
T0*/
_output_shapes
:         3k
&sequential_4/conv_lstm2d_5/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>m
(sequential_4/conv_lstm2d_5/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?└
$sequential_4/conv_lstm2d_5/while/MulMul(sequential_4/conv_lstm2d_5/while/add:z:0/sequential_4/conv_lstm2d_5/while/Const:output:0*
T0*/
_output_shapes
:         3╞
&sequential_4/conv_lstm2d_5/while/Add_1AddV2(sequential_4/conv_lstm2d_5/while/Mul:z:01sequential_4/conv_lstm2d_5/while/Const_1:output:0*
T0*/
_output_shapes
:         3}
8sequential_4/conv_lstm2d_5/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ъ
6sequential_4/conv_lstm2d_5/while/clip_by_value/MinimumMinimum*sequential_4/conv_lstm2d_5/while/Add_1:z:0Asequential_4/conv_lstm2d_5/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3u
0sequential_4/conv_lstm2d_5/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ъ
.sequential_4/conv_lstm2d_5/while/clip_by_valueMaximum:sequential_4/conv_lstm2d_5/while/clip_by_value/Minimum:z:09sequential_4/conv_lstm2d_5/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:         3╫
&sequential_4/conv_lstm2d_5/while/add_2AddV23sequential_4/conv_lstm2d_5/while/BiasAdd_1:output:07sequential_4/conv_lstm2d_5/while/convolution_5:output:0*
T0*/
_output_shapes
:         3m
(sequential_4/conv_lstm2d_5/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>m
(sequential_4/conv_lstm2d_5/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?╞
&sequential_4/conv_lstm2d_5/while/Mul_1Mul*sequential_4/conv_lstm2d_5/while/add_2:z:01sequential_4/conv_lstm2d_5/while/Const_2:output:0*
T0*/
_output_shapes
:         3╚
&sequential_4/conv_lstm2d_5/while/Add_3AddV2*sequential_4/conv_lstm2d_5/while/Mul_1:z:01sequential_4/conv_lstm2d_5/while/Const_3:output:0*
T0*/
_output_shapes
:         3
:sequential_4/conv_lstm2d_5/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ю
8sequential_4/conv_lstm2d_5/while/clip_by_value_1/MinimumMinimum*sequential_4/conv_lstm2d_5/while/Add_3:z:0Csequential_4/conv_lstm2d_5/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3w
2sequential_4/conv_lstm2d_5/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
0sequential_4/conv_lstm2d_5/while/clip_by_value_1Maximum<sequential_4/conv_lstm2d_5/while/clip_by_value_1/Minimum:z:0;sequential_4/conv_lstm2d_5/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3═
&sequential_4/conv_lstm2d_5/while/mul_2Mul4sequential_4/conv_lstm2d_5/while/clip_by_value_1:z:0.sequential_4_conv_lstm2d_5_while_placeholder_3*
T0*/
_output_shapes
:         3╫
&sequential_4/conv_lstm2d_5/while/add_4AddV23sequential_4/conv_lstm2d_5/while/BiasAdd_2:output:07sequential_4/conv_lstm2d_5/while/convolution_6:output:0*
T0*/
_output_shapes
:         3У
%sequential_4/conv_lstm2d_5/while/ReluRelu*sequential_4/conv_lstm2d_5/while/add_4:z:0*
T0*/
_output_shapes
:         3╨
&sequential_4/conv_lstm2d_5/while/mul_3Mul2sequential_4/conv_lstm2d_5/while/clip_by_value:z:03sequential_4/conv_lstm2d_5/while/Relu:activations:0*
T0*/
_output_shapes
:         3┴
&sequential_4/conv_lstm2d_5/while/add_5AddV2*sequential_4/conv_lstm2d_5/while/mul_2:z:0*sequential_4/conv_lstm2d_5/while/mul_3:z:0*
T0*/
_output_shapes
:         3╫
&sequential_4/conv_lstm2d_5/while/add_6AddV23sequential_4/conv_lstm2d_5/while/BiasAdd_3:output:07sequential_4/conv_lstm2d_5/while/convolution_7:output:0*
T0*/
_output_shapes
:         3m
(sequential_4/conv_lstm2d_5/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>m
(sequential_4/conv_lstm2d_5/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?╞
&sequential_4/conv_lstm2d_5/while/Mul_4Mul*sequential_4/conv_lstm2d_5/while/add_6:z:01sequential_4/conv_lstm2d_5/while/Const_4:output:0*
T0*/
_output_shapes
:         3╚
&sequential_4/conv_lstm2d_5/while/Add_7AddV2*sequential_4/conv_lstm2d_5/while/Mul_4:z:01sequential_4/conv_lstm2d_5/while/Const_5:output:0*
T0*/
_output_shapes
:         3
:sequential_4/conv_lstm2d_5/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ю
8sequential_4/conv_lstm2d_5/while/clip_by_value_2/MinimumMinimum*sequential_4/conv_lstm2d_5/while/Add_7:z:0Csequential_4/conv_lstm2d_5/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3w
2sequential_4/conv_lstm2d_5/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
0sequential_4/conv_lstm2d_5/while/clip_by_value_2Maximum<sequential_4/conv_lstm2d_5/while/clip_by_value_2/Minimum:z:0;sequential_4/conv_lstm2d_5/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3Х
'sequential_4/conv_lstm2d_5/while/Relu_1Relu*sequential_4/conv_lstm2d_5/while/add_5:z:0*
T0*/
_output_shapes
:         3╘
&sequential_4/conv_lstm2d_5/while/mul_5Mul4sequential_4/conv_lstm2d_5/while/clip_by_value_2:z:05sequential_4/conv_lstm2d_5/while/Relu_1:activations:0*
T0*/
_output_shapes
:         3Н
Ksequential_4/conv_lstm2d_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ╠
Esequential_4/conv_lstm2d_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_4_conv_lstm2d_5_while_placeholder_1Tsequential_4/conv_lstm2d_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0*sequential_4/conv_lstm2d_5/while/mul_5:z:0*
_output_shapes
: *
element_dtype0:щш╥j
(sequential_4/conv_lstm2d_5/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :▒
&sequential_4/conv_lstm2d_5/while/add_8AddV2,sequential_4_conv_lstm2d_5_while_placeholder1sequential_4/conv_lstm2d_5/while/add_8/y:output:0*
T0*
_output_shapes
: j
(sequential_4/conv_lstm2d_5/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :╙
&sequential_4/conv_lstm2d_5/while/add_9AddV2Nsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_loop_counter1sequential_4/conv_lstm2d_5/while/add_9/y:output:0*
T0*
_output_shapes
: к
)sequential_4/conv_lstm2d_5/while/IdentityIdentity*sequential_4/conv_lstm2d_5/while/add_9:z:0&^sequential_4/conv_lstm2d_5/while/NoOp*
T0*
_output_shapes
: ╓
+sequential_4/conv_lstm2d_5/while/Identity_1IdentityTsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_maximum_iterations&^sequential_4/conv_lstm2d_5/while/NoOp*
T0*
_output_shapes
: м
+sequential_4/conv_lstm2d_5/while/Identity_2Identity*sequential_4/conv_lstm2d_5/while/add_8:z:0&^sequential_4/conv_lstm2d_5/while/NoOp*
T0*
_output_shapes
: ╫
+sequential_4/conv_lstm2d_5/while/Identity_3IdentityUsequential_4/conv_lstm2d_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^sequential_4/conv_lstm2d_5/while/NoOp*
T0*
_output_shapes
: ┼
+sequential_4/conv_lstm2d_5/while/Identity_4Identity*sequential_4/conv_lstm2d_5/while/mul_5:z:0&^sequential_4/conv_lstm2d_5/while/NoOp*
T0*/
_output_shapes
:         3┼
+sequential_4/conv_lstm2d_5/while/Identity_5Identity*sequential_4/conv_lstm2d_5/while/add_5:z:0&^sequential_4/conv_lstm2d_5/while/NoOp*
T0*/
_output_shapes
:         3я
%sequential_4/conv_lstm2d_5/while/NoOpNoOp6^sequential_4/conv_lstm2d_5/while/split/ReadVariableOp8^sequential_4/conv_lstm2d_5/while/split_1/ReadVariableOp8^sequential_4/conv_lstm2d_5/while/split_2/ReadVariableOp*
_output_shapes
 "_
)sequential_4_conv_lstm2d_5_while_identity2sequential_4/conv_lstm2d_5/while/Identity:output:0"c
+sequential_4_conv_lstm2d_5_while_identity_14sequential_4/conv_lstm2d_5/while/Identity_1:output:0"c
+sequential_4_conv_lstm2d_5_while_identity_24sequential_4/conv_lstm2d_5/while/Identity_2:output:0"c
+sequential_4_conv_lstm2d_5_while_identity_34sequential_4/conv_lstm2d_5/while/Identity_3:output:0"c
+sequential_4_conv_lstm2d_5_while_identity_44sequential_4/conv_lstm2d_5/while/Identity_4:output:0"c
+sequential_4_conv_lstm2d_5_while_identity_54sequential_4/conv_lstm2d_5/while/Identity_5:output:0"Ш
Isequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_strided_sliceKsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_strided_slice_0"Ж
@sequential_4_conv_lstm2d_5_while_split_1_readvariableop_resourceBsequential_4_conv_lstm2d_5_while_split_1_readvariableop_resource_0"Ж
@sequential_4_conv_lstm2d_5_while_split_2_readvariableop_resourceBsequential_4_conv_lstm2d_5_while_split_2_readvariableop_resource_0"В
>sequential_4_conv_lstm2d_5_while_split_readvariableop_resource@sequential_4_conv_lstm2d_5_while_split_readvariableop_resource_0"Ц
Зsequential_4_conv_lstm2d_5_while_tensorarrayv2read_tensorlistgetitem_sequential_4_conv_lstm2d_5_tensorarrayunstack_tensorlistfromtensorЙsequential_4_conv_lstm2d_5_while_tensorarrayv2read_tensorlistgetitem_sequential_4_conv_lstm2d_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :         3:         3: : : : : 2n
5sequential_4/conv_lstm2d_5/while/split/ReadVariableOp5sequential_4/conv_lstm2d_5/while/split/ReadVariableOp2r
7sequential_4/conv_lstm2d_5/while/split_1/ReadVariableOp7sequential_4/conv_lstm2d_5/while/split_1/ReadVariableOp2r
7sequential_4/conv_lstm2d_5/while/split_2/ReadVariableOp7sequential_4/conv_lstm2d_5/while/split_2/ReadVariableOp:e a

_output_shapes
: 
G
_user_specified_name/-sequential_4/conv_lstm2d_5/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_4/conv_lstm2d_5/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:`\

_output_shapes
: 
B
_user_specified_name*(sequential_4/conv_lstm2d_5/strided_slice:zv

_output_shapes
: 
\
_user_specified_nameDBsequential_4/conv_lstm2d_5/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
═]
ы
while_body_879449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0?
%while_split_readvariableop_resource_0:@A
'while_split_1_readvariableop_resource_0:@5
'while_split_2_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor=
#while_split_readvariableop_resource:@?
%while_split_1_readvariableop_resource:@3
%while_split_2_readvariableop_resource:@Ивwhile/split/ReadVariableOpвwhile/split_1/ReadVariableOpвwhile/split_2/ReadVariableOpР
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      о
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:         3*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╨
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╓
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : А
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes
:@*
dtype0ж
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_split┼
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Ж
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:         3╟
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:         3╟
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:         3╟
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:         3м
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
В
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:         3P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?o
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:         3u
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:         3b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:         3Ж
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:         3R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:         3w
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3|
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:         3Ж
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:         3]

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:         3
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:         3p
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:         3Ж
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:         3R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:         3w
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3_
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:         3Г
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:         3r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_5:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3Г

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :         3:         3: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
╝j
Х
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_880258

inputs7
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identityИв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpвwhile]

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:         3W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:         3j
zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    Х
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                u
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:         3P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitг
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:         3г
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:         3г
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:         3г
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:         3б
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3q
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :         3:         3: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_880127*
condR
while_cond_880126*[
output_shapesJ
H: : : : :         3:         3: : : : : *
parallel_iterations Й
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ▐
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:         3*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                Ю
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*/
_output_shapes
:         3м
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:         3
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╝j
Х
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879065

inputs7
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identityИв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpвwhile]

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:         3W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:         3j
zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    Х
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                u
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:         3P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitг
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:         3г
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:         3г
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:         3г
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:         3б
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3q
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :         3:         3: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_878934*
condR
while_cond_878933*[
output_shapesJ
H: : : : :         3:         3: : : : : *
parallel_iterations Й
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ▐
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:         3*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                Ю
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*/
_output_shapes
:         3м
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:         3
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
└
F
*__inference_reshape_9_layer_call_fn_880437

inputs
identity═
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_reshape_9_layer_call_and_return_conditional_losses_878825d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         3"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         3:O K
'
_output_shapes
:         3
 
_user_specified_nameinputs
КЯ
╫"
__inference__traced_save_880902
file_prefix@
2read_disablecopyonread_batch_normalization_5_gamma:A
3read_1_disablecopyonread_batch_normalization_5_beta:H
:read_2_disablecopyonread_batch_normalization_5_moving_mean:L
>read_3_disablecopyonread_batch_normalization_5_moving_variance:;
'read_4_disablecopyonread_dense_8_kernel:
░А4
%read_5_disablecopyonread_dense_8_bias:	А:
'read_6_disablecopyonread_dense_9_kernel:	А33
%read_7_disablecopyonread_dense_9_bias:3G
-read_8_disablecopyonread_conv_lstm2d_5_kernel:@Q
7read_9_disablecopyonread_conv_lstm2d_5_recurrent_kernel:@:
,read_10_disablecopyonread_conv_lstm2d_5_bias:@-
#read_11_disablecopyonread_iteration:	 1
'read_12_disablecopyonread_learning_rate: O
5read_13_disablecopyonread_adam_m_conv_lstm2d_5_kernel:@O
5read_14_disablecopyonread_adam_v_conv_lstm2d_5_kernel:@Y
?read_15_disablecopyonread_adam_m_conv_lstm2d_5_recurrent_kernel:@Y
?read_16_disablecopyonread_adam_v_conv_lstm2d_5_recurrent_kernel:@A
3read_17_disablecopyonread_adam_m_conv_lstm2d_5_bias:@A
3read_18_disablecopyonread_adam_v_conv_lstm2d_5_bias:@J
<read_19_disablecopyonread_adam_m_batch_normalization_5_gamma:J
<read_20_disablecopyonread_adam_v_batch_normalization_5_gamma:I
;read_21_disablecopyonread_adam_m_batch_normalization_5_beta:I
;read_22_disablecopyonread_adam_v_batch_normalization_5_beta:C
/read_23_disablecopyonread_adam_m_dense_8_kernel:
░АC
/read_24_disablecopyonread_adam_v_dense_8_kernel:
░А<
-read_25_disablecopyonread_adam_m_dense_8_bias:	А<
-read_26_disablecopyonread_adam_v_dense_8_bias:	АB
/read_27_disablecopyonread_adam_m_dense_9_kernel:	А3B
/read_28_disablecopyonread_adam_v_dense_9_kernel:	А3;
-read_29_disablecopyonread_adam_m_dense_9_bias:3;
-read_30_disablecopyonread_adam_v_dense_9_bias:3+
!read_31_disablecopyonread_total_2: +
!read_32_disablecopyonread_count_2: +
!read_33_disablecopyonread_total_1: +
!read_34_disablecopyonread_count_1: )
read_35_disablecopyonread_total: )
read_36_disablecopyonread_count: 
savev2_const
identity_75ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Д
Read/DisableCopyOnReadDisableCopyOnRead2read_disablecopyonread_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 к
Read/ReadVariableOpReadVariableOp2read_disablecopyonread_batch_normalization_5_gamma^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:З
Read_1/DisableCopyOnReadDisableCopyOnRead3read_1_disablecopyonread_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 п
Read_1/ReadVariableOpReadVariableOp3read_1_disablecopyonread_batch_normalization_5_beta^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:О
Read_2/DisableCopyOnReadDisableCopyOnRead:read_2_disablecopyonread_batch_normalization_5_moving_mean"/device:CPU:0*
_output_shapes
 ╢
Read_2/ReadVariableOpReadVariableOp:read_2_disablecopyonread_batch_normalization_5_moving_mean^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:Т
Read_3/DisableCopyOnReadDisableCopyOnRead>read_3_disablecopyonread_batch_normalization_5_moving_variance"/device:CPU:0*
_output_shapes
 ║
Read_3/ReadVariableOpReadVariableOp>read_3_disablecopyonread_batch_normalization_5_moving_variance^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_8_kernel"/device:CPU:0*
_output_shapes
 й
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_8_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
░А*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
░Аe

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
░Аy
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_8_bias"/device:CPU:0*
_output_shapes
 в
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_8_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:А{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_9_kernel"/device:CPU:0*
_output_shapes
 и
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_9_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А3*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А3f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	А3y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_9_bias"/device:CPU:0*
_output_shapes
 б
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_9_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:3*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:3a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:3Б
Read_8/DisableCopyOnReadDisableCopyOnRead-read_8_disablecopyonread_conv_lstm2d_5_kernel"/device:CPU:0*
_output_shapes
 ╡
Read_8/ReadVariableOpReadVariableOp-read_8_disablecopyonread_conv_lstm2d_5_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:@Л
Read_9/DisableCopyOnReadDisableCopyOnRead7read_9_disablecopyonread_conv_lstm2d_5_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_9/ReadVariableOpReadVariableOp7read_9_disablecopyonread_conv_lstm2d_5_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0v
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*&
_output_shapes
:@Б
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_conv_lstm2d_5_bias"/device:CPU:0*
_output_shapes
 к
Read_10/ReadVariableOpReadVariableOp,read_10_disablecopyonread_conv_lstm2d_5_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@x
Read_11/DisableCopyOnReadDisableCopyOnRead#read_11_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_11/ReadVariableOpReadVariableOp#read_11_disablecopyonread_iteration^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_12/DisableCopyOnReadDisableCopyOnRead'read_12_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 б
Read_12/ReadVariableOpReadVariableOp'read_12_disablecopyonread_learning_rate^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: К
Read_13/DisableCopyOnReadDisableCopyOnRead5read_13_disablecopyonread_adam_m_conv_lstm2d_5_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_13/ReadVariableOpReadVariableOp5read_13_disablecopyonread_adam_m_conv_lstm2d_5_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*&
_output_shapes
:@К
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_adam_v_conv_lstm2d_5_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_adam_v_conv_lstm2d_5_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:@Ф
Read_15/DisableCopyOnReadDisableCopyOnRead?read_15_disablecopyonread_adam_m_conv_lstm2d_5_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_15/ReadVariableOpReadVariableOp?read_15_disablecopyonread_adam_m_conv_lstm2d_5_recurrent_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
:@Ф
Read_16/DisableCopyOnReadDisableCopyOnRead?read_16_disablecopyonread_adam_v_conv_lstm2d_5_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╔
Read_16/ReadVariableOpReadVariableOp?read_16_disablecopyonread_adam_v_conv_lstm2d_5_recurrent_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:@И
Read_17/DisableCopyOnReadDisableCopyOnRead3read_17_disablecopyonread_adam_m_conv_lstm2d_5_bias"/device:CPU:0*
_output_shapes
 ▒
Read_17/ReadVariableOpReadVariableOp3read_17_disablecopyonread_adam_m_conv_lstm2d_5_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@И
Read_18/DisableCopyOnReadDisableCopyOnRead3read_18_disablecopyonread_adam_v_conv_lstm2d_5_bias"/device:CPU:0*
_output_shapes
 ▒
Read_18/ReadVariableOpReadVariableOp3read_18_disablecopyonread_adam_v_conv_lstm2d_5_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:@С
Read_19/DisableCopyOnReadDisableCopyOnRead<read_19_disablecopyonread_adam_m_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 ║
Read_19/ReadVariableOpReadVariableOp<read_19_disablecopyonread_adam_m_batch_normalization_5_gamma^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_20/DisableCopyOnReadDisableCopyOnRead<read_20_disablecopyonread_adam_v_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 ║
Read_20/ReadVariableOpReadVariableOp<read_20_disablecopyonread_adam_v_batch_normalization_5_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:Р
Read_21/DisableCopyOnReadDisableCopyOnRead;read_21_disablecopyonread_adam_m_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 ╣
Read_21/ReadVariableOpReadVariableOp;read_21_disablecopyonread_adam_m_batch_normalization_5_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:Р
Read_22/DisableCopyOnReadDisableCopyOnRead;read_22_disablecopyonread_adam_v_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 ╣
Read_22/ReadVariableOpReadVariableOp;read_22_disablecopyonread_adam_v_batch_normalization_5_beta^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:Д
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_m_dense_8_kernel"/device:CPU:0*
_output_shapes
 │
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_m_dense_8_kernel^Read_23/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
░А*
dtype0q
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
░Аg
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0* 
_output_shapes
:
░АД
Read_24/DisableCopyOnReadDisableCopyOnRead/read_24_disablecopyonread_adam_v_dense_8_kernel"/device:CPU:0*
_output_shapes
 │
Read_24/ReadVariableOpReadVariableOp/read_24_disablecopyonread_adam_v_dense_8_kernel^Read_24/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
░А*
dtype0q
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
░Аg
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0* 
_output_shapes
:
░АВ
Read_25/DisableCopyOnReadDisableCopyOnRead-read_25_disablecopyonread_adam_m_dense_8_bias"/device:CPU:0*
_output_shapes
 м
Read_25/ReadVariableOpReadVariableOp-read_25_disablecopyonread_adam_m_dense_8_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:АВ
Read_26/DisableCopyOnReadDisableCopyOnRead-read_26_disablecopyonread_adam_v_dense_8_bias"/device:CPU:0*
_output_shapes
 м
Read_26/ReadVariableOpReadVariableOp-read_26_disablecopyonread_adam_v_dense_8_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_27/DisableCopyOnReadDisableCopyOnRead/read_27_disablecopyonread_adam_m_dense_9_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_27/ReadVariableOpReadVariableOp/read_27_disablecopyonread_adam_m_dense_9_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А3*
dtype0p
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А3f
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:	А3Д
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_v_dense_9_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_v_dense_9_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А3*
dtype0p
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А3f
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:	А3В
Read_29/DisableCopyOnReadDisableCopyOnRead-read_29_disablecopyonread_adam_m_dense_9_bias"/device:CPU:0*
_output_shapes
 л
Read_29/ReadVariableOpReadVariableOp-read_29_disablecopyonread_adam_m_dense_9_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:3*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:3a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:3В
Read_30/DisableCopyOnReadDisableCopyOnRead-read_30_disablecopyonread_adam_v_dense_9_bias"/device:CPU:0*
_output_shapes
 л
Read_30/ReadVariableOpReadVariableOp-read_30_disablecopyonread_adam_v_dense_9_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:3*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:3a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:3v
Read_31/DisableCopyOnReadDisableCopyOnRead!read_31_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 Ы
Read_31/ReadVariableOpReadVariableOp!read_31_disablecopyonread_total_2^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_32/DisableCopyOnReadDisableCopyOnRead!read_32_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 Ы
Read_32/ReadVariableOpReadVariableOp!read_32_disablecopyonread_count_2^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_33/DisableCopyOnReadDisableCopyOnRead!read_33_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_33/ReadVariableOpReadVariableOp!read_33_disablecopyonread_total_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_34/DisableCopyOnReadDisableCopyOnRead!read_34_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_34/ReadVariableOpReadVariableOp!read_34_disablecopyonread_count_1^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_35/DisableCopyOnReadDisableCopyOnReadread_35_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_35/ReadVariableOpReadVariableOpread_35_disablecopyonread_total^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_36/DisableCopyOnReadDisableCopyOnReadread_36_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_36/ReadVariableOpReadVariableOpread_36_disablecopyonread_count^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
: У
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*╝
value▓Bп&B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╣
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ж
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *4
dtypes*
(2&	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_74Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_75IdentityIdentity_74:output:0^NoOp*
T0*
_output_shapes
: ╚
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_75Identity_75:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:;7
5
_user_specified_namebatch_normalization_5/gamma::6
4
_user_specified_namebatch_normalization_5/beta:A=
;
_user_specified_name#!batch_normalization_5/moving_mean:EA
?
_user_specified_name'%batch_normalization_5/moving_variance:.*
(
_user_specified_namedense_8/kernel:,(
&
_user_specified_namedense_8/bias:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:4	0
.
_user_specified_nameconv_lstm2d_5/kernel:>
:
8
_user_specified_name conv_lstm2d_5/recurrent_kernel:2.
,
_user_specified_nameconv_lstm2d_5/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:;7
5
_user_specified_nameAdam/m/conv_lstm2d_5/kernel:;7
5
_user_specified_nameAdam/v/conv_lstm2d_5/kernel:EA
?
_user_specified_name'%Adam/m/conv_lstm2d_5/recurrent_kernel:EA
?
_user_specified_name'%Adam/v/conv_lstm2d_5/recurrent_kernel:95
3
_user_specified_nameAdam/m/conv_lstm2d_5/bias:95
3
_user_specified_nameAdam/v/conv_lstm2d_5/bias:B>
<
_user_specified_name$"Adam/m/batch_normalization_5/gamma:B>
<
_user_specified_name$"Adam/v/batch_normalization_5/gamma:A=
;
_user_specified_name#!Adam/m/batch_normalization_5/beta:A=
;
_user_specified_name#!Adam/v/batch_normalization_5/beta:51
/
_user_specified_nameAdam/m/dense_8/kernel:51
/
_user_specified_nameAdam/v/dense_8/kernel:3/
-
_user_specified_nameAdam/m/dense_8/bias:3/
-
_user_specified_nameAdam/v/dense_8/bias:51
/
_user_specified_nameAdam/m/dense_9/kernel:51
/
_user_specified_nameAdam/v/dense_9/kernel:3/
-
_user_specified_nameAdam/m/dense_9/bias:3/
-
_user_specified_nameAdam/v/dense_9/bias:' #
!
_user_specified_name	total_2:'!#
!
_user_specified_name	count_2:'"#
!
_user_specified_name	total_1:'##
!
_user_specified_name	count_1:%$!

_user_specified_nametotal:%%!

_user_specified_namecount:=&9

_output_shapes
: 

_user_specified_nameConst
▄	
┴
while_cond_878103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_878103___redundant_placeholder04
0while_while_cond_878103___redundant_placeholder14
0while_while_cond_878103___redundant_placeholder24
0while_while_cond_878103___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :         3:         3: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
:
б

e
F__inference_dropout_10_layer_call_and_return_conditional_losses_880408

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
═]
ы
while_body_879901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0?
%while_split_readvariableop_resource_0:@A
'while_split_1_readvariableop_resource_0:@5
'while_split_2_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor=
#while_split_readvariableop_resource:@?
%while_split_1_readvariableop_resource:@3
%while_split_2_readvariableop_resource:@Ивwhile/split/ReadVariableOpвwhile/split_1/ReadVariableOpвwhile/split_2/ReadVariableOpР
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      о
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:         3*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╨
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╓
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : А
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes
:@*
dtype0ж
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_split┼
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Ж
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:         3╟
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:         3╟
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:         3╟
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:         3м
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
В
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:         3P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?o
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:         3u
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:         3b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:         3Ж
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:         3R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:         3w
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3|
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:         3Ж
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:         3]

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:         3
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:         3p
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:         3Ж
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:         3R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:         3w
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3_
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:         3Г
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:         3r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_5:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3Г

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :         3:         3: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
▄	
┴
while_cond_879448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_879448___redundant_placeholder04
0while_while_cond_879448___redundant_placeholder14
0while_while_cond_879448___redundant_placeholder24
0while_while_cond_879448___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :         3:         3: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
:
д

╤
6__inference_batch_normalization_5_layer_call_fn_880275

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_878440Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:&"
 
_user_specified_name880265:&"
 
_user_specified_name880267:&"
 
_user_specified_name880269:&"
 
_user_specified_name880271
═]
ы
while_body_878934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0?
%while_split_readvariableop_resource_0:@A
'while_split_1_readvariableop_resource_0:@5
'while_split_2_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor=
#while_split_readvariableop_resource:@?
%while_split_1_readvariableop_resource:@3
%while_split_2_readvariableop_resource:@Ивwhile/split/ReadVariableOpвwhile/split_1/ReadVariableOpвwhile/split_2/ReadVariableOpР
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      о
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:         3*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╨
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╓
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : А
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes
:@*
dtype0ж
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_split┼
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Ж
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:         3╟
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:         3╟
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:         3╟
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:         3м
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
В
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:         3P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?o
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:         3u
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:         3b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:         3Ж
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:         3R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:         3w
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3|
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:         3Ж
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:         3]

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:         3
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:         3p
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:         3Ж
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:         3R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:         3w
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3_
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:         3Г
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:         3r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_5:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3Г

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :         3:         3: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
и
д
-__inference_sequential_4_layer_call_fn_879142
reshape_8_input!
unknown:@#
	unknown_0:@
	unknown_1:@
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
░А
	unknown_7:	А
	unknown_8:	А3
	unknown_9:3
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallreshape_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         3*+
_read_only_resource_inputs
		
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_878836s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         3: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         3
)
_user_specified_namereshape_8_input:&"
 
_user_specified_name879118:&"
 
_user_specified_name879120:&"
 
_user_specified_name879122:&"
 
_user_specified_name879124:&"
 
_user_specified_name879126:&"
 
_user_specified_name879128:&"
 
_user_specified_name879130:&"
 
_user_specified_name879132:&	"
 
_user_specified_name879134:&
"
 
_user_specified_name879136:&"
 
_user_specified_name879138
·	
ї
C__inference_dense_9_layer_call_and_return_conditional_losses_880432

inputs1
matmul_readvariableop_resource:	А3-
biasadd_readvariableop_resource:3
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А3*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         3r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:3*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         3_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         3S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╔
Е
/__inference_conv_lstm_cell_layer_call_fn_880483

inputs
states_0
states_1!
unknown:@#
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:         3:         3:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *S
fNRL
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_878089w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         3y

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:         3y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:         3:         3:         3: : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs:YU
/
_output_shapes
:         3
"
_user_specified_name
states_0:YU
/
_output_shapes
:         3
"
_user_specified_name
states_1:&"
 
_user_specified_name880471:&"
 
_user_specified_name880473:&"
 
_user_specified_name880475
╔
Е
/__inference_conv_lstm_cell_layer_call_fn_880500

inputs
states_0
states_1!
unknown:@#
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:         3:         3:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *S
fNRL
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_878278w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         3y

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:         3y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:         3:         3:         3: : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs:YU
/
_output_shapes
:         3
"
_user_specified_name
states_0:YU
/
_output_shapes
:         3
"
_user_specified_name
states_1:&"
 
_user_specified_name880488:&"
 
_user_specified_name880490:&"
 
_user_specified_name880492
М
Ш
(__inference_dense_8_layer_call_fn_880371

inputs
unknown:
░А
	unknown_0:	А
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_878779p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ░: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ░
 
_user_specified_nameinputs:&"
 
_user_specified_name880365:&"
 
_user_specified_name880367
К
└
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_880306

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╝j
Х
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_878728

inputs7
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identityИв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpвwhile]

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:         3W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:         3j
zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    Х
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                u
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:         3P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitг
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:         3г
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:         3г
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:         3г
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:         3б
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3q
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :         3:         3: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_878597*
condR
while_cond_878596*[
output_shapesJ
H: : : : :         3:         3: : : : : *
parallel_iterations Й
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ▐
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:         3*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                Ю
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*/
_output_shapes
:         3м
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:         3
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
щj
Ч
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879806
inputs_07
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identityИв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpвwhileh

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&                  3W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:         3j
zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    Х
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                А
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&                  3P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitг
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:         3г
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:         3г
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:         3г
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:         3б
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3q
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :         3:         3: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_879675*
condR
while_cond_879674*[
output_shapesJ
H: : : : :         3:         3: : : : : *
parallel_iterations Й
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ▐
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:         3*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                Ю
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*/
_output_shapes
:         3м
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&                  3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&                  3
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╫
a
E__inference_reshape_8_layer_call_and_return_conditional_losses_879310

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :3Q
Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :├
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:p
ReshapeReshapeinputsReshape/shape:output:0*
T0*3
_output_shapes!
:         3d
IdentityIdentityReshape:output:0*
T0*3
_output_shapes!
:         3"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         3:S O
+
_output_shapes
:         3
 
_user_specified_nameinputs
°
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_880351

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         3c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         3"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         3:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs
▄	
┴
while_cond_878292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_878292___redundant_placeholder04
0while_while_cond_878292___redundant_placeholder14
0while_while_cond_878292___redundant_placeholder24
0while_while_cond_878292___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :         3:         3: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
:
Я9
░
H__inference_sequential_4_layer_call_and_return_conditional_losses_879115
reshape_8_input.
conv_lstm2d_5_879066:@.
conv_lstm2d_5_879068:@"
conv_lstm2d_5_879070:@*
batch_normalization_5_879073:*
batch_normalization_5_879075:*
batch_normalization_5_879077:*
batch_normalization_5_879079:"
dense_8_879089:
░А
dense_8_879091:	А!
dense_9_879100:	А3
dense_9_879102:3
identityИв-batch_normalization_5/StatefulPartitionedCallв%conv_lstm2d_5/StatefulPartitionedCallв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвdense_8/StatefulPartitionedCallв0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpвdense_9/StatefulPartitionedCallш
reshape_8/PartitionedCallPartitionedCallreshape_8_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_reshape_8_layer_call_and_return_conditional_losses_878501┘
%conv_lstm2d_5/StatefulPartitionedCallStatefulPartitionedCall"reshape_8/PartitionedCall:output:0conv_lstm2d_5_879066conv_lstm2d_5_879068conv_lstm2d_5_879070*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *R
fMRK
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879065н
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall.conv_lstm2d_5/StatefulPartitionedCall:output:0batch_normalization_5_879073batch_normalization_5_879075batch_normalization_5_879077batch_normalization_5_879079*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3*&
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_878458Л
dropout_9/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_879086Ё
flatten_4/PartitionedCallPartitionedCall"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ░* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_878763в
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_879089dense_8_879091*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_878779°
dropout_10/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_879098в
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_9_879100dense_9_879102*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         3*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_878807∙
reshape_9/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_reshape_9_layer_call_and_return_conditional_losses_878825У
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_lstm2d_5_879066*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Б
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_8_879089* 
_output_shapes
:
░А*
dtype0Ж
!dense_8/kernel/Regularizer/L2LossL2Loss8dense_8/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<Э
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0*dense_8/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: u
IdentityIdentity"reshape_9/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         3к
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall&^conv_lstm2d_5/StatefulPartitionedCall7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         3: : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2N
%conv_lstm2d_5/StatefulPartitionedCall%conv_lstm2d_5/StatefulPartitionedCall2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:\ X
+
_output_shapes
:         3
)
_user_specified_namereshape_8_input:&"
 
_user_specified_name879066:&"
 
_user_specified_name879068:&"
 
_user_specified_name879070:&"
 
_user_specified_name879073:&"
 
_user_specified_name879075:&"
 
_user_specified_name879077:&"
 
_user_specified_name879079:&"
 
_user_specified_name879089:&	"
 
_user_specified_name879091:&
"
 
_user_specified_name879100:&"
 
_user_specified_name879102
К
└
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_878440

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
тD
╩
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_880579

inputs
states_0
states_17
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identity

identity_1

identity_2Ив6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitП
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
t
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:         3С
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:         3С
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:         3С
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:         3Х
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Х
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Х
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Х
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3e
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:         3b

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:         3b

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:         3д
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:         3:         3:         3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs:YU
/
_output_shapes
:         3
"
_user_specified_name
states_0:YU
/
_output_shapes
:         3
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
·	
ї
C__inference_dense_9_layer_call_and_return_conditional_losses_878807

inputs1
matmul_readvariableop_resource:	А3-
biasadd_readvariableop_resource:3
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А3*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         3r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:3*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         3_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         3S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
х

a
E__inference_reshape_9_layer_call_and_return_conditional_losses_880450

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :3П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         3\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         3"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         3:O K
'
_output_shapes
:         3
 
_user_specified_nameinputs
б

e
F__inference_dropout_10_layer_call_and_return_conditional_losses_878796

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╘D
╚
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_878089

inputs

states
states_17
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identity

identity_1

identity_2Ив6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitП
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
t
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:         3С
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:         3С
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:         3С
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:         3У
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
У
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
У
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
У
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3e
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:         3b

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:         3b

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:         3д
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:         3:         3:         3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs:WS
/
_output_shapes
:         3
 
_user_specified_namestates:WS
/
_output_shapes
:         3
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
▌
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_879098

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж

╤
6__inference_batch_normalization_5_layer_call_fn_880288

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall│
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_878458Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:&"
 
_user_specified_name880278:&"
 
_user_specified_name880280:&"
 
_user_specified_name880282:&"
 
_user_specified_name880284
╨
Ь
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_878458

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╩
F
*__inference_flatten_4_layer_call_fn_880356

inputs
identity╩
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ░* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_878763a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ░"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         3:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs
╪
F
*__inference_reshape_8_layer_call_fn_879295

inputs
identity╒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_reshape_8_layer_call_and_return_conditional_losses_878501l
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:         3"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         3:S O
+
_output_shapes
:         3
 
_user_specified_nameinputs
И
Ц
(__inference_dense_9_layer_call_fn_880422

inputs
unknown:	А3
	unknown_0:3
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         3*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_878807o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:&"
 
_user_specified_name880416:&"
 
_user_specified_name880418
х

a
E__inference_reshape_9_layer_call_and_return_conditional_losses_878825

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :3П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         3\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         3"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         3:O K
'
_output_shapes
:         3
 
_user_specified_nameinputs
╟
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_878763

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    0  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ░Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ░"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         3:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs
╨
Ь
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_880324

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
■$
Ю
while_body_878104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_878128_0:@(
while_878130_0:@
while_878132_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_878128:@&
while_878130:@
while_878132:@Ивwhile/StatefulPartitionedCallР
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      о
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:         3*
element_dtype0▓
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_878128_0while_878130_0while_878132_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:         3:         3:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *S
fNRL
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_878089r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Л
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*/
_output_shapes
:         3Л
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*/
_output_shapes
:         3H

while/NoOpNoOp^while/StatefulPartitionedCall*
_output_shapes
 "
while_878128while_878128_0"
while_878130while_878130_0"
while_878132while_878132_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :         3:         3: : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name878128:&	"
 
_user_specified_name878130:&
"
 
_user_specified_name878132
Я▄
О
!__inference__wrapped_model_877988
reshape_8_inputR
8sequential_4_conv_lstm2d_5_split_readvariableop_resource:@T
:sequential_4_conv_lstm2d_5_split_1_readvariableop_resource:@H
:sequential_4_conv_lstm2d_5_split_2_readvariableop_resource:@H
:sequential_4_batch_normalization_5_readvariableop_resource:J
<sequential_4_batch_normalization_5_readvariableop_1_resource:Y
Ksequential_4_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:[
Msequential_4_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:G
3sequential_4_dense_8_matmul_readvariableop_resource:
░АC
4sequential_4_dense_8_biasadd_readvariableop_resource:	АF
3sequential_4_dense_9_matmul_readvariableop_resource:	А3B
4sequential_4_dense_9_biasadd_readvariableop_resource:3
identityИвBsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOpвDsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в1sequential_4/batch_normalization_5/ReadVariableOpв3sequential_4/batch_normalization_5/ReadVariableOp_1в/sequential_4/conv_lstm2d_5/split/ReadVariableOpв1sequential_4/conv_lstm2d_5/split_1/ReadVariableOpв1sequential_4/conv_lstm2d_5/split_2/ReadVariableOpв sequential_4/conv_lstm2d_5/whileв+sequential_4/dense_8/BiasAdd/ReadVariableOpв*sequential_4/dense_8/MatMul/ReadVariableOpв+sequential_4/dense_9/BiasAdd/ReadVariableOpв*sequential_4/dense_9/MatMul/ReadVariableOpi
sequential_4/reshape_8/ShapeShapereshape_8_input*
T0*
_output_shapes
::э╧t
*sequential_4/reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_4/reshape_8/strided_sliceStridedSlice%sequential_4/reshape_8/Shape:output:03sequential_4/reshape_8/strided_slice/stack:output:05sequential_4/reshape_8/strided_slice/stack_1:output:05sequential_4/reshape_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_4/reshape_8/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_4/reshape_8/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_4/reshape_8/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :3h
&sequential_4/reshape_8/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :═
$sequential_4/reshape_8/Reshape/shapePack-sequential_4/reshape_8/strided_slice:output:0/sequential_4/reshape_8/Reshape/shape/1:output:0/sequential_4/reshape_8/Reshape/shape/2:output:0/sequential_4/reshape_8/Reshape/shape/3:output:0/sequential_4/reshape_8/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:з
sequential_4/reshape_8/ReshapeReshapereshape_8_input-sequential_4/reshape_8/Reshape/shape:output:0*
T0*3
_output_shapes!
:         3Щ
%sequential_4/conv_lstm2d_5/zeros_like	ZerosLike'sequential_4/reshape_8/Reshape:output:0*
T0*3
_output_shapes!
:         3r
0sequential_4/conv_lstm2d_5/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :┼
sequential_4/conv_lstm2d_5/SumSum)sequential_4/conv_lstm2d_5/zeros_like:y:09sequential_4/conv_lstm2d_5/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:         3Е
 sequential_4/conv_lstm2d_5/zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    ц
&sequential_4/conv_lstm2d_5/convolutionConv2D'sequential_4/conv_lstm2d_5/Sum:output:0)sequential_4/conv_lstm2d_5/zeros:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Ж
)sequential_4/conv_lstm2d_5/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ╠
$sequential_4/conv_lstm2d_5/transpose	Transpose'sequential_4/reshape_8/Reshape:output:02sequential_4/conv_lstm2d_5/transpose/perm:output:0*
T0*3
_output_shapes!
:         3Ж
 sequential_4/conv_lstm2d_5/ShapeShape(sequential_4/conv_lstm2d_5/transpose:y:0*
T0*
_output_shapes
::э╧x
.sequential_4/conv_lstm2d_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_4/conv_lstm2d_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_4/conv_lstm2d_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╪
(sequential_4/conv_lstm2d_5/strided_sliceStridedSlice)sequential_4/conv_lstm2d_5/Shape:output:07sequential_4/conv_lstm2d_5/strided_slice/stack:output:09sequential_4/conv_lstm2d_5/strided_slice/stack_1:output:09sequential_4/conv_lstm2d_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
6sequential_4/conv_lstm2d_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Г
(sequential_4/conv_lstm2d_5/TensorArrayV2TensorListReserve?sequential_4/conv_lstm2d_5/TensorArrayV2/element_shape:output:01sequential_4/conv_lstm2d_5/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥й
Psequential_4/conv_lstm2d_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ▒
Bsequential_4/conv_lstm2d_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_4/conv_lstm2d_5/transpose:y:0Ysequential_4/conv_lstm2d_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥z
0sequential_4/conv_lstm2d_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_4/conv_lstm2d_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_4/conv_lstm2d_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
*sequential_4/conv_lstm2d_5/strided_slice_1StridedSlice(sequential_4/conv_lstm2d_5/transpose:y:09sequential_4/conv_lstm2d_5/strided_slice_1/stack:output:0;sequential_4/conv_lstm2d_5/strided_slice_1/stack_1:output:0;sequential_4/conv_lstm2d_5/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskl
*sequential_4/conv_lstm2d_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :░
/sequential_4/conv_lstm2d_5/split/ReadVariableOpReadVariableOp8sequential_4_conv_lstm2d_5_split_readvariableop_resource*&
_output_shapes
:@*
dtype0П
 sequential_4/conv_lstm2d_5/splitSplit3sequential_4/conv_lstm2d_5/split/split_dim:output:07sequential_4/conv_lstm2d_5/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitn
,sequential_4/conv_lstm2d_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┤
1sequential_4/conv_lstm2d_5/split_1/ReadVariableOpReadVariableOp:sequential_4_conv_lstm2d_5_split_1_readvariableop_resource*&
_output_shapes
:@*
dtype0Х
"sequential_4/conv_lstm2d_5/split_1Split5sequential_4/conv_lstm2d_5/split_1/split_dim:output:09sequential_4/conv_lstm2d_5/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitn
,sequential_4/conv_lstm2d_5/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : и
1sequential_4/conv_lstm2d_5/split_2/ReadVariableOpReadVariableOp:sequential_4_conv_lstm2d_5_split_2_readvariableop_resource*
_output_shapes
:@*
dtype0х
"sequential_4/conv_lstm2d_5/split_2Split5sequential_4/conv_lstm2d_5/split_2/split_dim:output:09sequential_4/conv_lstm2d_5/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitЇ
(sequential_4/conv_lstm2d_5/convolution_1Conv2D3sequential_4/conv_lstm2d_5/strided_slice_1:output:0)sequential_4/conv_lstm2d_5/split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
╟
"sequential_4/conv_lstm2d_5/BiasAddBiasAdd1sequential_4/conv_lstm2d_5/convolution_1:output:0+sequential_4/conv_lstm2d_5/split_2:output:0*
T0*/
_output_shapes
:         3Ї
(sequential_4/conv_lstm2d_5/convolution_2Conv2D3sequential_4/conv_lstm2d_5/strided_slice_1:output:0)sequential_4/conv_lstm2d_5/split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
╔
$sequential_4/conv_lstm2d_5/BiasAdd_1BiasAdd1sequential_4/conv_lstm2d_5/convolution_2:output:0+sequential_4/conv_lstm2d_5/split_2:output:1*
T0*/
_output_shapes
:         3Ї
(sequential_4/conv_lstm2d_5/convolution_3Conv2D3sequential_4/conv_lstm2d_5/strided_slice_1:output:0)sequential_4/conv_lstm2d_5/split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
╔
$sequential_4/conv_lstm2d_5/BiasAdd_2BiasAdd1sequential_4/conv_lstm2d_5/convolution_3:output:0+sequential_4/conv_lstm2d_5/split_2:output:2*
T0*/
_output_shapes
:         3Ї
(sequential_4/conv_lstm2d_5/convolution_4Conv2D3sequential_4/conv_lstm2d_5/strided_slice_1:output:0)sequential_4/conv_lstm2d_5/split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
╔
$sequential_4/conv_lstm2d_5/BiasAdd_3BiasAdd1sequential_4/conv_lstm2d_5/convolution_4:output:0+sequential_4/conv_lstm2d_5/split_2:output:3*
T0*/
_output_shapes
:         3Є
(sequential_4/conv_lstm2d_5/convolution_5Conv2D/sequential_4/conv_lstm2d_5/convolution:output:0+sequential_4/conv_lstm2d_5/split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Є
(sequential_4/conv_lstm2d_5/convolution_6Conv2D/sequential_4/conv_lstm2d_5/convolution:output:0+sequential_4/conv_lstm2d_5/split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Є
(sequential_4/conv_lstm2d_5/convolution_7Conv2D/sequential_4/conv_lstm2d_5/convolution:output:0+sequential_4/conv_lstm2d_5/split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Є
(sequential_4/conv_lstm2d_5/convolution_8Conv2D/sequential_4/conv_lstm2d_5/convolution:output:0+sequential_4/conv_lstm2d_5/split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
┴
sequential_4/conv_lstm2d_5/addAddV2+sequential_4/conv_lstm2d_5/BiasAdd:output:01sequential_4/conv_lstm2d_5/convolution_5:output:0*
T0*/
_output_shapes
:         3e
 sequential_4/conv_lstm2d_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>g
"sequential_4/conv_lstm2d_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?о
sequential_4/conv_lstm2d_5/MulMul"sequential_4/conv_lstm2d_5/add:z:0)sequential_4/conv_lstm2d_5/Const:output:0*
T0*/
_output_shapes
:         3┤
 sequential_4/conv_lstm2d_5/Add_1AddV2"sequential_4/conv_lstm2d_5/Mul:z:0+sequential_4/conv_lstm2d_5/Const_1:output:0*
T0*/
_output_shapes
:         3w
2sequential_4/conv_lstm2d_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╪
0sequential_4/conv_lstm2d_5/clip_by_value/MinimumMinimum$sequential_4/conv_lstm2d_5/Add_1:z:0;sequential_4/conv_lstm2d_5/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3o
*sequential_4/conv_lstm2d_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ╪
(sequential_4/conv_lstm2d_5/clip_by_valueMaximum4sequential_4/conv_lstm2d_5/clip_by_value/Minimum:z:03sequential_4/conv_lstm2d_5/clip_by_value/y:output:0*
T0*/
_output_shapes
:         3┼
 sequential_4/conv_lstm2d_5/add_2AddV2-sequential_4/conv_lstm2d_5/BiasAdd_1:output:01sequential_4/conv_lstm2d_5/convolution_6:output:0*
T0*/
_output_shapes
:         3g
"sequential_4/conv_lstm2d_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>g
"sequential_4/conv_lstm2d_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?┤
 sequential_4/conv_lstm2d_5/Mul_1Mul$sequential_4/conv_lstm2d_5/add_2:z:0+sequential_4/conv_lstm2d_5/Const_2:output:0*
T0*/
_output_shapes
:         3╢
 sequential_4/conv_lstm2d_5/Add_3AddV2$sequential_4/conv_lstm2d_5/Mul_1:z:0+sequential_4/conv_lstm2d_5/Const_3:output:0*
T0*/
_output_shapes
:         3y
4sequential_4/conv_lstm2d_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▄
2sequential_4/conv_lstm2d_5/clip_by_value_1/MinimumMinimum$sequential_4/conv_lstm2d_5/Add_3:z:0=sequential_4/conv_lstm2d_5/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3q
,sequential_4/conv_lstm2d_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ▐
*sequential_4/conv_lstm2d_5/clip_by_value_1Maximum6sequential_4/conv_lstm2d_5/clip_by_value_1/Minimum:z:05sequential_4/conv_lstm2d_5/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3┬
 sequential_4/conv_lstm2d_5/mul_2Mul.sequential_4/conv_lstm2d_5/clip_by_value_1:z:0/sequential_4/conv_lstm2d_5/convolution:output:0*
T0*/
_output_shapes
:         3┼
 sequential_4/conv_lstm2d_5/add_4AddV2-sequential_4/conv_lstm2d_5/BiasAdd_2:output:01sequential_4/conv_lstm2d_5/convolution_7:output:0*
T0*/
_output_shapes
:         3З
sequential_4/conv_lstm2d_5/ReluRelu$sequential_4/conv_lstm2d_5/add_4:z:0*
T0*/
_output_shapes
:         3╛
 sequential_4/conv_lstm2d_5/mul_3Mul,sequential_4/conv_lstm2d_5/clip_by_value:z:0-sequential_4/conv_lstm2d_5/Relu:activations:0*
T0*/
_output_shapes
:         3п
 sequential_4/conv_lstm2d_5/add_5AddV2$sequential_4/conv_lstm2d_5/mul_2:z:0$sequential_4/conv_lstm2d_5/mul_3:z:0*
T0*/
_output_shapes
:         3┼
 sequential_4/conv_lstm2d_5/add_6AddV2-sequential_4/conv_lstm2d_5/BiasAdd_3:output:01sequential_4/conv_lstm2d_5/convolution_8:output:0*
T0*/
_output_shapes
:         3g
"sequential_4/conv_lstm2d_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>g
"sequential_4/conv_lstm2d_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?┤
 sequential_4/conv_lstm2d_5/Mul_4Mul$sequential_4/conv_lstm2d_5/add_6:z:0+sequential_4/conv_lstm2d_5/Const_4:output:0*
T0*/
_output_shapes
:         3╢
 sequential_4/conv_lstm2d_5/Add_7AddV2$sequential_4/conv_lstm2d_5/Mul_4:z:0+sequential_4/conv_lstm2d_5/Const_5:output:0*
T0*/
_output_shapes
:         3y
4sequential_4/conv_lstm2d_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▄
2sequential_4/conv_lstm2d_5/clip_by_value_2/MinimumMinimum$sequential_4/conv_lstm2d_5/Add_7:z:0=sequential_4/conv_lstm2d_5/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3q
,sequential_4/conv_lstm2d_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ▐
*sequential_4/conv_lstm2d_5/clip_by_value_2Maximum6sequential_4/conv_lstm2d_5/clip_by_value_2/Minimum:z:05sequential_4/conv_lstm2d_5/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3Й
!sequential_4/conv_lstm2d_5/Relu_1Relu$sequential_4/conv_lstm2d_5/add_5:z:0*
T0*/
_output_shapes
:         3┬
 sequential_4/conv_lstm2d_5/mul_5Mul.sequential_4/conv_lstm2d_5/clip_by_value_2:z:0/sequential_4/conv_lstm2d_5/Relu_1:activations:0*
T0*/
_output_shapes
:         3С
8sequential_4/conv_lstm2d_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      y
7sequential_4/conv_lstm2d_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_4/conv_lstm2d_5/TensorArrayV2_1TensorListReserveAsequential_4/conv_lstm2d_5/TensorArrayV2_1/element_shape:output:0@sequential_4/conv_lstm2d_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥a
sequential_4/conv_lstm2d_5/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3sequential_4/conv_lstm2d_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         o
-sequential_4/conv_lstm2d_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▐
 sequential_4/conv_lstm2d_5/whileWhile6sequential_4/conv_lstm2d_5/while/loop_counter:output:0<sequential_4/conv_lstm2d_5/while/maximum_iterations:output:0(sequential_4/conv_lstm2d_5/time:output:03sequential_4/conv_lstm2d_5/TensorArrayV2_1:handle:0/sequential_4/conv_lstm2d_5/convolution:output:0/sequential_4/conv_lstm2d_5/convolution:output:01sequential_4/conv_lstm2d_5/strided_slice:output:0Rsequential_4/conv_lstm2d_5/TensorArrayUnstack/TensorListFromTensor:output_handle:08sequential_4_conv_lstm2d_5_split_readvariableop_resource:sequential_4_conv_lstm2d_5_split_1_readvariableop_resource:sequential_4_conv_lstm2d_5_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :         3:         3: : : : : *%
_read_only_resource_inputs
	
*8
body0R.
,sequential_4_conv_lstm2d_5_while_body_877821*8
cond0R.
,sequential_4_conv_lstm2d_5_while_cond_877820*[
output_shapesJ
H: : : : :         3:         3: : : : : *
parallel_iterations д
Ksequential_4/conv_lstm2d_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      п
=sequential_4/conv_lstm2d_5/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_4/conv_lstm2d_5/while:output:3Tsequential_4/conv_lstm2d_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:         3*
element_dtype0*
num_elementsГ
0sequential_4/conv_lstm2d_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         |
2sequential_4/conv_lstm2d_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2sequential_4/conv_lstm2d_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ц
*sequential_4/conv_lstm2d_5/strided_slice_2StridedSliceFsequential_4/conv_lstm2d_5/TensorArrayV2Stack/TensorListStack:tensor:09sequential_4/conv_lstm2d_5/strided_slice_2/stack:output:0;sequential_4/conv_lstm2d_5/strided_slice_2/stack_1:output:0;sequential_4/conv_lstm2d_5/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskИ
+sequential_4/conv_lstm2d_5/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                я
&sequential_4/conv_lstm2d_5/transpose_1	TransposeFsequential_4/conv_lstm2d_5/TensorArrayV2Stack/TensorListStack:tensor:04sequential_4/conv_lstm2d_5/transpose_1/perm:output:0*
T0*3
_output_shapes!
:         3и
1sequential_4/batch_normalization_5/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_5_readvariableop_resource*
_output_shapes
:*
dtype0м
3sequential_4/batch_normalization_5/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_5_readvariableop_1_resource*
_output_shapes
:*
dtype0╩
Bsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╬
Dsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Т
3sequential_4/batch_normalization_5/FusedBatchNormV3FusedBatchNormV33sequential_4/conv_lstm2d_5/strided_slice_2:output:09sequential_4/batch_normalization_5/ReadVariableOp:value:0;sequential_4/batch_normalization_5/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         3:::::*
epsilon%oГ:*
is_training( Ю
sequential_4/dropout_9/IdentityIdentity7sequential_4/batch_normalization_5/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         3m
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"    0  н
sequential_4/flatten_4/ReshapeReshape(sequential_4/dropout_9/Identity:output:0%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:         ░а
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
░А*
dtype0╡
sequential_4/dense_8/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЭ
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А{
sequential_4/dense_8/ReluRelu%sequential_4/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:         АИ
 sequential_4/dropout_10/IdentityIdentity'sequential_4/dense_8/Relu:activations:0*
T0*(
_output_shapes
:         АЯ
*sequential_4/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_9_matmul_readvariableop_resource*
_output_shapes
:	А3*
dtype0╢
sequential_4/dense_9/MatMulMatMul)sequential_4/dropout_10/Identity:output:02sequential_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         3Ь
+sequential_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:3*
dtype0╡
sequential_4/dense_9/BiasAddBiasAdd%sequential_4/dense_9/MatMul:product:03sequential_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         3
sequential_4/reshape_9/ShapeShape%sequential_4/dense_9/BiasAdd:output:0*
T0*
_output_shapes
::э╧t
*sequential_4/reshape_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/reshape_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/reshape_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_4/reshape_9/strided_sliceStridedSlice%sequential_4/reshape_9/Shape:output:03sequential_4/reshape_9/strided_slice/stack:output:05sequential_4/reshape_9/strided_slice/stack_1:output:05sequential_4/reshape_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_4/reshape_9/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_4/reshape_9/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :3ы
$sequential_4/reshape_9/Reshape/shapePack-sequential_4/reshape_9/strided_slice:output:0/sequential_4/reshape_9/Reshape/shape/1:output:0/sequential_4/reshape_9/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:╡
sequential_4/reshape_9/ReshapeReshape%sequential_4/dense_9/BiasAdd:output:0-sequential_4/reshape_9/Reshape/shape:output:0*
T0*+
_output_shapes
:         3z
IdentityIdentity'sequential_4/reshape_9/Reshape:output:0^NoOp*
T0*+
_output_shapes
:         3Л
NoOpNoOpC^sequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_5/ReadVariableOp4^sequential_4/batch_normalization_5/ReadVariableOp_10^sequential_4/conv_lstm2d_5/split/ReadVariableOp2^sequential_4/conv_lstm2d_5/split_1/ReadVariableOp2^sequential_4/conv_lstm2d_5/split_2/ReadVariableOp!^sequential_4/conv_lstm2d_5/while,^sequential_4/dense_8/BiasAdd/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp,^sequential_4/dense_9/BiasAdd/ReadVariableOp+^sequential_4/dense_9/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         3: : : : : : : : : : : 2И
Bsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2М
Dsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12f
1sequential_4/batch_normalization_5/ReadVariableOp1sequential_4/batch_normalization_5/ReadVariableOp2j
3sequential_4/batch_normalization_5/ReadVariableOp_13sequential_4/batch_normalization_5/ReadVariableOp_12b
/sequential_4/conv_lstm2d_5/split/ReadVariableOp/sequential_4/conv_lstm2d_5/split/ReadVariableOp2f
1sequential_4/conv_lstm2d_5/split_1/ReadVariableOp1sequential_4/conv_lstm2d_5/split_1/ReadVariableOp2f
1sequential_4/conv_lstm2d_5/split_2/ReadVariableOp1sequential_4/conv_lstm2d_5/split_2/ReadVariableOp2D
 sequential_4/conv_lstm2d_5/while sequential_4/conv_lstm2d_5/while2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2Z
+sequential_4/dense_9/BiasAdd/ReadVariableOp+sequential_4/dense_9/BiasAdd/ReadVariableOp2X
*sequential_4/dense_9/MatMul/ReadVariableOp*sequential_4/dense_9/MatMul/ReadVariableOp:\ X
+
_output_shapes
:         3
)
_user_specified_namereshape_8_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource
═]
ы
while_body_878597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0?
%while_split_readvariableop_resource_0:@A
'while_split_1_readvariableop_resource_0:@5
'while_split_2_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor=
#while_split_readvariableop_resource:@?
%while_split_1_readvariableop_resource:@3
%while_split_2_readvariableop_resource:@Ивwhile/split/ReadVariableOpвwhile/split_1/ReadVariableOpвwhile/split_2/ReadVariableOpР
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      о
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:         3*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╨
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*&
_output_shapes
:@*
dtype0╓
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : А
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes
:@*
dtype0ж
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_split┼
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
Ж
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:         3╟
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:         3╟
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:         3╟
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
К
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:         3м
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
м
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
В
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:         3P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?o
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:         3u
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:         3b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:         3Ж
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:         3R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:         3w
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3|
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:         3Ж
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:         3]

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:         3
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:         3p
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:         3Ж
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:         3R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?u
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:         3w
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:         3d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3_
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:         3Г
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:         3r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_5:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3t
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*/
_output_shapes
:         3Г

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :         3:         3: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Э	
╚
.__inference_conv_lstm2d_5_layer_call_fn_879343

inputs!
unknown:@#
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *R
fMRK
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_878728w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         3: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         3
 
_user_specified_nameinputs:&"
 
_user_specified_name879335:&"
 
_user_specified_name879337:&"
 
_user_specified_name879339
г
▌
,sequential_4_conv_lstm2d_5_while_cond_877820R
Nsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_loop_counterX
Tsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_maximum_iterations0
,sequential_4_conv_lstm2d_5_while_placeholder2
.sequential_4_conv_lstm2d_5_while_placeholder_12
.sequential_4_conv_lstm2d_5_while_placeholder_22
.sequential_4_conv_lstm2d_5_while_placeholder_3R
Nsequential_4_conv_lstm2d_5_while_less_sequential_4_conv_lstm2d_5_strided_slicej
fsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_cond_877820___redundant_placeholder0j
fsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_cond_877820___redundant_placeholder1j
fsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_cond_877820___redundant_placeholder2j
fsequential_4_conv_lstm2d_5_while_sequential_4_conv_lstm2d_5_while_cond_877820___redundant_placeholder3-
)sequential_4_conv_lstm2d_5_while_identity
╠
%sequential_4/conv_lstm2d_5/while/LessLess,sequential_4_conv_lstm2d_5_while_placeholderNsequential_4_conv_lstm2d_5_while_less_sequential_4_conv_lstm2d_5_strided_slice*
T0*
_output_shapes
: Б
)sequential_4/conv_lstm2d_5/while/IdentityIdentity)sequential_4/conv_lstm2d_5/while/Less:z:0*
T0
*
_output_shapes
: "_
)sequential_4_conv_lstm2d_5_while_identity2sequential_4/conv_lstm2d_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :         3:         3: :::::e a

_output_shapes
: 
G
_user_specified_name/-sequential_4/conv_lstm2d_5/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_4/conv_lstm2d_5/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:`\

_output_shapes
: 
B
_user_specified_name*(sequential_4/conv_lstm2d_5/strided_slice:

_output_shapes
:
Мо
ц
"__inference__traced_restore_881022
file_prefix:
,assignvariableop_batch_normalization_5_gamma:;
-assignvariableop_1_batch_normalization_5_beta:B
4assignvariableop_2_batch_normalization_5_moving_mean:F
8assignvariableop_3_batch_normalization_5_moving_variance:5
!assignvariableop_4_dense_8_kernel:
░А.
assignvariableop_5_dense_8_bias:	А4
!assignvariableop_6_dense_9_kernel:	А3-
assignvariableop_7_dense_9_bias:3A
'assignvariableop_8_conv_lstm2d_5_kernel:@K
1assignvariableop_9_conv_lstm2d_5_recurrent_kernel:@4
&assignvariableop_10_conv_lstm2d_5_bias:@'
assignvariableop_11_iteration:	 +
!assignvariableop_12_learning_rate: I
/assignvariableop_13_adam_m_conv_lstm2d_5_kernel:@I
/assignvariableop_14_adam_v_conv_lstm2d_5_kernel:@S
9assignvariableop_15_adam_m_conv_lstm2d_5_recurrent_kernel:@S
9assignvariableop_16_adam_v_conv_lstm2d_5_recurrent_kernel:@;
-assignvariableop_17_adam_m_conv_lstm2d_5_bias:@;
-assignvariableop_18_adam_v_conv_lstm2d_5_bias:@D
6assignvariableop_19_adam_m_batch_normalization_5_gamma:D
6assignvariableop_20_adam_v_batch_normalization_5_gamma:C
5assignvariableop_21_adam_m_batch_normalization_5_beta:C
5assignvariableop_22_adam_v_batch_normalization_5_beta:=
)assignvariableop_23_adam_m_dense_8_kernel:
░А=
)assignvariableop_24_adam_v_dense_8_kernel:
░А6
'assignvariableop_25_adam_m_dense_8_bias:	А6
'assignvariableop_26_adam_v_dense_8_bias:	А<
)assignvariableop_27_adam_m_dense_9_kernel:	А3<
)assignvariableop_28_adam_v_dense_9_kernel:	А35
'assignvariableop_29_adam_m_dense_9_bias:35
'assignvariableop_30_adam_v_dense_9_bias:3%
assignvariableop_31_total_2: %
assignvariableop_32_count_2: %
assignvariableop_33_total_1: %
assignvariableop_34_count_1: #
assignvariableop_35_total: #
assignvariableop_36_count: 
identity_38ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ц
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*╝
value▓Bп&B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╝
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ▀
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*о
_output_shapesЫ
Ш::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_5_gammaIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_5_betaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_5_moving_meanIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_5_moving_varianceIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_8_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_8_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_9_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_9_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_8AssignVariableOp'assignvariableop_8_conv_lstm2d_5_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_9AssignVariableOp1assignvariableop_9_conv_lstm2d_5_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_10AssignVariableOp&assignvariableop_10_conv_lstm2d_5_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_11AssignVariableOpassignvariableop_11_iterationIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_12AssignVariableOp!assignvariableop_12_learning_rateIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_13AssignVariableOp/assignvariableop_13_adam_m_conv_lstm2d_5_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_14AssignVariableOp/assignvariableop_14_adam_v_conv_lstm2d_5_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_15AssignVariableOp9assignvariableop_15_adam_m_conv_lstm2d_5_recurrent_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_16AssignVariableOp9assignvariableop_16_adam_v_conv_lstm2d_5_recurrent_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_17AssignVariableOp-assignvariableop_17_adam_m_conv_lstm2d_5_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_18AssignVariableOp-assignvariableop_18_adam_v_conv_lstm2d_5_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_m_batch_normalization_5_gammaIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_v_batch_normalization_5_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_m_batch_normalization_5_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_22AssignVariableOp5assignvariableop_22_adam_v_batch_normalization_5_betaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_m_dense_8_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_v_dense_8_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_m_dense_8_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_v_dense_8_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_m_dense_9_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_v_dense_9_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_m_dense_9_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_v_dense_9_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_2Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_2Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ¤
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: ╞
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_38Identity_38:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362(
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
_user_specified_namefile_prefix:;7
5
_user_specified_namebatch_normalization_5/gamma::6
4
_user_specified_namebatch_normalization_5/beta:A=
;
_user_specified_name#!batch_normalization_5/moving_mean:EA
?
_user_specified_name'%batch_normalization_5/moving_variance:.*
(
_user_specified_namedense_8/kernel:,(
&
_user_specified_namedense_8/bias:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:4	0
.
_user_specified_nameconv_lstm2d_5/kernel:>
:
8
_user_specified_name conv_lstm2d_5/recurrent_kernel:2.
,
_user_specified_nameconv_lstm2d_5/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:;7
5
_user_specified_nameAdam/m/conv_lstm2d_5/kernel:;7
5
_user_specified_nameAdam/v/conv_lstm2d_5/kernel:EA
?
_user_specified_name'%Adam/m/conv_lstm2d_5/recurrent_kernel:EA
?
_user_specified_name'%Adam/v/conv_lstm2d_5/recurrent_kernel:95
3
_user_specified_nameAdam/m/conv_lstm2d_5/bias:95
3
_user_specified_nameAdam/v/conv_lstm2d_5/bias:B>
<
_user_specified_name$"Adam/m/batch_normalization_5/gamma:B>
<
_user_specified_name$"Adam/v/batch_normalization_5/gamma:A=
;
_user_specified_name#!Adam/m/batch_normalization_5/beta:A=
;
_user_specified_name#!Adam/v/batch_normalization_5/beta:51
/
_user_specified_nameAdam/m/dense_8/kernel:51
/
_user_specified_nameAdam/v/dense_8/kernel:3/
-
_user_specified_nameAdam/m/dense_8/bias:3/
-
_user_specified_nameAdam/v/dense_8/bias:51
/
_user_specified_nameAdam/m/dense_9/kernel:51
/
_user_specified_nameAdam/v/dense_9/kernel:3/
-
_user_specified_nameAdam/m/dense_9/bias:3/
-
_user_specified_nameAdam/v/dense_9/bias:' #
!
_user_specified_name	total_2:'!#
!
_user_specified_name	count_2:'"#
!
_user_specified_name	total_1:'##
!
_user_specified_name	count_1:%$!

_user_specified_nametotal:%%!

_user_specified_namecount
Ь	
▒
__inference_loss_fn_0_880458M
9dense_8_kernel_regularizer_l2loss_readvariableop_resource:
░А
identityИв0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpм
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9dense_8_kernel_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
░А*
dtype0Ж
!dense_8/kernel/Regularizer/L2LossL2Loss8dense_8/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<Э
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0*dense_8/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_8/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: U
NoOpNoOp1^dense_8/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
▌
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_880413

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▄	
┴
while_cond_878933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_878933___redundant_placeholder04
0while_while_cond_878933___redundant_placeholder14
0while_while_cond_878933___redundant_placeholder24
0while_while_cond_878933___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :         3:         3: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
:
▄	
┴
while_cond_879900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_879900___redundant_placeholder04
0while_while_cond_879900___redundant_placeholder14
0while_while_cond_879900___redundant_placeholder24
0while_while_cond_879900___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :         3:         3: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
:
╟
к
C__inference_dense_8_layer_call_and_return_conditional_losses_878779

inputs2
matmul_readvariableop_resource:
░А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
░А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         АС
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
░А*
dtype0Ж
!dense_8/kernel/Regularizer/L2LossL2Loss8dense_8/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<Э
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0*dense_8/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АЖ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ░: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:         ░
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
■$
Ю
while_body_878293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_878317_0:@(
while_878319_0:@
while_878321_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_878317:@&
while_878319:@
while_878321:@Ивwhile/StatefulPartitionedCallР
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      о
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:         3*
element_dtype0▓
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_878317_0while_878319_0while_878321_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:         3:         3:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *S
fNRL
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_878278r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Л
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*/
_output_shapes
:         3Л
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*/
_output_shapes
:         3H

while/NoOpNoOp^while/StatefulPartitionedCall*
_output_shapes
 "
while_878317while_878317_0"
while_878319while_878319_0"
while_878321while_878321_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :         3:         3: : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:         3:51
/
_output_shapes
:         3:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name878317:&	"
 
_user_specified_name878319:&
"
 
_user_specified_name878321
╘D
╚
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_878278

inputs

states
states_17
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identity

identity_1

identity_2Ив6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitП
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
t
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:         3С
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:         3С
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:         3С
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:         3У
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
У
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
У
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
У
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3e
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:         3b

Identity_1Identity	mul_5:z:0^NoOp*
T0*/
_output_shapes
:         3b

Identity_2Identity	add_5:z:0^NoOp*
T0*/
_output_shapes
:         3д
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:         3:         3:         3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:         3
 
_user_specified_nameinputs:WS
/
_output_shapes
:         3
 
_user_specified_namestates:WS
/
_output_shapes
:         3
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╡	
╩
.__inference_conv_lstm2d_5_layer_call_fn_879332
inputs_0!
unknown:@#
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *R
fMRK
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_878366w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&                  3: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&                  3
"
_user_specified_name
inputs_0:&"
 
_user_specified_name879324:&"
 
_user_specified_name879326:&"
 
_user_specified_name879328
╡	
╩
.__inference_conv_lstm2d_5_layer_call_fn_879321
inputs_0!
unknown:@#
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *R
fMRK
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_878177w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&                  3: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&                  3
"
_user_specified_name
inputs_0:&"
 
_user_specified_name879313:&"
 
_user_specified_name879315:&"
 
_user_specified_name879317
Ю9
д
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_878177

inputs!
unknown:@#
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвwhilef

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&                  3W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:         3j
zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    Х
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ~
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&                  3P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskЕ
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:         3:         3:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *S
fNRL
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_878089v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :         3:         3: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_878104*
condR
while_cond_878103*[
output_shapesJ
H: : : : :         3:         3: : : : : *
parallel_iterations Й
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ▐
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:         3*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                Ю
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         3Ж
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpunknown*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*/
_output_shapes
:         3}
NoOpNoOp^StatefulPartitionedCall7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&                  3: : : 22
StatefulPartitionedCallStatefulPartitionedCall2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&                  3
 
_user_specified_nameinputs:&"
 
_user_specified_name878090:&"
 
_user_specified_name878092:&"
 
_user_specified_name878094
Х<
∙
H__inference_sequential_4_layer_call_and_return_conditional_losses_878836
reshape_8_input.
conv_lstm2d_5_878729:@.
conv_lstm2d_5_878731:@"
conv_lstm2d_5_878733:@*
batch_normalization_5_878736:*
batch_normalization_5_878738:*
batch_normalization_5_878740:*
batch_normalization_5_878742:"
dense_8_878780:
░А
dense_8_878782:	А!
dense_9_878808:	А3
dense_9_878810:3
identityИв-batch_normalization_5/StatefulPartitionedCallв%conv_lstm2d_5/StatefulPartitionedCallв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвdense_8/StatefulPartitionedCallв0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpвdense_9/StatefulPartitionedCallв"dropout_10/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCallш
reshape_8/PartitionedCallPartitionedCallreshape_8_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_reshape_8_layer_call_and_return_conditional_losses_878501┘
%conv_lstm2d_5/StatefulPartitionedCallStatefulPartitionedCall"reshape_8/PartitionedCall:output:0conv_lstm2d_5_878729conv_lstm2d_5_878731conv_lstm2d_5_878733*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *R
fMRK
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_878728л
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall.conv_lstm2d_5/StatefulPartitionedCall:output:0batch_normalization_5_878736batch_normalization_5_878738batch_normalization_5_878740batch_normalization_5_878742*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_878440Ы
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_878756°
flatten_4/PartitionedCallPartitionedCall*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ░* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_878763в
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_878780dense_8_878782*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_878779м
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_878796к
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_9_878808dense_9_878810*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         3*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_878807∙
reshape_9/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         3* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *N
fIRG
E__inference_reshape_9_layer_call_and_return_conditional_losses_878825У
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_lstm2d_5_878729*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Б
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_8_878780* 
_output_shapes
:
░А*
dtype0Ж
!dense_8/kernel/Regularizer/L2LossL2Loss8dense_8/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<Э
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0*dense_8/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: u
IdentityIdentity"reshape_9/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         3є
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall&^conv_lstm2d_5/StatefulPartitionedCall7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_9/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         3: : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2N
%conv_lstm2d_5/StatefulPartitionedCall%conv_lstm2d_5/StatefulPartitionedCall2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp0dense_8/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:\ X
+
_output_shapes
:         3
)
_user_specified_namereshape_8_input:&"
 
_user_specified_name878729:&"
 
_user_specified_name878731:&"
 
_user_specified_name878733:&"
 
_user_specified_name878736:&"
 
_user_specified_name878738:&"
 
_user_specified_name878740:&"
 
_user_specified_name878742:&"
 
_user_specified_name878780:&	"
 
_user_specified_name878782:&
"
 
_user_specified_name878808:&"
 
_user_specified_name878810
щj
Ч
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879580
inputs_07
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identityИв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpвwhileh

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&                  3W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:         3j
zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    Х
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                А
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&                  3P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitг
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:         3г
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:         3г
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:         3г
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:         3б
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3q
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :         3:         3: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_879449*
condR
while_cond_879448*[
output_shapesJ
H: : : : :         3:         3: : : : : *
parallel_iterations Й
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ▐
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:         3*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                Ю
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*/
_output_shapes
:         3м
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&                  3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&                  3
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Э	
╚
.__inference_conv_lstm2d_5_layer_call_fn_879354

inputs!
unknown:@#
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         3*%
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 

TPU


TPU_SYSTEM2J 8В *R
fMRK
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879065w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         3<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         3: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         3
 
_user_specified_nameinputs:&"
 
_user_specified_name879346:&"
 
_user_specified_name879348:&"
 
_user_specified_name879350
╝j
Х
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_880032

inputs7
split_readvariableop_resource:@9
split_1_readvariableop_resource:@-
split_2_readvariableop_resource:@
identityИв6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpвsplit_2/ReadVariableOpвwhile]

zeros_like	ZerosLikeinputs*
T0*3
_output_shapes!
:         3W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :t
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:         3j
zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    Х
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                u
	transpose	Transposeinputstranspose/perm:output:0*
T0*3
_output_shapes!
:         3P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :z
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0╛
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :~
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*&
_output_shapes
:@*
dtype0─
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H::::*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitг
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
v
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:         3г
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:         3г
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:         3г
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
x
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:         3б
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
б
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:         3*
paddingSAME*
strides
p
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:         3J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?]
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:         3c
Add_1AddV2Mul:z:0Const_1:output:0*
T0*/
_output_shapes
:         3\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?З
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:         3T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    З
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:         3t
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:         3L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:         3e
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:         3q
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:         3t
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:         3Q
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:         3m
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:         3^
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:         3t
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:         3L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?c
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:         3e
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:         3^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:         3V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:         3S
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:         3q
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:         3v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :         3:         3: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_879901*
condR
while_cond_879900*[
output_shapesJ
H: : : : :         3:         3: : : : : *
parallel_iterations Й
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"       3      ▐
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*3
_output_shapes!
:         3*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:         3*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                Ю
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*3
_output_shapes!
:         3Ь
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpsplit_readvariableop_resource*&
_output_shapes
:@*
dtype0Т
'conv_lstm2d_5/kernel/Regularizer/L2LossL2Loss>conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&conv_lstm2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<п
$conv_lstm2d_5/kernel/Regularizer/mulMul/conv_lstm2d_5/kernel/Regularizer/mul/x:output:00conv_lstm2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*/
_output_shapes
:         3м
NoOpNoOp7^conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         3: : : 2p
6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp6conv_lstm2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:[ W
3
_output_shapes!
:         3
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*─
serving_default░
O
reshape_8_input<
!serving_default_reshape_8_input:0         3A
	reshape_94
StatefulPartitionedCall:0         3tensorflow/serving/predict:хн
├
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
├
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell
 
state_spec"
_tf_keras_rnn_layer
ъ
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'axis
	(gamma
)beta
*moving_mean
+moving_variance"
_tf_keras_layer
╝
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_random_generator"
_tf_keras_layer
е
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias"
_tf_keras_layer
╝
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G_random_generator"
_tf_keras_layer
╗
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias"
_tf_keras_layer
е
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
n
V0
W1
X2
(3
)4
*5
+6
?7
@8
N9
O10"
trackable_list_wrapper
_
V0
W1
X2
(3
)4
?5
@6
N7
O8"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
╩
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
═
_trace_0
`trace_12Ц
-__inference_sequential_4_layer_call_fn_879142
-__inference_sequential_4_layer_call_fn_879169╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z_trace_0z`trace_1
Г
atrace_0
btrace_12╠
H__inference_sequential_4_layer_call_and_return_conditional_losses_878836
H__inference_sequential_4_layer_call_and_return_conditional_losses_879115╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zatrace_0zbtrace_1
╘B╤
!__inference__wrapped_model_877988reshape_8_input"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ь
c
_variables
d_iterations
e_learning_rate
f_index_dict
g
_momentums
h_velocities
i_update_step_xla"
experimentalOptimizer
,
jserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ф
ptrace_02╟
*__inference_reshape_8_layer_call_fn_879295Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zptrace_0
 
qtrace_02т
E__inference_reshape_8_layer_call_and_return_conditional_losses_879310Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zqtrace_0
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
'
r0"
trackable_list_wrapper
╣

sstates
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
°
ytrace_0
ztrace_1
{trace_2
|trace_32Н
.__inference_conv_lstm2d_5_layer_call_fn_879321
.__inference_conv_lstm2d_5_layer_call_fn_879332
.__inference_conv_lstm2d_5_layer_call_fn_879343
.__inference_conv_lstm2d_5_layer_call_fn_879354╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zytrace_0zztrace_1z{trace_2z|trace_3
ц
}trace_0
~trace_1
trace_2
Аtrace_32∙
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879580
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879806
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_880032
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_880258╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z}trace_0z~trace_1ztrace_2zАtrace_3
я
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses
З_random_generator

Vkernel
Wrecurrent_kernel
Xbias"
_tf_keras_layer
 "
trackable_list_wrapper
<
(0
)1
*2
+3"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
у
Нtrace_0
Оtrace_12и
6__inference_batch_normalization_5_layer_call_fn_880275
6__inference_batch_normalization_5_layer_call_fn_880288╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0zОtrace_1
Щ
Пtrace_0
Рtrace_12▐
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_880306
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_880324╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0zРtrace_1
 "
trackable_list_wrapper
):'2batch_normalization_5/gamma
(:&2batch_normalization_5/beta
1:/ (2!batch_normalization_5/moving_mean
5:3 (2%batch_normalization_5/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
┐
Цtrace_0
Чtrace_12Д
*__inference_dropout_9_layer_call_fn_880329
*__inference_dropout_9_layer_call_fn_880334й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0zЧtrace_1
ї
Шtrace_0
Щtrace_12║
E__inference_dropout_9_layer_call_and_return_conditional_losses_880346
E__inference_dropout_9_layer_call_and_return_conditional_losses_880351й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zШtrace_0zЩtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ц
Яtrace_02╟
*__inference_flatten_4_layer_call_fn_880356Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЯtrace_0
Б
аtrace_02т
E__inference_flatten_4_layer_call_and_return_conditional_losses_880362Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
▓
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
ф
жtrace_02┼
(__inference_dense_8_layer_call_fn_880371Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zжtrace_0
 
зtrace_02р
C__inference_dense_8_layer_call_and_return_conditional_losses_880386Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zзtrace_0
": 
░А2dense_8/kernel
:А2dense_8/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
┴
нtrace_0
оtrace_12Ж
+__inference_dropout_10_layer_call_fn_880391
+__inference_dropout_10_layer_call_fn_880396й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0zоtrace_1
ў
пtrace_0
░trace_12╝
F__inference_dropout_10_layer_call_and_return_conditional_losses_880408
F__inference_dropout_10_layer_call_and_return_conditional_losses_880413й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0z░trace_1
"
_generic_user_object
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
ф
╢trace_02┼
(__inference_dense_9_layer_call_fn_880422Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╢trace_0
 
╖trace_02р
C__inference_dense_9_layer_call_and_return_conditional_losses_880432Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
!:	А32dense_9/kernel
:32dense_9/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
ц
╜trace_02╟
*__inference_reshape_9_layer_call_fn_880437Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╜trace_0
Б
╛trace_02т
E__inference_reshape_9_layer_call_and_return_conditional_losses_880450Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
.:,@2conv_lstm2d_5/kernel
8:6@2conv_lstm2d_5/recurrent_kernel
 :@2conv_lstm2d_5/bias
╧
┐trace_02░
__inference_loss_fn_0_880458П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z┐trace_0
.
*0
+1"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
8
└0
┴1
┬2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
-__inference_sequential_4_layer_call_fn_879142reshape_8_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
-__inference_sequential_4_layer_call_fn_879169reshape_8_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
H__inference_sequential_4_layer_call_and_return_conditional_losses_878836reshape_8_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
H__inference_sequential_4_layer_call_and_return_conditional_losses_879115reshape_8_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
└
d0
├1
─2
┼3
╞4
╟5
╚6
╔7
╩8
╦9
╠10
═11
╬12
╧13
╨14
╤15
╥16
╙17
╘18"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
h
├0
┼1
╟2
╔3
╦4
═5
╧6
╤7
╙8"
trackable_list_wrapper
h
─0
╞1
╚2
╩3
╠4
╬5
╨6
╥7
╘8"
trackable_list_wrapper
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
рB▌
$__inference_signature_wrapper_879282reshape_8_input"б
Ъ▓Ц
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 $

kwonlyargsЪ
jreshape_8_input
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_reshape_8_layer_call_fn_879295inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_reshape_8_layer_call_and_return_conditional_losses_879310inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╧
╒trace_02░
__inference_loss_fn_1_880466П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z╒trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 B№
.__inference_conv_lstm2d_5_layer_call_fn_879321inputs_0"╜
╢▓▓
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
.__inference_conv_lstm2d_5_layer_call_fn_879332inputs_0"╜
╢▓▓
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
.__inference_conv_lstm2d_5_layer_call_fn_879343inputs"╜
╢▓▓
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
.__inference_conv_lstm2d_5_layer_call_fn_879354inputs"╜
╢▓▓
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЪBЧ
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879580inputs_0"╜
╢▓▓
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЪBЧ
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879806inputs_0"╜
╢▓▓
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_880032inputs"╜
╢▓▓
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_880258inputs"╜
╢▓▓
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
'
r0"
trackable_list_wrapper
╕
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
╙
█trace_0
▄trace_12Ш
/__inference_conv_lstm_cell_layer_call_fn_880483
/__inference_conv_lstm_cell_layer_call_fn_880500│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0z▄trace_1
Й
▌trace_0
▐trace_12╬
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_880579
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_880658│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▌trace_0z▐trace_1
"
_generic_user_object
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
6__inference_batch_normalization_5_layer_call_fn_880275inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
6__inference_batch_normalization_5_layer_call_fn_880288inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_880306inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_880324inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
рB▌
*__inference_dropout_9_layer_call_fn_880329inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
рB▌
*__inference_dropout_9_layer_call_fn_880334inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_9_layer_call_and_return_conditional_losses_880346inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_9_layer_call_and_return_conditional_losses_880351inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_flatten_4_layer_call_fn_880356inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_flatten_4_layer_call_and_return_conditional_losses_880362inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_dense_8_layer_call_fn_880371inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_8_layer_call_and_return_conditional_losses_880386inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
сB▐
+__inference_dropout_10_layer_call_fn_880391inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
сB▐
+__inference_dropout_10_layer_call_fn_880396inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
F__inference_dropout_10_layer_call_and_return_conditional_losses_880408inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
F__inference_dropout_10_layer_call_and_return_conditional_losses_880413inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╥B╧
(__inference_dense_9_layer_call_fn_880422inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_9_layer_call_and_return_conditional_losses_880432inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_reshape_9_layer_call_fn_880437inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_reshape_9_layer_call_and_return_conditional_losses_880450inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│B░
__inference_loss_fn_0_880458"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
R
▀	variables
р	keras_api

сtotal

тcount"
_tf_keras_metric
R
у	variables
ф	keras_api

хtotal

цcount"
_tf_keras_metric
c
ч	variables
ш	keras_api

щtotal

ъcount
ы
_fn_kwargs"
_tf_keras_metric
3:1@2Adam/m/conv_lstm2d_5/kernel
3:1@2Adam/v/conv_lstm2d_5/kernel
=:;@2%Adam/m/conv_lstm2d_5/recurrent_kernel
=:;@2%Adam/v/conv_lstm2d_5/recurrent_kernel
%:#@2Adam/m/conv_lstm2d_5/bias
%:#@2Adam/v/conv_lstm2d_5/bias
.:,2"Adam/m/batch_normalization_5/gamma
.:,2"Adam/v/batch_normalization_5/gamma
-:+2!Adam/m/batch_normalization_5/beta
-:+2!Adam/v/batch_normalization_5/beta
':%
░А2Adam/m/dense_8/kernel
':%
░А2Adam/v/dense_8/kernel
 :А2Adam/m/dense_8/bias
 :А2Adam/v/dense_8/bias
&:$	А32Adam/m/dense_9/kernel
&:$	А32Adam/v/dense_9/kernel
:32Adam/m/dense_9/bias
:32Adam/v/dense_9/bias
│B░
__inference_loss_fn_1_880466"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
r0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ГBА
/__inference_conv_lstm_cell_layer_call_fn_880483inputsstates_0states_1"о
з▓г
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
/__inference_conv_lstm_cell_layer_call_fn_880500inputsstates_0states_1"о
з▓г
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_880579inputsstates_0states_1"о
з▓г
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_880658inputsstates_0states_1"о
з▓г
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
с0
т1"
trackable_list_wrapper
.
▀	variables"
_generic_user_object
:  (2total
:  (2count
0
х0
ц1"
trackable_list_wrapper
.
у	variables"
_generic_user_object
:  (2total
:  (2count
0
щ0
ъ1"
trackable_list_wrapper
.
ч	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperм
!__inference__wrapped_model_877988ЖVWX()*+?@NO<в9
2в/
-К*
reshape_8_input         3
к "9к6
4
	reshape_9'К$
	reshape_9         3ў
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_880306б()*+QвN
GвD
:К7
inputs+                           
p

 
к "FвC
<К9
tensor_0+                           
Ъ ў
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_880324б()*+QвN
GвD
:К7
inputs+                           
p 

 
к "FвC
<К9
tensor_0+                           
Ъ ╤
6__inference_batch_normalization_5_layer_call_fn_880275Ц()*+QвN
GвD
:К7
inputs+                           
p

 
к ";К8
unknown+                           ╤
6__inference_batch_normalization_5_layer_call_fn_880288Ц()*+QвN
GвD
:К7
inputs+                           
p 

 
к ";К8
unknown+                           т
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879580ФVWXWвT
MвJ
<Ъ9
7К4
inputs_0&                  3

 
p

 
к "4в1
*К'
tensor_0         3
Ъ т
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_879806ФVWXWвT
MвJ
<Ъ9
7К4
inputs_0&                  3

 
p 

 
к "4в1
*К'
tensor_0         3
Ъ ╥
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_880032ДVWXGвD
=в:
,К)
inputs         3

 
p

 
к "4в1
*К'
tensor_0         3
Ъ ╥
I__inference_conv_lstm2d_5_layer_call_and_return_conditional_losses_880258ДVWXGвD
=в:
,К)
inputs         3

 
p 

 
к "4в1
*К'
tensor_0         3
Ъ ╝
.__inference_conv_lstm2d_5_layer_call_fn_879321ЙVWXWвT
MвJ
<Ъ9
7К4
inputs_0&                  3

 
p

 
к ")К&
unknown         3╝
.__inference_conv_lstm2d_5_layer_call_fn_879332ЙVWXWвT
MвJ
<Ъ9
7К4
inputs_0&                  3

 
p 

 
к ")К&
unknown         3л
.__inference_conv_lstm2d_5_layer_call_fn_879343yVWXGвD
=в:
,К)
inputs         3

 
p

 
к ")К&
unknown         3л
.__inference_conv_lstm2d_5_layer_call_fn_879354yVWXGвD
=в:
,К)
inputs         3

 
p 

 
к ")К&
unknown         3Ш
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_880579╔VWXЫвЧ
ПвЛ
(К%
inputs         3
[вX
*К'
states_0         3
*К'
states_1         3
p
к "гвЯ
ЧвУ
,К)

tensor_0_0         3
cЪ`
.К+
tensor_0_1_0         3
.К+
tensor_0_1_1         3
Ъ Ш
J__inference_conv_lstm_cell_layer_call_and_return_conditional_losses_880658╔VWXЫвЧ
ПвЛ
(К%
inputs         3
[вX
*К'
states_0         3
*К'
states_1         3
p 
к "гвЯ
ЧвУ
,К)

tensor_0_0         3
cЪ`
.К+
tensor_0_1_0         3
.К+
tensor_0_1_1         3
Ъ ы
/__inference_conv_lstm_cell_layer_call_fn_880483╖VWXЫвЧ
ПвЛ
(К%
inputs         3
[вX
*К'
states_0         3
*К'
states_1         3
p
к "СвН
*К'
tensor_0         3
_Ъ\
,К)

tensor_1_0         3
,К)

tensor_1_1         3ы
/__inference_conv_lstm_cell_layer_call_fn_880500╖VWXЫвЧ
ПвЛ
(К%
inputs         3
[вX
*К'
states_0         3
*К'
states_1         3
p 
к "СвН
*К'
tensor_0         3
_Ъ\
,К)

tensor_1_0         3
,К)

tensor_1_1         3м
C__inference_dense_8_layer_call_and_return_conditional_losses_880386e?@0в-
&в#
!К
inputs         ░
к "-в*
#К 
tensor_0         А
Ъ Ж
(__inference_dense_8_layer_call_fn_880371Z?@0в-
&в#
!К
inputs         ░
к ""К
unknown         Ал
C__inference_dense_9_layer_call_and_return_conditional_losses_880432dNO0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         3
Ъ Е
(__inference_dense_9_layer_call_fn_880422YNO0в-
&в#
!К
inputs         А
к "!К
unknown         3п
F__inference_dropout_10_layer_call_and_return_conditional_losses_880408e4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ п
F__inference_dropout_10_layer_call_and_return_conditional_losses_880413e4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ Й
+__inference_dropout_10_layer_call_fn_880391Z4в1
*в'
!К
inputs         А
p
к ""К
unknown         АЙ
+__inference_dropout_10_layer_call_fn_880396Z4в1
*в'
!К
inputs         А
p 
к ""К
unknown         А╝
E__inference_dropout_9_layer_call_and_return_conditional_losses_880346s;в8
1в.
(К%
inputs         3
p
к "4в1
*К'
tensor_0         3
Ъ ╝
E__inference_dropout_9_layer_call_and_return_conditional_losses_880351s;в8
1в.
(К%
inputs         3
p 
к "4в1
*К'
tensor_0         3
Ъ Ц
*__inference_dropout_9_layer_call_fn_880329h;в8
1в.
(К%
inputs         3
p
к ")К&
unknown         3Ц
*__inference_dropout_9_layer_call_fn_880334h;в8
1в.
(К%
inputs         3
p 
к ")К&
unknown         3▒
E__inference_flatten_4_layer_call_and_return_conditional_losses_880362h7в4
-в*
(К%
inputs         3
к "-в*
#К 
tensor_0         ░
Ъ Л
*__inference_flatten_4_layer_call_fn_880356]7в4
-в*
(К%
inputs         3
к ""К
unknown         ░D
__inference_loss_fn_0_880458$?в

в 
к "К
unknown D
__inference_loss_fn_1_880466$Vв

в 
к "К
unknown ╕
E__inference_reshape_8_layer_call_and_return_conditional_losses_879310o3в0
)в&
$К!
inputs         3
к "8в5
.К+
tensor_0         3
Ъ Т
*__inference_reshape_8_layer_call_fn_879295d3в0
)в&
$К!
inputs         3
к "-К*
unknown         3м
E__inference_reshape_9_layer_call_and_return_conditional_losses_880450c/в,
%в"
 К
inputs         3
к "0в-
&К#
tensor_0         3
Ъ Ж
*__inference_reshape_9_layer_call_fn_880437X/в,
%в"
 К
inputs         3
к "%К"
unknown         3╥
H__inference_sequential_4_layer_call_and_return_conditional_losses_878836ЕVWX()*+?@NODвA
:в7
-К*
reshape_8_input         3
p

 
к "0в-
&К#
tensor_0         3
Ъ ╥
H__inference_sequential_4_layer_call_and_return_conditional_losses_879115ЕVWX()*+?@NODвA
:в7
-К*
reshape_8_input         3
p 

 
к "0в-
&К#
tensor_0         3
Ъ л
-__inference_sequential_4_layer_call_fn_879142zVWX()*+?@NODвA
:в7
-К*
reshape_8_input         3
p

 
к "%К"
unknown         3л
-__inference_sequential_4_layer_call_fn_879169zVWX()*+?@NODвA
:в7
-К*
reshape_8_input         3
p 

 
к "%К"
unknown         3┬
$__inference_signature_wrapper_879282ЩVWX()*+?@NOOвL
в 
EкB
@
reshape_8_input-К*
reshape_8_input         3"9к6
4
	reshape_9'К$
	reshape_9         3