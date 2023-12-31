��-
�!�!
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
�
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
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02unknown8��'
�
5residual_block/batch_normalization_18/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75residual_block/batch_normalization_18/moving_variance
�
Iresidual_block/batch_normalization_18/moving_variance/Read/ReadVariableOpReadVariableOp5residual_block/batch_normalization_18/moving_variance*
_output_shapes
:@*
dtype0
�
1residual_block/batch_normalization_18/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31residual_block/batch_normalization_18/moving_mean
�
Eresidual_block/batch_normalization_18/moving_mean/Read/ReadVariableOpReadVariableOp1residual_block/batch_normalization_18/moving_mean*
_output_shapes
:@*
dtype0
�
5residual_block/batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75residual_block/batch_normalization_17/moving_variance
�
Iresidual_block/batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp5residual_block/batch_normalization_17/moving_variance*
_output_shapes
:@*
dtype0
�
1residual_block/batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31residual_block/batch_normalization_17/moving_mean
�
Eresidual_block/batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp1residual_block/batch_normalization_17/moving_mean*
_output_shapes
:@*
dtype0
�
*residual_block/batch_normalization_18/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*residual_block/batch_normalization_18/beta
�
>residual_block/batch_normalization_18/beta/Read/ReadVariableOpReadVariableOp*residual_block/batch_normalization_18/beta*
_output_shapes
:@*
dtype0
�
+residual_block/batch_normalization_18/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+residual_block/batch_normalization_18/gamma
�
?residual_block/batch_normalization_18/gamma/Read/ReadVariableOpReadVariableOp+residual_block/batch_normalization_18/gamma*
_output_shapes
:@*
dtype0
�
*residual_block/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*residual_block/batch_normalization_17/beta
�
>residual_block/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp*residual_block/batch_normalization_17/beta*
_output_shapes
:@*
dtype0
�
+residual_block/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+residual_block/batch_normalization_17/gamma
�
?residual_block/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp+residual_block/batch_normalization_17/gamma*
_output_shapes
:@*
dtype0
�
residual_block/conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*0
shared_name!residual_block/conv2d_19/kernel
�
3residual_block/conv2d_19/kernel/Read/ReadVariableOpReadVariableOpresidual_block/conv2d_19/kernel*&
_output_shapes
:@@*
dtype0
�
residual_block/conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*0
shared_name!residual_block/conv2d_18/kernel
�
3residual_block/conv2d_18/kernel/Read/ReadVariableOpReadVariableOpresidual_block/conv2d_18/kernel*&
_output_shapes
:@@*
dtype0
�
3conv2__block/batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*D
shared_name53conv2__block/batch_normalization_16/moving_variance
�
Gconv2__block/batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp3conv2__block/batch_normalization_16/moving_variance*
_output_shapes
:@*
dtype0
�
/conv2__block/batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/conv2__block/batch_normalization_16/moving_mean
�
Cconv2__block/batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp/conv2__block/batch_normalization_16/moving_mean*
_output_shapes
:@*
dtype0
�
(conv2__block/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(conv2__block/batch_normalization_16/beta
�
<conv2__block/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp(conv2__block/batch_normalization_16/beta*
_output_shapes
:@*
dtype0
�
)conv2__block/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)conv2__block/batch_normalization_16/gamma
�
=conv2__block/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp)conv2__block/batch_normalization_16/gamma*
_output_shapes
:@*
dtype0
�
conv2__block/conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*.
shared_nameconv2__block/conv2d_17/kernel
�
1conv2__block/conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2__block/conv2d_17/kernel*'
_output_shapes
:�@*
dtype0
�
custom_attention/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name custom_attention/dense_12/bias
�
2custom_attention/dense_12/bias/Read/ReadVariableOpReadVariableOpcustom_attention/dense_12/bias*
_output_shapes
:@*
dtype0
�
 custom_attention/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*1
shared_name" custom_attention/dense_12/kernel
�
4custom_attention/dense_12/kernel/Read/ReadVariableOpReadVariableOp custom_attention/dense_12/kernel*
_output_shapes
:	�@*
dtype0
�
custom_attention/dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name custom_attention/dense_11/bias
�
2custom_attention/dense_11/bias/Read/ReadVariableOpReadVariableOpcustom_attention/dense_11/bias*
_output_shapes
:@*
dtype0
�
 custom_attention/dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*1
shared_name" custom_attention/dense_11/kernel
�
4custom_attention/dense_11/kernel/Read/ReadVariableOpReadVariableOp custom_attention/dense_11/kernel*
_output_shapes
:	�@*
dtype0
�
custom_attention/dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name custom_attention/dense_10/bias
�
2custom_attention/dense_10/bias/Read/ReadVariableOpReadVariableOpcustom_attention/dense_10/bias*
_output_shapes
:@*
dtype0
�
 custom_attention/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*1
shared_name" custom_attention/dense_10/kernel
�
4custom_attention/dense_10/kernel/Read/ReadVariableOpReadVariableOp custom_attention/dense_10/kernel*
_output_shapes

:@@*
dtype0
�
?conv2_transpose__block_3/batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?conv2_transpose__block_3/batch_normalization_15/moving_variance
�
Sconv2_transpose__block_3/batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp?conv2_transpose__block_3/batch_normalization_15/moving_variance*
_output_shapes
:@*
dtype0
�
;conv2_transpose__block_3/batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*L
shared_name=;conv2_transpose__block_3/batch_normalization_15/moving_mean
�
Oconv2_transpose__block_3/batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp;conv2_transpose__block_3/batch_normalization_15/moving_mean*
_output_shapes
:@*
dtype0
�
4conv2_transpose__block_3/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64conv2_transpose__block_3/batch_normalization_15/beta
�
Hconv2_transpose__block_3/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp4conv2_transpose__block_3/batch_normalization_15/beta*
_output_shapes
:@*
dtype0
�
5conv2_transpose__block_3/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75conv2_transpose__block_3/batch_normalization_15/gamma
�
Iconv2_transpose__block_3/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp5conv2_transpose__block_3/batch_normalization_15/gamma*
_output_shapes
:@*
dtype0
�
)conv2_transpose__block_3/conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*:
shared_name+)conv2_transpose__block_3/conv2d_16/kernel
�
=conv2_transpose__block_3/conv2d_16/kernel/Read/ReadVariableOpReadVariableOp)conv2_transpose__block_3/conv2d_16/kernel*'
_output_shapes
:�@*
dtype0
�
?conv2_transpose__block_2/batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*P
shared_nameA?conv2_transpose__block_2/batch_normalization_14/moving_variance
�
Sconv2_transpose__block_2/batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp?conv2_transpose__block_2/batch_normalization_14/moving_variance*
_output_shapes	
:�*
dtype0
�
;conv2_transpose__block_2/batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;conv2_transpose__block_2/batch_normalization_14/moving_mean
�
Oconv2_transpose__block_2/batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp;conv2_transpose__block_2/batch_normalization_14/moving_mean*
_output_shapes	
:�*
dtype0
�
4conv2_transpose__block_2/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*E
shared_name64conv2_transpose__block_2/batch_normalization_14/beta
�
Hconv2_transpose__block_2/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp4conv2_transpose__block_2/batch_normalization_14/beta*
_output_shapes	
:�*
dtype0
�
5conv2_transpose__block_2/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75conv2_transpose__block_2/batch_normalization_14/gamma
�
Iconv2_transpose__block_2/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp5conv2_transpose__block_2/batch_normalization_14/gamma*
_output_shapes	
:�*
dtype0
�
)conv2_transpose__block_2/conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*:
shared_name+)conv2_transpose__block_2/conv2d_15/kernel
�
=conv2_transpose__block_2/conv2d_15/kernel/Read/ReadVariableOpReadVariableOp)conv2_transpose__block_2/conv2d_15/kernel*(
_output_shapes
:��*
dtype0
�
?conv2_transpose__block_1/batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*P
shared_nameA?conv2_transpose__block_1/batch_normalization_13/moving_variance
�
Sconv2_transpose__block_1/batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp?conv2_transpose__block_1/batch_normalization_13/moving_variance*
_output_shapes	
:�*
dtype0
�
;conv2_transpose__block_1/batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;conv2_transpose__block_1/batch_normalization_13/moving_mean
�
Oconv2_transpose__block_1/batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp;conv2_transpose__block_1/batch_normalization_13/moving_mean*
_output_shapes	
:�*
dtype0
�
4conv2_transpose__block_1/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*E
shared_name64conv2_transpose__block_1/batch_normalization_13/beta
�
Hconv2_transpose__block_1/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp4conv2_transpose__block_1/batch_normalization_13/beta*
_output_shapes	
:�*
dtype0
�
5conv2_transpose__block_1/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75conv2_transpose__block_1/batch_normalization_13/gamma
�
Iconv2_transpose__block_1/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp5conv2_transpose__block_1/batch_normalization_13/gamma*
_output_shapes	
:�*
dtype0
�
)conv2_transpose__block_1/conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*:
shared_name+)conv2_transpose__block_1/conv2d_14/kernel
�
=conv2_transpose__block_1/conv2d_14/kernel/Read/ReadVariableOpReadVariableOp)conv2_transpose__block_1/conv2d_14/kernel*(
_output_shapes
:��*
dtype0
�
=conv2_transpose__block/batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*N
shared_name?=conv2_transpose__block/batch_normalization_12/moving_variance
�
Qconv2_transpose__block/batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp=conv2_transpose__block/batch_normalization_12/moving_variance*
_output_shapes	
:�*
dtype0
�
9conv2_transpose__block/batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*J
shared_name;9conv2_transpose__block/batch_normalization_12/moving_mean
�
Mconv2_transpose__block/batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp9conv2_transpose__block/batch_normalization_12/moving_mean*
_output_shapes	
:�*
dtype0
�
2conv2_transpose__block/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*C
shared_name42conv2_transpose__block/batch_normalization_12/beta
�
Fconv2_transpose__block/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp2conv2_transpose__block/batch_normalization_12/beta*
_output_shapes	
:�*
dtype0
�
3conv2_transpose__block/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53conv2_transpose__block/batch_normalization_12/gamma
�
Gconv2_transpose__block/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp3conv2_transpose__block/batch_normalization_12/gamma*
_output_shapes	
:�*
dtype0
�
'conv2_transpose__block/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*8
shared_name)'conv2_transpose__block/conv2d_13/kernel
�
;conv2_transpose__block/conv2d_13/kernel/Read/ReadVariableOpReadVariableOp'conv2_transpose__block/conv2d_13/kernel*(
_output_shapes
:��*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0
�
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�@*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��@*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
�
serving_default_input_1Placeholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
z
serving_default_input_2Placeholder*'
_output_shapes
:���������d*
dtype0*
shape:���������d
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2dense/kernel
dense/biasdense_1/kerneldense_1/bias'conv2_transpose__block/conv2d_13/kernel3conv2_transpose__block/batch_normalization_12/gamma2conv2_transpose__block/batch_normalization_12/beta9conv2_transpose__block/batch_normalization_12/moving_mean=conv2_transpose__block/batch_normalization_12/moving_variance)conv2_transpose__block_1/conv2d_14/kernel5conv2_transpose__block_1/batch_normalization_13/gamma4conv2_transpose__block_1/batch_normalization_13/beta;conv2_transpose__block_1/batch_normalization_13/moving_mean?conv2_transpose__block_1/batch_normalization_13/moving_variance)conv2_transpose__block_2/conv2d_15/kernel5conv2_transpose__block_2/batch_normalization_14/gamma4conv2_transpose__block_2/batch_normalization_14/beta;conv2_transpose__block_2/batch_normalization_14/moving_mean?conv2_transpose__block_2/batch_normalization_14/moving_variance)conv2_transpose__block_3/conv2d_16/kernel5conv2_transpose__block_3/batch_normalization_15/gamma4conv2_transpose__block_3/batch_normalization_15/beta;conv2_transpose__block_3/batch_normalization_15/moving_mean?conv2_transpose__block_3/batch_normalization_15/moving_variance custom_attention/dense_10/kernelcustom_attention/dense_10/bias custom_attention/dense_11/kernelcustom_attention/dense_11/bias custom_attention/dense_12/kernelcustom_attention/dense_12/biasconv2__block/conv2d_17/kernel)conv2__block/batch_normalization_16/gamma(conv2__block/batch_normalization_16/beta/conv2__block/batch_normalization_16/moving_mean3conv2__block/batch_normalization_16/moving_varianceresidual_block/conv2d_18/kernel+residual_block/batch_normalization_17/gamma*residual_block/batch_normalization_17/beta1residual_block/batch_normalization_17/moving_mean5residual_block/batch_normalization_17/moving_varianceresidual_block/conv2d_19/kernel+residual_block/batch_normalization_18/gamma*residual_block/batch_normalization_18/beta1residual_block/batch_normalization_18/moving_mean5residual_block/batch_normalization_18/moving_varianceconv2d_7/kernelconv2d_7/bias*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *^
_output_shapesL
J:���������@@:���������@@:����������*Q
_read_only_resource_inputs3
1/	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference_signature_wrapper_1230791

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer-5
layer_with_weights-1
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
layer_with_weights-9
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 

	keras_api* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias*
* 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias*
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses* 
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
CUP
DC2D
EBN
FLR*
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
MUP
NC2D
OBN
PLR*
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses
WUP
XC2D
YBN
ZLR*
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
aUP
bC2D
cBN
dLR*

e	keras_api* 
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
lWQ
mWK
nWV*
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
uC2D
vBN
wLR*
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~CD1
CD2
�LR1
�LR2
�BN1
�BN2*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
!0
"1
52
63
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46*
�
!0
"1
52
63
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 

�serving_default* 
* 

!0
"1*

!0
"1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

50
61*

50
61*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
,
�0
�1
�2
�3
�4*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
,
�0
�1
�2
�3
�4*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
,
�0
�1
�2
�3
�4*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
,
�0
�1
�2
�3
�4*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
* 
4
�0
�1
�2
�3
�4
�5*
4
�0
�1
�2
�3
�4
�5*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
,
�0
�1
�2
�3
�4*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
T
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9*
4
�0
�1
�2
�3
�4
�5*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
ga
VARIABLE_VALUE'conv2_transpose__block/conv2d_13/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3conv2_transpose__block/batch_normalization_12/gamma&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE2conv2_transpose__block/batch_normalization_12/beta&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9conv2_transpose__block/batch_normalization_12/moving_mean&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE=conv2_transpose__block/batch_normalization_12/moving_variance&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)conv2_transpose__block_1/conv2d_14/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5conv2_transpose__block_1/batch_normalization_13/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE4conv2_transpose__block_1/batch_normalization_13/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;conv2_transpose__block_1/batch_normalization_13/moving_mean'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE?conv2_transpose__block_1/batch_normalization_13/moving_variance'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE)conv2_transpose__block_2/conv2d_15/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5conv2_transpose__block_2/batch_normalization_14/gamma'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE4conv2_transpose__block_2/batch_normalization_14/beta'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;conv2_transpose__block_2/batch_normalization_14/moving_mean'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE?conv2_transpose__block_2/batch_normalization_14/moving_variance'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE)conv2_transpose__block_3/conv2d_16/kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5conv2_transpose__block_3/batch_normalization_15/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE4conv2_transpose__block_3/batch_normalization_15/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;conv2_transpose__block_3/batch_normalization_15/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE?conv2_transpose__block_3/batch_normalization_15/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE custom_attention/dense_10/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEcustom_attention/dense_10/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE custom_attention/dense_11/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEcustom_attention/dense_11/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE custom_attention/dense_12/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEcustom_attention/dense_12/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv2__block/conv2d_17/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE)conv2__block/batch_normalization_16/gamma'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE(conv2__block/batch_normalization_16/beta'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/conv2__block/batch_normalization_16/moving_mean'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3conv2__block/batch_normalization_16/moving_variance'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEresidual_block/conv2d_18/kernel'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEresidual_block/conv2d_19/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+residual_block/batch_normalization_17/gamma'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*residual_block/batch_normalization_17/beta'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+residual_block/batch_normalization_18/gamma'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*residual_block/batch_normalization_18/beta'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1residual_block/batch_normalization_17/moving_mean'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5residual_block/batch_normalization_17/moving_variance'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1residual_block/batch_normalization_18/moving_mean'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5residual_block/batch_normalization_18/moving_variance'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
x
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16*
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

�0
�1*
 
C0
D1
E2
F3*
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 

�0
�1*
 
M0
N1
O2
P3*
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 

�0
�1*
 
W0
X1
Y2
Z3*
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 

�0
�1*
 
a0
b1
c2
d3*
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

l0
m1
n2*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

�0
�1*

u0
v1
w2*
* 
* 
* 
* 
* 
* 
* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
$
�0
�1
�2
�3*
2
~0
1
�2
�3
�4
�5*
* 
* 
* 
* 
* 
* 
* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
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

�0
�1*
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

�0
�1*
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

�0
�1*
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

�0
�1*
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
* 
* 
* 
* 
* 
* 

�0
�1*
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
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp;conv2_transpose__block/conv2d_13/kernel/Read/ReadVariableOpGconv2_transpose__block/batch_normalization_12/gamma/Read/ReadVariableOpFconv2_transpose__block/batch_normalization_12/beta/Read/ReadVariableOpMconv2_transpose__block/batch_normalization_12/moving_mean/Read/ReadVariableOpQconv2_transpose__block/batch_normalization_12/moving_variance/Read/ReadVariableOp=conv2_transpose__block_1/conv2d_14/kernel/Read/ReadVariableOpIconv2_transpose__block_1/batch_normalization_13/gamma/Read/ReadVariableOpHconv2_transpose__block_1/batch_normalization_13/beta/Read/ReadVariableOpOconv2_transpose__block_1/batch_normalization_13/moving_mean/Read/ReadVariableOpSconv2_transpose__block_1/batch_normalization_13/moving_variance/Read/ReadVariableOp=conv2_transpose__block_2/conv2d_15/kernel/Read/ReadVariableOpIconv2_transpose__block_2/batch_normalization_14/gamma/Read/ReadVariableOpHconv2_transpose__block_2/batch_normalization_14/beta/Read/ReadVariableOpOconv2_transpose__block_2/batch_normalization_14/moving_mean/Read/ReadVariableOpSconv2_transpose__block_2/batch_normalization_14/moving_variance/Read/ReadVariableOp=conv2_transpose__block_3/conv2d_16/kernel/Read/ReadVariableOpIconv2_transpose__block_3/batch_normalization_15/gamma/Read/ReadVariableOpHconv2_transpose__block_3/batch_normalization_15/beta/Read/ReadVariableOpOconv2_transpose__block_3/batch_normalization_15/moving_mean/Read/ReadVariableOpSconv2_transpose__block_3/batch_normalization_15/moving_variance/Read/ReadVariableOp4custom_attention/dense_10/kernel/Read/ReadVariableOp2custom_attention/dense_10/bias/Read/ReadVariableOp4custom_attention/dense_11/kernel/Read/ReadVariableOp2custom_attention/dense_11/bias/Read/ReadVariableOp4custom_attention/dense_12/kernel/Read/ReadVariableOp2custom_attention/dense_12/bias/Read/ReadVariableOp1conv2__block/conv2d_17/kernel/Read/ReadVariableOp=conv2__block/batch_normalization_16/gamma/Read/ReadVariableOp<conv2__block/batch_normalization_16/beta/Read/ReadVariableOpCconv2__block/batch_normalization_16/moving_mean/Read/ReadVariableOpGconv2__block/batch_normalization_16/moving_variance/Read/ReadVariableOp3residual_block/conv2d_18/kernel/Read/ReadVariableOp3residual_block/conv2d_19/kernel/Read/ReadVariableOp?residual_block/batch_normalization_17/gamma/Read/ReadVariableOp>residual_block/batch_normalization_17/beta/Read/ReadVariableOp?residual_block/batch_normalization_18/gamma/Read/ReadVariableOp>residual_block/batch_normalization_18/beta/Read/ReadVariableOpEresidual_block/batch_normalization_17/moving_mean/Read/ReadVariableOpIresidual_block/batch_normalization_17/moving_variance/Read/ReadVariableOpEresidual_block/batch_normalization_18/moving_mean/Read/ReadVariableOpIresidual_block/batch_normalization_18/moving_variance/Read/ReadVariableOpConst*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__traced_save_1233096
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasconv2d_7/kernelconv2d_7/bias'conv2_transpose__block/conv2d_13/kernel3conv2_transpose__block/batch_normalization_12/gamma2conv2_transpose__block/batch_normalization_12/beta9conv2_transpose__block/batch_normalization_12/moving_mean=conv2_transpose__block/batch_normalization_12/moving_variance)conv2_transpose__block_1/conv2d_14/kernel5conv2_transpose__block_1/batch_normalization_13/gamma4conv2_transpose__block_1/batch_normalization_13/beta;conv2_transpose__block_1/batch_normalization_13/moving_mean?conv2_transpose__block_1/batch_normalization_13/moving_variance)conv2_transpose__block_2/conv2d_15/kernel5conv2_transpose__block_2/batch_normalization_14/gamma4conv2_transpose__block_2/batch_normalization_14/beta;conv2_transpose__block_2/batch_normalization_14/moving_mean?conv2_transpose__block_2/batch_normalization_14/moving_variance)conv2_transpose__block_3/conv2d_16/kernel5conv2_transpose__block_3/batch_normalization_15/gamma4conv2_transpose__block_3/batch_normalization_15/beta;conv2_transpose__block_3/batch_normalization_15/moving_mean?conv2_transpose__block_3/batch_normalization_15/moving_variance custom_attention/dense_10/kernelcustom_attention/dense_10/bias custom_attention/dense_11/kernelcustom_attention/dense_11/bias custom_attention/dense_12/kernelcustom_attention/dense_12/biasconv2__block/conv2d_17/kernel)conv2__block/batch_normalization_16/gamma(conv2__block/batch_normalization_16/beta/conv2__block/batch_normalization_16/moving_mean3conv2__block/batch_normalization_16/moving_varianceresidual_block/conv2d_18/kernelresidual_block/conv2d_19/kernel+residual_block/batch_normalization_17/gamma*residual_block/batch_normalization_17/beta+residual_block/batch_normalization_18/gamma*residual_block/batch_normalization_18/beta1residual_block/batch_normalization_17/moving_mean5residual_block/batch_normalization_17/moving_variance1residual_block/batch_normalization_18/moving_mean5residual_block/batch_normalization_18/moving_variance*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference__traced_restore_1233247��#
�
�
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1232911

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1232787

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1228742

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�&
�
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1231984

inputsD
(conv2d_15_conv2d_readvariableop_resource:��=
.batch_normalization_14_readvariableop_resource:	�?
0batch_normalization_14_readvariableop_1_resource:	�N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	�
identity��%batch_normalization_14/AssignNewValue�'batch_normalization_14/AssignNewValue_1�6batch_normalization_14/FusedBatchNormV3/ReadVariableOp�8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_14/ReadVariableOp�'batch_normalization_14/ReadVariableOp_1�conv2d_15/Conv2D/ReadVariableOpf
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_7/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_7/mul:z:0*
T0*0
_output_shapes
:���������  �*
half_pixel_centers(�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_15/Conv2DConv2D6up_sampling2d_7/resize/ResizeBilinear:resized_images:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_15/Conv2D:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������  �:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_14/AssignNewValueAssignVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource4batch_normalization_14/FusedBatchNormV3:batch_mean:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_14/AssignNewValue_1AssignVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_14/FusedBatchNormV3:batch_variance:09^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_15/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:���������  �~
IdentityIdentity&leaky_re_lu_15/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������  ��
NoOpNoOp&^batch_normalization_14/AssignNewValue(^batch_normalization_14/AssignNewValue_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1 ^conv2d_15/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2N
%batch_normalization_14/AssignNewValue%batch_normalization_14/AssignNewValue2R
'batch_normalization_14/AssignNewValue_1'batch_normalization_14/AssignNewValue_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_1230791
input_1
input_2
unknown:
��
	unknown_0:	�
	unknown_1:
��@
	unknown_2:	�@%
	unknown_3:��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�%
	unknown_8:��
	unknown_9:	�

unknown_10:	�

unknown_11:	�

unknown_12:	�&

unknown_13:��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�%

unknown_18:�@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@@

unknown_24:@

unknown_25:	�@

unknown_26:@

unknown_27:	�@

unknown_28:@%

unknown_29:�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@$

unknown_34:@@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:@$

unknown_39:@@

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:@

unknown_45:
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2input_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *^
_output_shapesL
J:���������@@:���������@@:����������*Q
_read_only_resource_inputs3
1/	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__wrapped_model_1228421w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@y

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@@r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������:���������d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������d
!
_user_specified_name	input_2
�
�
I__inference_conv2__block_layer_call_and_return_conditional_losses_1232253

inputsC
(conv2d_17_conv2d_readvariableop_resource:�@<
.batch_normalization_16_readvariableop_resource:@>
0batch_normalization_16_readvariableop_1_resource:@M
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@
identity��6batch_normalization_16/FusedBatchNormV3/ReadVariableOp�8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_16/ReadVariableOp�'batch_normalization_16/ReadVariableOp_1�conv2d_17/Conv2D/ReadVariableOp�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_17/Conv2D:output:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
leaky_re_lu_17/LeakyRelu	LeakyRelu+batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_17/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp7^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_1 ^conv2d_17/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@@�: : : : : 2p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������@@�
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1232867

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
:__inference_conv2_transpose__block_1_layer_call_fn_1231835

inputs#
unknown:��
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1229099x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1228806

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1228711

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�&
�
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1229759

inputsC
(conv2d_16_conv2d_readvariableop_resource:�@<
.batch_normalization_15_readvariableop_resource:@>
0batch_normalization_15_readvariableop_1_resource:@M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@
identity��%batch_normalization_15/AssignNewValue�'batch_normalization_15/AssignNewValue_1�6batch_normalization_15/FusedBatchNormV3/ReadVariableOp�8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_15/ReadVariableOp�'batch_normalization_15/ReadVariableOp_1�conv2d_16/Conv2D/ReadVariableOpf
up_sampling2d_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_8/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_8/mulMulup_sampling2d_8/Const:output:0 up_sampling2d_8/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_8/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_8/mul:z:0*
T0*0
_output_shapes
:���������@@�*
half_pixel_centers(�
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_16/Conv2DConv2D6up_sampling2d_8/resize/ResizeBilinear:resized_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_16/Conv2D:output:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_15/AssignNewValueAssignVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource4batch_normalization_15/FusedBatchNormV3:batch_mean:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_15/AssignNewValue_1AssignVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_15/FusedBatchNormV3:batch_variance:09^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_16/LeakyRelu	LeakyRelu+batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_16/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp&^batch_normalization_15/AssignNewValue(^batch_normalization_15/AssignNewValue_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1 ^conv2d_16/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������  �: : : : : 2N
%batch_normalization_15/AssignNewValue%batch_normalization_15/AssignNewValue2R
'batch_normalization_15/AssignNewValue_1'batch_normalization_15/AssignNewValue_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�

h
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1232602

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

h
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1228603

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1231794

inputsD
(conv2d_13_conv2d_readvariableop_resource:��=
.batch_normalization_12_readvariableop_resource:	�?
0batch_normalization_12_readvariableop_1_resource:	�N
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	�
identity��6batch_normalization_12/FusedBatchNormV3/ReadVariableOp�8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_12/ReadVariableOp�'batch_normalization_12/ReadVariableOp_1�conv2d_13/Conv2D/ReadVariableOpf
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_5/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_13/Conv2DConv2D6up_sampling2d_5/resize/ResizeBilinear:resized_images:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_13/Conv2D:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
leaky_re_lu_13/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:����������~
IdentityIdentity&leaky_re_lu_13/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp7^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1 ^conv2d_13/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_1_layer_call_and_return_conditional_losses_1231719

inputs2
matmul_readvariableop_resource:
��@.
biasadd_readvariableop_resource:	�@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������@b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_1230895
inputs_0
inputs_1
unknown:
��
	unknown_0:	�
	unknown_1:
��@
	unknown_2:	�@%
	unknown_3:��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�%
	unknown_8:��
	unknown_9:	�

unknown_10:	�

unknown_11:	�

unknown_12:	�&

unknown_13:��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�%

unknown_18:�@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@@

unknown_24:@

unknown_25:	�@

unknown_26:@

unknown_27:	�@

unknown_28:@%

unknown_29:�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@$

unknown_34:@@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:@$

unknown_39:@@

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:@

unknown_45:
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *^
_output_shapesL
J:���������@@:����������:���������@@*Q
_read_only_resource_inputs3
1/	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1229438w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
Y
-__inference_concatenate_layer_call_fn_1231692
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1229000a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������d:����������:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�	
�
8__inference_batch_normalization_13_layer_call_fn_1232536

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1228545�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_12_layer_call_fn_1232470

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1228493�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
)__inference_dense_1_layer_call_fn_1231708

inputs
unknown:
��@
	unknown_0:	�@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1229013p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�&
�
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1231820

inputsD
(conv2d_13_conv2d_readvariableop_resource:��=
.batch_normalization_12_readvariableop_resource:	�?
0batch_normalization_12_readvariableop_1_resource:	�N
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	�
identity��%batch_normalization_12/AssignNewValue�'batch_normalization_12/AssignNewValue_1�6batch_normalization_12/FusedBatchNormV3/ReadVariableOp�8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_12/ReadVariableOp�'batch_normalization_12/ReadVariableOp_1�conv2d_13/Conv2D/ReadVariableOpf
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_5/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_13/Conv2DConv2D6up_sampling2d_5/resize/ResizeBilinear:resized_images:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_13/Conv2D:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_12/AssignNewValueAssignVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource4batch_normalization_12/FusedBatchNormV3:batch_mean:07^batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_12/AssignNewValue_1AssignVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_12/FusedBatchNormV3:batch_variance:09^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_13/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:����������~
IdentityIdentity&leaky_re_lu_13/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp&^batch_normalization_12/AssignNewValue(^batch_normalization_12/AssignNewValue_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1 ^conv2d_13/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2N
%batch_normalization_12/AssignNewValue%batch_normalization_12/AssignNewValue2R
'batch_normalization_12/AssignNewValue_1'batch_normalization_12/AssignNewValue_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_7_layer_call_fn_1232416

inputs!
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1229429w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_16_layer_call_fn_1232769

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1228806�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�!
�
I__inference_conv2__block_layer_call_and_return_conditional_losses_1229681

inputsC
(conv2d_17_conv2d_readvariableop_resource:�@<
.batch_normalization_16_readvariableop_resource:@>
0batch_normalization_16_readvariableop_1_resource:@M
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@
identity��%batch_normalization_16/AssignNewValue�'batch_normalization_16/AssignNewValue_1�6batch_normalization_16/FusedBatchNormV3/ReadVariableOp�8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_16/ReadVariableOp�'batch_normalization_16/ReadVariableOp_1�conv2d_17/Conv2D/ReadVariableOp�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_17/Conv2D:output:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_16/AssignNewValueAssignVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource4batch_normalization_16/FusedBatchNormV3:batch_mean:07^batch_normalization_16/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_16/AssignNewValue_1AssignVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_16/FusedBatchNormV3:batch_variance:09^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_17/LeakyRelu	LeakyRelu+batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_17/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp&^batch_normalization_16/AssignNewValue(^batch_normalization_16/AssignNewValue_17^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_1 ^conv2d_17/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@@�: : : : : 2N
%batch_normalization_16/AssignNewValue%batch_normalization_16/AssignNewValue2R
'batch_normalization_16/AssignNewValue_1'batch_normalization_16/AssignNewValue_12p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������@@�
 
_user_specified_nameinputs
�

�
D__inference_dense_1_layer_call_and_return_conditional_losses_1229013

inputs2
matmul_readvariableop_resource:
��@.
biasadd_readvariableop_resource:	�@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������@b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1228576

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�&
�
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1232066

inputsC
(conv2d_16_conv2d_readvariableop_resource:�@<
.batch_normalization_15_readvariableop_resource:@>
0batch_normalization_15_readvariableop_1_resource:@M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@
identity��%batch_normalization_15/AssignNewValue�'batch_normalization_15/AssignNewValue_1�6batch_normalization_15/FusedBatchNormV3/ReadVariableOp�8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_15/ReadVariableOp�'batch_normalization_15/ReadVariableOp_1�conv2d_16/Conv2D/ReadVariableOpf
up_sampling2d_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_8/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_8/mulMulup_sampling2d_8/Const:output:0 up_sampling2d_8/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_8/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_8/mul:z:0*
T0*0
_output_shapes
:���������@@�*
half_pixel_centers(�
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_16/Conv2DConv2D6up_sampling2d_8/resize/ResizeBilinear:resized_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_16/Conv2D:output:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_15/AssignNewValueAssignVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource4batch_normalization_15/FusedBatchNormV3:batch_mean:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_15/AssignNewValue_1AssignVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_15/FusedBatchNormV3:batch_variance:09^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_16/LeakyRelu	LeakyRelu+batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_16/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp&^batch_normalization_15/AssignNewValue(^batch_normalization_15/AssignNewValue_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1 ^conv2d_16/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������  �: : : : : 2N
%batch_normalization_15/AssignNewValue%batch_normalization_15/AssignNewValue2R
'batch_normalization_15/AssignNewValue_1'batch_normalization_15/AssignNewValue_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�e
�
B__inference_model_layer_call_and_return_conditional_losses_1230685
input_2
input_1!
dense_1230570:
��
dense_1230572:	�#
dense_1_1230577:
��@
dense_1_1230579:	�@:
conv2_transpose__block_1230583:��-
conv2_transpose__block_1230585:	�-
conv2_transpose__block_1230587:	�-
conv2_transpose__block_1230589:	�-
conv2_transpose__block_1230591:	�<
 conv2_transpose__block_1_1230594:��/
 conv2_transpose__block_1_1230596:	�/
 conv2_transpose__block_1_1230598:	�/
 conv2_transpose__block_1_1230600:	�/
 conv2_transpose__block_1_1230602:	�<
 conv2_transpose__block_2_1230605:��/
 conv2_transpose__block_2_1230607:	�/
 conv2_transpose__block_2_1230609:	�/
 conv2_transpose__block_2_1230611:	�/
 conv2_transpose__block_2_1230613:	�;
 conv2_transpose__block_3_1230616:�@.
 conv2_transpose__block_3_1230618:@.
 conv2_transpose__block_3_1230620:@.
 conv2_transpose__block_3_1230622:@.
 conv2_transpose__block_3_1230624:@*
custom_attention_1230631:@@&
custom_attention_1230633:@+
custom_attention_1230635:	�@&
custom_attention_1230637:@+
custom_attention_1230639:	�@&
custom_attention_1230641:@/
conv2__block_1230645:�@"
conv2__block_1230647:@"
conv2__block_1230649:@"
conv2__block_1230651:@"
conv2__block_1230653:@0
residual_block_1230656:@@$
residual_block_1230658:@$
residual_block_1230660:@$
residual_block_1230662:@$
residual_block_1230664:@0
residual_block_1230666:@@$
residual_block_1230668:@$
residual_block_1230670:@$
residual_block_1230672:@$
residual_block_1230674:@*
conv2d_7_1230677:@
conv2d_7_1230679:
identity

identity_1

identity_2��$conv2__block/StatefulPartitionedCall�.conv2_transpose__block/StatefulPartitionedCall�0conv2_transpose__block_1/StatefulPartitionedCall�0conv2_transpose__block_2/StatefulPartitionedCall�0conv2_transpose__block_3/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�(custom_attention/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�lambda/StatefulPartitionedCall�&residual_block/StatefulPartitionedCall�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinput_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask*
shrink_axis_mask�
dense/StatefulPartitionedCallStatefulPartitionedCall/tf.__operators__.getitem/strided_slice:output:0dense_1230570dense_1230572*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1228968�
lambda/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1229991�
concatenate/PartitionedCallPartitionedCallinput_2'lambda/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1229000�
dense_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1_1230577dense_1_1230579*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1229013�
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1229033�
.conv2_transpose__block/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2_transpose__block_1230583conv2_transpose__block_1230585conv2_transpose__block_1230587conv2_transpose__block_1230589conv2_transpose__block_1230591*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1229930�
0conv2_transpose__block_1/StatefulPartitionedCallStatefulPartitionedCall7conv2_transpose__block/StatefulPartitionedCall:output:0 conv2_transpose__block_1_1230594 conv2_transpose__block_1_1230596 conv2_transpose__block_1_1230598 conv2_transpose__block_1_1230600 conv2_transpose__block_1_1230602*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1229873�
0conv2_transpose__block_2/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_1/StatefulPartitionedCall:output:0 conv2_transpose__block_2_1230605 conv2_transpose__block_2_1230607 conv2_transpose__block_2_1230609 conv2_transpose__block_2_1230611 conv2_transpose__block_2_1230613*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1229816�
0conv2_transpose__block_3/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_2/StatefulPartitionedCall:output:0 conv2_transpose__block_3_1230616 conv2_transpose__block_3_1230618 conv2_transpose__block_3_1230620 conv2_transpose__block_3_1230622 conv2_transpose__block_3_1230624*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1229759�
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinput_17tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
(custom_attention/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_3/StatefulPartitionedCall:output:01tf.__operators__.getitem_1/strided_slice:output:0custom_attention_1230631custom_attention_1230633custom_attention_1230635custom_attention_1230637custom_attention_1230639custom_attention_1230641*
Tin

2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:���������@@�:���������@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_custom_attention_layer_call_and_return_conditional_losses_1229306�
$conv2__block/StatefulPartitionedCallStatefulPartitionedCall1custom_attention/StatefulPartitionedCall:output:0conv2__block_1230645conv2__block_1230647conv2__block_1230649conv2__block_1230651conv2__block_1230653*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_conv2__block_layer_call_and_return_conditional_losses_1229681�
&residual_block/StatefulPartitionedCallStatefulPartitionedCall-conv2__block/StatefulPartitionedCall:output:0residual_block_1230656residual_block_1230658residual_block_1230660residual_block_1230662residual_block_1230664residual_block_1230666residual_block_1230668residual_block_1230670residual_block_1230672residual_block_1230674*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_layer_call_and_return_conditional_losses_1229618�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall/residual_block/StatefulPartitionedCall:output:0conv2d_7_1230677conv2d_7_1230679*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1229429�
IdentityIdentity)conv2d_7/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@x

Identity_1Identity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������

Identity_2Identity1custom_attention/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp%^conv2__block/StatefulPartitionedCall/^conv2_transpose__block/StatefulPartitionedCall1^conv2_transpose__block_1/StatefulPartitionedCall1^conv2_transpose__block_2/StatefulPartitionedCall1^conv2_transpose__block_3/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall)^custom_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lambda/StatefulPartitionedCall'^residual_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$conv2__block/StatefulPartitionedCall$conv2__block/StatefulPartitionedCall2`
.conv2_transpose__block/StatefulPartitionedCall.conv2_transpose__block/StatefulPartitionedCall2d
0conv2_transpose__block_1/StatefulPartitionedCall0conv2_transpose__block_1/StatefulPartitionedCall2d
0conv2_transpose__block_2/StatefulPartitionedCall0conv2_transpose__block_2/StatefulPartitionedCall2d
0conv2_transpose__block_3/StatefulPartitionedCall0conv2_transpose__block_3/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2T
(custom_attention/StatefulPartitionedCall(custom_attention/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lambda/StatefulPartitionedCalllambda/StatefulPartitionedCall2P
&residual_block/StatefulPartitionedCall&residual_block/StatefulPartitionedCall:P L
'
_output_shapes
:���������d
!
_user_specified_name	input_2:UQ
,
_output_shapes
:����������
!
_user_specified_name	input_1
�	
�
8__inference_batch_normalization_18_layer_call_fn_1232893

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1228934�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�&
�
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1229873

inputsD
(conv2d_14_conv2d_readvariableop_resource:��=
.batch_normalization_13_readvariableop_resource:	�?
0batch_normalization_13_readvariableop_1_resource:	�N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	�
identity��%batch_normalization_13/AssignNewValue�'batch_normalization_13/AssignNewValue_1�6batch_normalization_13/FusedBatchNormV3/ReadVariableOp�8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_13/ReadVariableOp�'batch_normalization_13/ReadVariableOp_1�conv2d_14/Conv2D/ReadVariableOpf
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_6/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_14/Conv2DConv2D6up_sampling2d_6/resize/ResizeBilinear:resized_images:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_14/Conv2D:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_13/AssignNewValueAssignVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource4batch_normalization_13/FusedBatchNormV3:batch_mean:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_13/AssignNewValue_1AssignVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_13/FusedBatchNormV3:batch_variance:09^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_14/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:����������~
IdentityIdentity&leaky_re_lu_14/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp&^batch_normalization_13/AssignNewValue(^batch_normalization_13/AssignNewValue_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1 ^conv2d_14/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2N
%batch_normalization_13/AssignNewValue%batch_normalization_13/AssignNewValue2R
'batch_normalization_13/AssignNewValue_1'batch_normalization_13/AssignNewValue_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1228628

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
`
D__inference_reshape_layer_call_and_return_conditional_losses_1231738

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
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
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:����������a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������@:P L
(
_output_shapes
:����������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_16_layer_call_fn_1232756

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1228775�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
M
1__inference_up_sampling2d_5_layer_call_fn_1232432

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1228437�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�f
�
B__inference_model_layer_call_and_return_conditional_losses_1229438

inputs
inputs_1!
dense_1228969:
��
dense_1228971:	�#
dense_1_1229014:
��@
dense_1_1229016:	�@:
conv2_transpose__block_1229062:��-
conv2_transpose__block_1229064:	�-
conv2_transpose__block_1229066:	�-
conv2_transpose__block_1229068:	�-
conv2_transpose__block_1229070:	�<
 conv2_transpose__block_1_1229100:��/
 conv2_transpose__block_1_1229102:	�/
 conv2_transpose__block_1_1229104:	�/
 conv2_transpose__block_1_1229106:	�/
 conv2_transpose__block_1_1229108:	�<
 conv2_transpose__block_2_1229138:��/
 conv2_transpose__block_2_1229140:	�/
 conv2_transpose__block_2_1229142:	�/
 conv2_transpose__block_2_1229144:	�/
 conv2_transpose__block_2_1229146:	�;
 conv2_transpose__block_3_1229176:�@.
 conv2_transpose__block_3_1229178:@.
 conv2_transpose__block_3_1229180:@.
 conv2_transpose__block_3_1229182:@.
 conv2_transpose__block_3_1229184:@*
custom_attention_1229307:@@&
custom_attention_1229309:@+
custom_attention_1229311:	�@&
custom_attention_1229313:@+
custom_attention_1229315:	�@&
custom_attention_1229317:@/
conv2__block_1229344:�@"
conv2__block_1229346:@"
conv2__block_1229348:@"
conv2__block_1229350:@"
conv2__block_1229352:@0
residual_block_1229397:@@$
residual_block_1229399:@$
residual_block_1229401:@$
residual_block_1229403:@$
residual_block_1229405:@0
residual_block_1229407:@@$
residual_block_1229409:@$
residual_block_1229411:@$
residual_block_1229413:@$
residual_block_1229415:@*
conv2d_7_1229430:@
conv2d_7_1229432:
identity

identity_1

identity_2��$conv2__block/StatefulPartitionedCall�.conv2_transpose__block/StatefulPartitionedCall�0conv2_transpose__block_1/StatefulPartitionedCall�0conv2_transpose__block_2/StatefulPartitionedCall�0conv2_transpose__block_3/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�(custom_attention/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�lambda/StatefulPartitionedCall�&residual_block/StatefulPartitionedCall�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask*
shrink_axis_mask�
dense/StatefulPartitionedCallStatefulPartitionedCall/tf.__operators__.getitem/strided_slice:output:0dense_1228969dense_1228971*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1228968�
lambda/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1228991�
concatenate/PartitionedCallPartitionedCallinputs'lambda/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1229000�
dense_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1_1229014dense_1_1229016*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1229013�
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1229033�
.conv2_transpose__block/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2_transpose__block_1229062conv2_transpose__block_1229064conv2_transpose__block_1229066conv2_transpose__block_1229068conv2_transpose__block_1229070*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1229061�
0conv2_transpose__block_1/StatefulPartitionedCallStatefulPartitionedCall7conv2_transpose__block/StatefulPartitionedCall:output:0 conv2_transpose__block_1_1229100 conv2_transpose__block_1_1229102 conv2_transpose__block_1_1229104 conv2_transpose__block_1_1229106 conv2_transpose__block_1_1229108*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1229099�
0conv2_transpose__block_2/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_1/StatefulPartitionedCall:output:0 conv2_transpose__block_2_1229138 conv2_transpose__block_2_1229140 conv2_transpose__block_2_1229142 conv2_transpose__block_2_1229144 conv2_transpose__block_2_1229146*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1229137�
0conv2_transpose__block_3/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_2/StatefulPartitionedCall:output:0 conv2_transpose__block_3_1229176 conv2_transpose__block_3_1229178 conv2_transpose__block_3_1229180 conv2_transpose__block_3_1229182 conv2_transpose__block_3_1229184*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1229175�
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinputs_17tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
(custom_attention/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_3/StatefulPartitionedCall:output:01tf.__operators__.getitem_1/strided_slice:output:0custom_attention_1229307custom_attention_1229309custom_attention_1229311custom_attention_1229313custom_attention_1229315custom_attention_1229317*
Tin

2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:���������@@�:���������@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_custom_attention_layer_call_and_return_conditional_losses_1229306�
$conv2__block/StatefulPartitionedCallStatefulPartitionedCall1custom_attention/StatefulPartitionedCall:output:0conv2__block_1229344conv2__block_1229346conv2__block_1229348conv2__block_1229350conv2__block_1229352*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_conv2__block_layer_call_and_return_conditional_losses_1229343�
&residual_block/StatefulPartitionedCallStatefulPartitionedCall-conv2__block/StatefulPartitionedCall:output:0residual_block_1229397residual_block_1229399residual_block_1229401residual_block_1229403residual_block_1229405residual_block_1229407residual_block_1229409residual_block_1229411residual_block_1229413residual_block_1229415*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_layer_call_and_return_conditional_losses_1229396�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall/residual_block/StatefulPartitionedCall:output:0conv2d_7_1229430conv2d_7_1229432*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1229429�
IdentityIdentity)conv2d_7/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@x

Identity_1Identity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������

Identity_2Identity1custom_attention/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp%^conv2__block/StatefulPartitionedCall/^conv2_transpose__block/StatefulPartitionedCall1^conv2_transpose__block_1/StatefulPartitionedCall1^conv2_transpose__block_2/StatefulPartitionedCall1^conv2_transpose__block_3/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall)^custom_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lambda/StatefulPartitionedCall'^residual_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$conv2__block/StatefulPartitionedCall$conv2__block/StatefulPartitionedCall2`
.conv2_transpose__block/StatefulPartitionedCall.conv2_transpose__block/StatefulPartitionedCall2d
0conv2_transpose__block_1/StatefulPartitionedCall0conv2_transpose__block_1/StatefulPartitionedCall2d
0conv2_transpose__block_2/StatefulPartitionedCall0conv2_transpose__block_2/StatefulPartitionedCall2d
0conv2_transpose__block_3/StatefulPartitionedCall0conv2_transpose__block_3/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2T
(custom_attention/StatefulPartitionedCall(custom_attention/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lambda/StatefulPartitionedCalllambda/StatefulPartitionedCall2P
&residual_block/StatefulPartitionedCall&residual_block/StatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:TP
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1232585

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
:__inference_conv2_transpose__block_1_layer_call_fn_1231850

inputs#
unknown:��
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1229873x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1228545

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�

�
0__inference_residual_block_layer_call_fn_1232325

inputs!
unknown:@@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@#
	unknown_4:@@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_layer_call_and_return_conditional_losses_1229618w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�1
�	
K__inference_residual_block_layer_call_and_return_conditional_losses_1229396

inputsB
(conv2d_18_conv2d_readvariableop_resource:@@<
.batch_normalization_17_readvariableop_resource:@>
0batch_normalization_17_readvariableop_1_resource:@M
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@<
.batch_normalization_18_readvariableop_resource:@>
0batch_normalization_18_readvariableop_1_resource:@M
?batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@
identity��6batch_normalization_17/FusedBatchNormV3/ReadVariableOp�8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_17/ReadVariableOp�'batch_normalization_17/ReadVariableOp_1�6batch_normalization_18/FusedBatchNormV3/ReadVariableOp�8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_18/ReadVariableOp�'batch_normalization_18/ReadVariableOp_1�conv2d_18/Conv2D/ReadVariableOp�conv2d_19/Conv2D/ReadVariableOp�
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_18/Conv2D:output:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
leaky_re_lu_18/LeakyRelu	LeakyRelu+batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_19/Conv2DConv2D&leaky_re_lu_18/LeakyRelu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3conv2d_19/Conv2D:output:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( 
add/addAddV2+batch_normalization_18/FusedBatchNormV3:y:0inputs*
T0*/
_output_shapes
:���������@@@c
leaky_re_lu_19/LeakyRelu	LeakyReluadd/add:z:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_19/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp7^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_1 ^conv2d_18/Conv2D/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@@: : : : : : : : : : 2p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
b
C__inference_lambda_layer_call_and_return_conditional_losses_1229991

inputs
identity�d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskW
ExpExpstrided_slice_1:output:0*
T0*(
_output_shapes
:����������K
ShapeShapestrided_slice:output:0*
T0*
_output_shapes
:�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed���)*
seed2����
random_normal/mulMul+random_normal/RandomStandardNormal:output:0Exp:y:0*
T0*(
_output_shapes
:����������x
random_normalAddV2random_normal/mul:z:0strided_slice:output:0*
T0*(
_output_shapes
:����������Z
IdentityIdentityrandom_normal:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_15_layer_call_fn_1232694

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1228711�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_conv2_transpose__block_layer_call_fn_1231753

inputs#
unknown:��
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1229061x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�&
�
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1229816

inputsD
(conv2d_15_conv2d_readvariableop_resource:��=
.batch_normalization_14_readvariableop_resource:	�?
0batch_normalization_14_readvariableop_1_resource:	�N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	�
identity��%batch_normalization_14/AssignNewValue�'batch_normalization_14/AssignNewValue_1�6batch_normalization_14/FusedBatchNormV3/ReadVariableOp�8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_14/ReadVariableOp�'batch_normalization_14/ReadVariableOp_1�conv2d_15/Conv2D/ReadVariableOpf
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_7/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_7/mul:z:0*
T0*0
_output_shapes
:���������  �*
half_pixel_centers(�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_15/Conv2DConv2D6up_sampling2d_7/resize/ResizeBilinear:resized_images:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_15/Conv2D:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������  �:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_14/AssignNewValueAssignVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource4batch_normalization_14/FusedBatchNormV3:batch_mean:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_14/AssignNewValue_1AssignVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_14/FusedBatchNormV3:batch_variance:09^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_15/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:���������  �~
IdentityIdentity&leaky_re_lu_15/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������  ��
NoOpNoOp&^batch_normalization_14/AssignNewValue(^batch_normalization_14/AssignNewValue_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1 ^conv2d_15/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2N
%batch_normalization_14/AssignNewValue%batch_normalization_14/AssignNewValue2R
'batch_normalization_14/AssignNewValue_1'batch_normalization_14/AssignNewValue_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1228775

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
a
(__inference_lambda_layer_call_fn_1231652

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1229991p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1229175

inputsC
(conv2d_16_conv2d_readvariableop_resource:�@<
.batch_normalization_15_readvariableop_resource:@>
0batch_normalization_15_readvariableop_1_resource:@M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@
identity��6batch_normalization_15/FusedBatchNormV3/ReadVariableOp�8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_15/ReadVariableOp�'batch_normalization_15/ReadVariableOp_1�conv2d_16/Conv2D/ReadVariableOpf
up_sampling2d_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_8/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_8/mulMulup_sampling2d_8/Const:output:0 up_sampling2d_8/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_8/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_8/mul:z:0*
T0*0
_output_shapes
:���������@@�*
half_pixel_centers(�
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_16/Conv2DConv2D6up_sampling2d_8/resize/ResizeBilinear:resized_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_16/Conv2D:output:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
leaky_re_lu_16/LeakyRelu	LeakyRelu+batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_16/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp7^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1 ^conv2d_16/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������  �: : : : : 2p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1232506

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
8__inference_conv2_transpose__block_layer_call_fn_1231768

inputs#
unknown:��
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1229930x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1232743

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

h
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1228520

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1232488

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1232849

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
.__inference_conv2__block_layer_call_fn_1232231

inputs"
unknown:�@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_conv2__block_layer_call_and_return_conditional_losses_1229681w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@@�: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������@@�
 
_user_specified_nameinputs
�	
�
:__inference_conv2_transpose__block_2_layer_call_fn_1231932

inputs#
unknown:��
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1229816x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������  �`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
:__inference_conv2_transpose__block_3_layer_call_fn_1231999

inputs"
unknown:�@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1229175w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������  �: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�
b
C__inference_lambda_layer_call_and_return_conditional_losses_1231669

inputs
identity�d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskW
ExpExpstrided_slice_1:output:0*
T0*(
_output_shapes
:����������K
ShapeShapestrided_slice:output:0*
T0*
_output_shapes
:�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed���)*
seed2ʅY�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0Exp:y:0*
T0*(
_output_shapes
:����������x
random_normalAddV2random_normal/mul:z:0strided_slice:output:0*
T0*(
_output_shapes
:����������Z
IdentityIdentityrandom_normal:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1228659

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1232567

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_12_layer_call_fn_1232457

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1228462�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�@
�
K__inference_residual_block_layer_call_and_return_conditional_losses_1232407

inputsB
(conv2d_18_conv2d_readvariableop_resource:@@<
.batch_normalization_17_readvariableop_resource:@>
0batch_normalization_17_readvariableop_1_resource:@M
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@<
.batch_normalization_18_readvariableop_resource:@>
0batch_normalization_18_readvariableop_1_resource:@M
?batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@
identity��%batch_normalization_17/AssignNewValue�'batch_normalization_17/AssignNewValue_1�6batch_normalization_17/FusedBatchNormV3/ReadVariableOp�8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_17/ReadVariableOp�'batch_normalization_17/ReadVariableOp_1�%batch_normalization_18/AssignNewValue�'batch_normalization_18/AssignNewValue_1�6batch_normalization_18/FusedBatchNormV3/ReadVariableOp�8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_18/ReadVariableOp�'batch_normalization_18/ReadVariableOp_1�conv2d_18/Conv2D/ReadVariableOp�conv2d_19/Conv2D/ReadVariableOp�
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_18/Conv2D:output:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_17/AssignNewValueAssignVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource4batch_normalization_17/FusedBatchNormV3:batch_mean:07^batch_normalization_17/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_17/AssignNewValue_1AssignVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_17/FusedBatchNormV3:batch_variance:09^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_18/LeakyRelu	LeakyRelu+batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_19/Conv2DConv2D&leaky_re_lu_18/LeakyRelu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3conv2d_19/Conv2D:output:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_18/AssignNewValueAssignVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource4batch_normalization_18/FusedBatchNormV3:batch_mean:07^batch_normalization_18/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_18/AssignNewValue_1AssignVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_18/FusedBatchNormV3:batch_variance:09^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
add/addAddV2+batch_normalization_18/FusedBatchNormV3:y:0inputs*
T0*/
_output_shapes
:���������@@@c
leaky_re_lu_19/LeakyRelu	LeakyReluadd/add:z:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_19/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp&^batch_normalization_17/AssignNewValue(^batch_normalization_17/AssignNewValue_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_1&^batch_normalization_18/AssignNewValue(^batch_normalization_18/AssignNewValue_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_1 ^conv2d_18/Conv2D/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@@: : : : : : : : : : 2N
%batch_normalization_17/AssignNewValue%batch_normalization_17/AssignNewValue2R
'batch_normalization_17/AssignNewValue_1'batch_normalization_17/AssignNewValue_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12N
%batch_normalization_18/AssignNewValue%batch_normalization_18/AssignNewValue2R
'batch_normalization_18/AssignNewValue_1'batch_normalization_18/AssignNewValue_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�

h
L__inference_up_sampling2d_8_layer_call_and_return_conditional_losses_1232681

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�&
�
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1229930

inputsD
(conv2d_13_conv2d_readvariableop_resource:��=
.batch_normalization_12_readvariableop_resource:	�?
0batch_normalization_12_readvariableop_1_resource:	�N
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	�
identity��%batch_normalization_12/AssignNewValue�'batch_normalization_12/AssignNewValue_1�6batch_normalization_12/FusedBatchNormV3/ReadVariableOp�8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_12/ReadVariableOp�'batch_normalization_12/ReadVariableOp_1�conv2d_13/Conv2D/ReadVariableOpf
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_5/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_13/Conv2DConv2D6up_sampling2d_5/resize/ResizeBilinear:resized_images:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_13/Conv2D:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_12/AssignNewValueAssignVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource4batch_normalization_12/FusedBatchNormV3:batch_mean:07^batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_12/AssignNewValue_1AssignVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_12/FusedBatchNormV3:batch_variance:09^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_13/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:����������~
IdentityIdentity&leaky_re_lu_13/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp&^batch_normalization_12/AssignNewValue(^batch_normalization_12/AssignNewValue_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1 ^conv2d_13/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2N
%batch_normalization_12/AssignNewValue%batch_normalization_12/AssignNewValue2R
'batch_normalization_12/AssignNewValue_1'batch_normalization_12/AssignNewValue_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�=
B__inference_model_layer_call_and_return_conditional_losses_1231623
inputs_0
inputs_18
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��@6
'dense_1_biasadd_readvariableop_resource:	�@[
?conv2_transpose__block_conv2d_13_conv2d_readvariableop_resource:��T
Econv2_transpose__block_batch_normalization_12_readvariableop_resource:	�V
Gconv2_transpose__block_batch_normalization_12_readvariableop_1_resource:	�e
Vconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	�g
Xconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	�]
Aconv2_transpose__block_1_conv2d_14_conv2d_readvariableop_resource:��V
Gconv2_transpose__block_1_batch_normalization_13_readvariableop_resource:	�X
Iconv2_transpose__block_1_batch_normalization_13_readvariableop_1_resource:	�g
Xconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	�i
Zconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	�]
Aconv2_transpose__block_2_conv2d_15_conv2d_readvariableop_resource:��V
Gconv2_transpose__block_2_batch_normalization_14_readvariableop_resource:	�X
Iconv2_transpose__block_2_batch_normalization_14_readvariableop_1_resource:	�g
Xconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	�i
Zconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	�\
Aconv2_transpose__block_3_conv2d_16_conv2d_readvariableop_resource:�@U
Gconv2_transpose__block_3_batch_normalization_15_readvariableop_resource:@W
Iconv2_transpose__block_3_batch_normalization_15_readvariableop_1_resource:@f
Xconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@h
Zconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@M
;custom_attention_dense_10_tensordot_readvariableop_resource:@@G
9custom_attention_dense_10_biasadd_readvariableop_resource:@N
;custom_attention_dense_11_tensordot_readvariableop_resource:	�@G
9custom_attention_dense_11_biasadd_readvariableop_resource:@N
;custom_attention_dense_12_tensordot_readvariableop_resource:	�@G
9custom_attention_dense_12_biasadd_readvariableop_resource:@P
5conv2__block_conv2d_17_conv2d_readvariableop_resource:�@I
;conv2__block_batch_normalization_16_readvariableop_resource:@K
=conv2__block_batch_normalization_16_readvariableop_1_resource:@Z
Lconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@\
Nconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@Q
7residual_block_conv2d_18_conv2d_readvariableop_resource:@@K
=residual_block_batch_normalization_17_readvariableop_resource:@M
?residual_block_batch_normalization_17_readvariableop_1_resource:@\
Nresidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@^
Presidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@Q
7residual_block_conv2d_19_conv2d_readvariableop_resource:@@K
=residual_block_batch_normalization_18_readvariableop_resource:@M
?residual_block_batch_normalization_18_readvariableop_1_resource:@\
Nresidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@^
Presidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_7_conv2d_readvariableop_resource:@6
(conv2d_7_biasadd_readvariableop_resource:
identity

identity_1

identity_2��2conv2__block/batch_normalization_16/AssignNewValue�4conv2__block/batch_normalization_16/AssignNewValue_1�Cconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp�Econv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1�2conv2__block/batch_normalization_16/ReadVariableOp�4conv2__block/batch_normalization_16/ReadVariableOp_1�,conv2__block/conv2d_17/Conv2D/ReadVariableOp�<conv2_transpose__block/batch_normalization_12/AssignNewValue�>conv2_transpose__block/batch_normalization_12/AssignNewValue_1�Mconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp�Oconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�<conv2_transpose__block/batch_normalization_12/ReadVariableOp�>conv2_transpose__block/batch_normalization_12/ReadVariableOp_1�6conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp�>conv2_transpose__block_1/batch_normalization_13/AssignNewValue�@conv2_transpose__block_1/batch_normalization_13/AssignNewValue_1�Oconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp�Qconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�>conv2_transpose__block_1/batch_normalization_13/ReadVariableOp�@conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1�8conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp�>conv2_transpose__block_2/batch_normalization_14/AssignNewValue�@conv2_transpose__block_2/batch_normalization_14/AssignNewValue_1�Oconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp�Qconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1�>conv2_transpose__block_2/batch_normalization_14/ReadVariableOp�@conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1�8conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp�>conv2_transpose__block_3/batch_normalization_15/AssignNewValue�@conv2_transpose__block_3/batch_normalization_15/AssignNewValue_1�Oconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp�Qconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1�>conv2_transpose__block_3/batch_normalization_15/ReadVariableOp�@conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1�8conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�0custom_attention/dense_10/BiasAdd/ReadVariableOp�2custom_attention/dense_10/Tensordot/ReadVariableOp�0custom_attention/dense_11/BiasAdd/ReadVariableOp�2custom_attention/dense_11/Tensordot/ReadVariableOp�0custom_attention/dense_12/BiasAdd/ReadVariableOp�2custom_attention/dense_12/Tensordot/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�4residual_block/batch_normalization_17/AssignNewValue�6residual_block/batch_normalization_17/AssignNewValue_1�Eresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp�Gresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1�4residual_block/batch_normalization_17/ReadVariableOp�6residual_block/batch_normalization_17/ReadVariableOp_1�4residual_block/batch_normalization_18/AssignNewValue�6residual_block/batch_normalization_18/AssignNewValue_1�Eresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp�Gresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1�4residual_block/batch_normalization_18/ReadVariableOp�6residual_block/batch_normalization_18/ReadVariableOp_1�.residual_block/conv2d_18/Conv2D/ReadVariableOp�.residual_block/conv2d_19/Conv2D/ReadVariableOp�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask*
shrink_axis_mask�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul/tf.__operators__.getitem/strided_slice:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        m
lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   m
lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lambda/strided_sliceStridedSlicedense/BiasAdd:output:0#lambda/strided_slice/stack:output:0%lambda/strided_slice/stack_1:output:0%lambda/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskm
lambda/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   o
lambda/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        o
lambda/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lambda/strided_slice_1StridedSlicedense/BiasAdd:output:0%lambda/strided_slice_1/stack:output:0'lambda/strided_slice_1/stack_1:output:0'lambda/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maske

lambda/ExpExplambda/strided_slice_1:output:0*
T0*(
_output_shapes
:����������Y
lambda/ShapeShapelambda/strided_slice:output:0*
T0*
_output_shapes
:�
)lambda/random_normal/RandomStandardNormalRandomStandardNormallambda/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed���)*
seed2�ǭ�
lambda/random_normal/mulMul2lambda/random_normal/RandomStandardNormal:output:0lambda/Exp:y:0*
T0*(
_output_shapes
:�����������
lambda/random_normalAddV2lambda/random_normal/mul:z:0lambda/strided_slice:output:0*
T0*(
_output_shapes
:����������Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2inputs_0lambda/random_normal:z:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
dense_1/MatMulMatMulconcatenate/concat:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������@W
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:����������}
,conv2_transpose__block/up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
.conv2_transpose__block/up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
*conv2_transpose__block/up_sampling2d_5/mulMul5conv2_transpose__block/up_sampling2d_5/Const:output:07conv2_transpose__block/up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
<conv2_transpose__block/up_sampling2d_5/resize/ResizeBilinearResizeBilinearreshape/Reshape:output:0.conv2_transpose__block/up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
6conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOpReadVariableOp?conv2_transpose__block_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
'conv2_transpose__block/conv2d_13/Conv2DConv2DMconv2_transpose__block/up_sampling2d_5/resize/ResizeBilinear:resized_images:0>conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
<conv2_transpose__block/batch_normalization_12/ReadVariableOpReadVariableOpEconv2_transpose__block_batch_normalization_12_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>conv2_transpose__block/batch_normalization_12/ReadVariableOp_1ReadVariableOpGconv2_transpose__block_batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Mconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpVconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Oconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpXconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
>conv2_transpose__block/batch_normalization_12/FusedBatchNormV3FusedBatchNormV30conv2_transpose__block/conv2d_13/Conv2D:output:0Dconv2_transpose__block/batch_normalization_12/ReadVariableOp:value:0Fconv2_transpose__block/batch_normalization_12/ReadVariableOp_1:value:0Uconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Wconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
<conv2_transpose__block/batch_normalization_12/AssignNewValueAssignVariableOpVconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_resourceKconv2_transpose__block/batch_normalization_12/FusedBatchNormV3:batch_mean:0N^conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
>conv2_transpose__block/batch_normalization_12/AssignNewValue_1AssignVariableOpXconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resourceOconv2_transpose__block/batch_normalization_12/FusedBatchNormV3:batch_variance:0P^conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
/conv2_transpose__block/leaky_re_lu_13/LeakyRelu	LeakyReluBconv2_transpose__block/batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:����������
.conv2_transpose__block_1/up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"      �
0conv2_transpose__block_1/up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
,conv2_transpose__block_1/up_sampling2d_6/mulMul7conv2_transpose__block_1/up_sampling2d_6/Const:output:09conv2_transpose__block_1/up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
>conv2_transpose__block_1/up_sampling2d_6/resize/ResizeBilinearResizeBilinear=conv2_transpose__block/leaky_re_lu_13/LeakyRelu:activations:00conv2_transpose__block_1/up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
8conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOpAconv2_transpose__block_1_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
)conv2_transpose__block_1/conv2d_14/Conv2DConv2DOconv2_transpose__block_1/up_sampling2d_6/resize/ResizeBilinear:resized_images:0@conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
>conv2_transpose__block_1/batch_normalization_13/ReadVariableOpReadVariableOpGconv2_transpose__block_1_batch_normalization_13_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1ReadVariableOpIconv2_transpose__block_1_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Oconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpXconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Qconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
@conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3FusedBatchNormV32conv2_transpose__block_1/conv2d_14/Conv2D:output:0Fconv2_transpose__block_1/batch_normalization_13/ReadVariableOp:value:0Hconv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1:value:0Wconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Yconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
>conv2_transpose__block_1/batch_normalization_13/AssignNewValueAssignVariableOpXconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_resourceMconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3:batch_mean:0P^conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
@conv2_transpose__block_1/batch_normalization_13/AssignNewValue_1AssignVariableOpZconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resourceQconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3:batch_variance:0R^conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
1conv2_transpose__block_1/leaky_re_lu_14/LeakyRelu	LeakyReluDconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:����������
.conv2_transpose__block_2/up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      �
0conv2_transpose__block_2/up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
,conv2_transpose__block_2/up_sampling2d_7/mulMul7conv2_transpose__block_2/up_sampling2d_7/Const:output:09conv2_transpose__block_2/up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:�
>conv2_transpose__block_2/up_sampling2d_7/resize/ResizeBilinearResizeBilinear?conv2_transpose__block_1/leaky_re_lu_14/LeakyRelu:activations:00conv2_transpose__block_2/up_sampling2d_7/mul:z:0*
T0*0
_output_shapes
:���������  �*
half_pixel_centers(�
8conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOpReadVariableOpAconv2_transpose__block_2_conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
)conv2_transpose__block_2/conv2d_15/Conv2DConv2DOconv2_transpose__block_2/up_sampling2d_7/resize/ResizeBilinear:resized_images:0@conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
>conv2_transpose__block_2/batch_normalization_14/ReadVariableOpReadVariableOpGconv2_transpose__block_2_batch_normalization_14_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1ReadVariableOpIconv2_transpose__block_2_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Oconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpXconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Qconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
@conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3FusedBatchNormV32conv2_transpose__block_2/conv2d_15/Conv2D:output:0Fconv2_transpose__block_2/batch_normalization_14/ReadVariableOp:value:0Hconv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1:value:0Wconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Yconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������  �:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
>conv2_transpose__block_2/batch_normalization_14/AssignNewValueAssignVariableOpXconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resourceMconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3:batch_mean:0P^conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
@conv2_transpose__block_2/batch_normalization_14/AssignNewValue_1AssignVariableOpZconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resourceQconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3:batch_variance:0R^conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
1conv2_transpose__block_2/leaky_re_lu_15/LeakyRelu	LeakyReluDconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:���������  �
.conv2_transpose__block_3/up_sampling2d_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"        �
0conv2_transpose__block_3/up_sampling2d_8/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
,conv2_transpose__block_3/up_sampling2d_8/mulMul7conv2_transpose__block_3/up_sampling2d_8/Const:output:09conv2_transpose__block_3/up_sampling2d_8/Const_1:output:0*
T0*
_output_shapes
:�
>conv2_transpose__block_3/up_sampling2d_8/resize/ResizeBilinearResizeBilinear?conv2_transpose__block_2/leaky_re_lu_15/LeakyRelu:activations:00conv2_transpose__block_3/up_sampling2d_8/mul:z:0*
T0*0
_output_shapes
:���������@@�*
half_pixel_centers(�
8conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOpReadVariableOpAconv2_transpose__block_3_conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
)conv2_transpose__block_3/conv2d_16/Conv2DConv2DOconv2_transpose__block_3/up_sampling2d_8/resize/ResizeBilinear:resized_images:0@conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
>conv2_transpose__block_3/batch_normalization_15/ReadVariableOpReadVariableOpGconv2_transpose__block_3_batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0�
@conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1ReadVariableOpIconv2_transpose__block_3_batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Oconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpXconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Qconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
@conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3FusedBatchNormV32conv2_transpose__block_3/conv2d_16/Conv2D:output:0Fconv2_transpose__block_3/batch_normalization_15/ReadVariableOp:value:0Hconv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1:value:0Wconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Yconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
>conv2_transpose__block_3/batch_normalization_15/AssignNewValueAssignVariableOpXconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_resourceMconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3:batch_mean:0P^conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
@conv2_transpose__block_3/batch_normalization_15/AssignNewValue_1AssignVariableOpZconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resourceQconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3:batch_variance:0R^conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
1conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu	LeakyReluDconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinputs_17tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
custom_attention/ShapeShape?conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$custom_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&custom_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&custom_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
custom_attention/strided_sliceStridedSlicecustom_attention/Shape:output:0-custom_attention/strided_slice/stack:output:0/custom_attention/strided_slice/stack_1:output:0/custom_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&custom_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(custom_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(custom_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 custom_attention/strided_slice_1StridedSlicecustom_attention/Shape:output:0/custom_attention/strided_slice_1/stack:output:01custom_attention/strided_slice_1/stack_1:output:01custom_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
custom_attention/Shape_1Shape1tf.__operators__.getitem_1/strided_slice:output:0*
T0*
_output_shapes
:p
&custom_attention/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(custom_attention/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(custom_attention/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 custom_attention/strided_slice_2StridedSlice!custom_attention/Shape_1:output:0/custom_attention/strided_slice_2/stack:output:01custom_attention/strided_slice_2/stack_1:output:01custom_attention/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
custom_attention/mulMul)custom_attention/strided_slice_1:output:0)custom_attention/strided_slice_1:output:0*
T0*
_output_shapes
: b
 custom_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
custom_attention/Reshape/shapePack'custom_attention/strided_slice:output:0custom_attention/mul:z:0)custom_attention/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
custom_attention/ReshapeReshape?conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu:activations:0'custom_attention/Reshape/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
2custom_attention/dense_10/Tensordot/ReadVariableOpReadVariableOp;custom_attention_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0r
(custom_attention/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(custom_attention/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       z
)custom_attention/dense_10/Tensordot/ShapeShape!custom_attention/Reshape:output:0*
T0*
_output_shapes
:s
1custom_attention/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_10/Tensordot/GatherV2GatherV22custom_attention/dense_10/Tensordot/Shape:output:01custom_attention/dense_10/Tensordot/free:output:0:custom_attention/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3custom_attention/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.custom_attention/dense_10/Tensordot/GatherV2_1GatherV22custom_attention/dense_10/Tensordot/Shape:output:01custom_attention/dense_10/Tensordot/axes:output:0<custom_attention/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)custom_attention/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(custom_attention/dense_10/Tensordot/ProdProd5custom_attention/dense_10/Tensordot/GatherV2:output:02custom_attention/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+custom_attention/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*custom_attention/dense_10/Tensordot/Prod_1Prod7custom_attention/dense_10/Tensordot/GatherV2_1:output:04custom_attention/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/custom_attention/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*custom_attention/dense_10/Tensordot/concatConcatV21custom_attention/dense_10/Tensordot/free:output:01custom_attention/dense_10/Tensordot/axes:output:08custom_attention/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
)custom_attention/dense_10/Tensordot/stackPack1custom_attention/dense_10/Tensordot/Prod:output:03custom_attention/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
-custom_attention/dense_10/Tensordot/transpose	Transpose!custom_attention/Reshape:output:03custom_attention/dense_10/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
+custom_attention/dense_10/Tensordot/ReshapeReshape1custom_attention/dense_10/Tensordot/transpose:y:02custom_attention/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
*custom_attention/dense_10/Tensordot/MatMulMatMul4custom_attention/dense_10/Tensordot/Reshape:output:0:custom_attention/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
+custom_attention/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@s
1custom_attention/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_10/Tensordot/concat_1ConcatV25custom_attention/dense_10/Tensordot/GatherV2:output:04custom_attention/dense_10/Tensordot/Const_2:output:0:custom_attention/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
#custom_attention/dense_10/TensordotReshape4custom_attention/dense_10/Tensordot/MatMul:product:05custom_attention/dense_10/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
0custom_attention/dense_10/BiasAdd/ReadVariableOpReadVariableOp9custom_attention_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!custom_attention/dense_10/BiasAddBiasAdd,custom_attention/dense_10/Tensordot:output:08custom_attention/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@Y
custom_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@o
custom_attention/CastCast custom_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: [
custom_attention/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?x
custom_attention/powPowcustom_attention/Cast:y:0custom_attention/pow/y:output:0*
T0*
_output_shapes
: �
custom_attention/truedivRealDiv*custom_attention/dense_10/BiasAdd:output:0custom_attention/pow:z:0*
T0*4
_output_shapes"
 :������������������@�
2custom_attention/dense_11/Tensordot/ReadVariableOpReadVariableOp;custom_attention_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0r
(custom_attention/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(custom_attention/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
)custom_attention/dense_11/Tensordot/ShapeShape1tf.__operators__.getitem_1/strided_slice:output:0*
T0*
_output_shapes
:s
1custom_attention/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_11/Tensordot/GatherV2GatherV22custom_attention/dense_11/Tensordot/Shape:output:01custom_attention/dense_11/Tensordot/free:output:0:custom_attention/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3custom_attention/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.custom_attention/dense_11/Tensordot/GatherV2_1GatherV22custom_attention/dense_11/Tensordot/Shape:output:01custom_attention/dense_11/Tensordot/axes:output:0<custom_attention/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)custom_attention/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(custom_attention/dense_11/Tensordot/ProdProd5custom_attention/dense_11/Tensordot/GatherV2:output:02custom_attention/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+custom_attention/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*custom_attention/dense_11/Tensordot/Prod_1Prod7custom_attention/dense_11/Tensordot/GatherV2_1:output:04custom_attention/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/custom_attention/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*custom_attention/dense_11/Tensordot/concatConcatV21custom_attention/dense_11/Tensordot/free:output:01custom_attention/dense_11/Tensordot/axes:output:08custom_attention/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
)custom_attention/dense_11/Tensordot/stackPack1custom_attention/dense_11/Tensordot/Prod:output:03custom_attention/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
-custom_attention/dense_11/Tensordot/transpose	Transpose1tf.__operators__.getitem_1/strided_slice:output:03custom_attention/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
+custom_attention/dense_11/Tensordot/ReshapeReshape1custom_attention/dense_11/Tensordot/transpose:y:02custom_attention/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
*custom_attention/dense_11/Tensordot/MatMulMatMul4custom_attention/dense_11/Tensordot/Reshape:output:0:custom_attention/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
+custom_attention/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@s
1custom_attention/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_11/Tensordot/concat_1ConcatV25custom_attention/dense_11/Tensordot/GatherV2:output:04custom_attention/dense_11/Tensordot/Const_2:output:0:custom_attention/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
#custom_attention/dense_11/TensordotReshape4custom_attention/dense_11/Tensordot/MatMul:product:05custom_attention/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
0custom_attention/dense_11/BiasAdd/ReadVariableOpReadVariableOp9custom_attention_dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!custom_attention/dense_11/BiasAddBiasAdd,custom_attention/dense_11/Tensordot:output:08custom_attention/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
2custom_attention/dense_12/Tensordot/ReadVariableOpReadVariableOp;custom_attention_dense_12_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0r
(custom_attention/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(custom_attention/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
)custom_attention/dense_12/Tensordot/ShapeShape1tf.__operators__.getitem_1/strided_slice:output:0*
T0*
_output_shapes
:s
1custom_attention/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_12/Tensordot/GatherV2GatherV22custom_attention/dense_12/Tensordot/Shape:output:01custom_attention/dense_12/Tensordot/free:output:0:custom_attention/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3custom_attention/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.custom_attention/dense_12/Tensordot/GatherV2_1GatherV22custom_attention/dense_12/Tensordot/Shape:output:01custom_attention/dense_12/Tensordot/axes:output:0<custom_attention/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)custom_attention/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(custom_attention/dense_12/Tensordot/ProdProd5custom_attention/dense_12/Tensordot/GatherV2:output:02custom_attention/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+custom_attention/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*custom_attention/dense_12/Tensordot/Prod_1Prod7custom_attention/dense_12/Tensordot/GatherV2_1:output:04custom_attention/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/custom_attention/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*custom_attention/dense_12/Tensordot/concatConcatV21custom_attention/dense_12/Tensordot/free:output:01custom_attention/dense_12/Tensordot/axes:output:08custom_attention/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
)custom_attention/dense_12/Tensordot/stackPack1custom_attention/dense_12/Tensordot/Prod:output:03custom_attention/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
-custom_attention/dense_12/Tensordot/transpose	Transpose1tf.__operators__.getitem_1/strided_slice:output:03custom_attention/dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
+custom_attention/dense_12/Tensordot/ReshapeReshape1custom_attention/dense_12/Tensordot/transpose:y:02custom_attention/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
*custom_attention/dense_12/Tensordot/MatMulMatMul4custom_attention/dense_12/Tensordot/Reshape:output:0:custom_attention/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
+custom_attention/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@s
1custom_attention/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_12/Tensordot/concat_1ConcatV25custom_attention/dense_12/Tensordot/GatherV2:output:04custom_attention/dense_12/Tensordot/Const_2:output:0:custom_attention/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
#custom_attention/dense_12/TensordotReshape4custom_attention/dense_12/Tensordot/MatMul:product:05custom_attention/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
0custom_attention/dense_12/BiasAdd/ReadVariableOpReadVariableOp9custom_attention_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!custom_attention/dense_12/BiasAddBiasAdd,custom_attention/dense_12/Tensordot:output:08custom_attention/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
custom_attention/einsum/EinsumEinsumcustom_attention/truediv:z:0*custom_attention/dense_11/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������*
equationijk,ick->ijc�
custom_attention/SoftmaxSoftmax'custom_attention/einsum/Einsum:output:0*
T0*4
_output_shapes"
 :�������������������
 custom_attention/einsum_1/EinsumEinsum"custom_attention/Softmax:softmax:0*custom_attention/dense_12/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������@*
equationijk,ikc->ijc�
custom_attention/Reshape_1Reshape)custom_attention/einsum_1/Einsum:output:0custom_attention/Shape:output:0*
T0*/
_output_shapes
:���������@@@g
custom_attention/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
custom_attention/concatConcatV2?conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu:activations:0#custom_attention/Reshape_1:output:0%custom_attention/concat/axis:output:0*
N*
T0*0
_output_shapes
:���������@@��
 custom_attention/Reshape_2/shapePack'custom_attention/strided_slice:output:0)custom_attention/strided_slice_1:output:0)custom_attention/strided_slice_1:output:0)custom_attention/strided_slice_2:output:0*
N*
T0*
_output_shapes
:�
custom_attention/Reshape_2Reshape"custom_attention/Softmax:softmax:0)custom_attention/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@@�
,conv2__block/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5conv2__block_conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2__block/conv2d_17/Conv2DConv2D custom_attention/concat:output:04conv2__block/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
2conv2__block/batch_normalization_16/ReadVariableOpReadVariableOp;conv2__block_batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0�
4conv2__block/batch_normalization_16/ReadVariableOp_1ReadVariableOp=conv2__block_batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Cconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Econv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
4conv2__block/batch_normalization_16/FusedBatchNormV3FusedBatchNormV3&conv2__block/conv2d_17/Conv2D:output:0:conv2__block/batch_normalization_16/ReadVariableOp:value:0<conv2__block/batch_normalization_16/ReadVariableOp_1:value:0Kconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0Mconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
2conv2__block/batch_normalization_16/AssignNewValueAssignVariableOpLconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_resourceAconv2__block/batch_normalization_16/FusedBatchNormV3:batch_mean:0D^conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
4conv2__block/batch_normalization_16/AssignNewValue_1AssignVariableOpNconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resourceEconv2__block/batch_normalization_16/FusedBatchNormV3:batch_variance:0F^conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
%conv2__block/leaky_re_lu_17/LeakyRelu	LeakyRelu8conv2__block/batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
.residual_block/conv2d_18/Conv2D/ReadVariableOpReadVariableOp7residual_block_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
residual_block/conv2d_18/Conv2DConv2D3conv2__block/leaky_re_lu_17/LeakyRelu:activations:06residual_block/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
4residual_block/batch_normalization_17/ReadVariableOpReadVariableOp=residual_block_batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype0�
6residual_block/batch_normalization_17/ReadVariableOp_1ReadVariableOp?residual_block_batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Eresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOpNresidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Gresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPresidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6residual_block/batch_normalization_17/FusedBatchNormV3FusedBatchNormV3(residual_block/conv2d_18/Conv2D:output:0<residual_block/batch_normalization_17/ReadVariableOp:value:0>residual_block/batch_normalization_17/ReadVariableOp_1:value:0Mresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0Oresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
4residual_block/batch_normalization_17/AssignNewValueAssignVariableOpNresidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_resourceCresidual_block/batch_normalization_17/FusedBatchNormV3:batch_mean:0F^residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
6residual_block/batch_normalization_17/AssignNewValue_1AssignVariableOpPresidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resourceGresidual_block/batch_normalization_17/FusedBatchNormV3:batch_variance:0H^residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
'residual_block/leaky_re_lu_18/LeakyRelu	LeakyRelu:residual_block/batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
.residual_block/conv2d_19/Conv2D/ReadVariableOpReadVariableOp7residual_block_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
residual_block/conv2d_19/Conv2DConv2D5residual_block/leaky_re_lu_18/LeakyRelu:activations:06residual_block/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
4residual_block/batch_normalization_18/ReadVariableOpReadVariableOp=residual_block_batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype0�
6residual_block/batch_normalization_18/ReadVariableOp_1ReadVariableOp?residual_block_batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Eresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOpNresidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Gresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPresidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6residual_block/batch_normalization_18/FusedBatchNormV3FusedBatchNormV3(residual_block/conv2d_19/Conv2D:output:0<residual_block/batch_normalization_18/ReadVariableOp:value:0>residual_block/batch_normalization_18/ReadVariableOp_1:value:0Mresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0Oresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
4residual_block/batch_normalization_18/AssignNewValueAssignVariableOpNresidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_resourceCresidual_block/batch_normalization_18/FusedBatchNormV3:batch_mean:0F^residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
6residual_block/batch_normalization_18/AssignNewValue_1AssignVariableOpPresidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resourceGresidual_block/batch_normalization_18/FusedBatchNormV3:batch_variance:0H^residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
residual_block/add/addAddV2:residual_block/batch_normalization_18/FusedBatchNormV3:y:03conv2__block/leaky_re_lu_17/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������@@@�
'residual_block/leaky_re_lu_19/LeakyRelu	LeakyReluresidual_block/add/add:z:0*/
_output_shapes
:���������@@@�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_7/Conv2DConv2D5residual_block/leaky_re_lu_19/LeakyRelu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@j
conv2d_7/TanhTanhconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@h
IdentityIdentityconv2d_7/Tanh:y:0^NoOp*
T0*/
_output_shapes
:���������@@h

Identity_1Identitydense/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������|

Identity_2Identity#custom_attention/Reshape_2:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp3^conv2__block/batch_normalization_16/AssignNewValue5^conv2__block/batch_normalization_16/AssignNewValue_1D^conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOpF^conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_13^conv2__block/batch_normalization_16/ReadVariableOp5^conv2__block/batch_normalization_16/ReadVariableOp_1-^conv2__block/conv2d_17/Conv2D/ReadVariableOp=^conv2_transpose__block/batch_normalization_12/AssignNewValue?^conv2_transpose__block/batch_normalization_12/AssignNewValue_1N^conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOpP^conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1=^conv2_transpose__block/batch_normalization_12/ReadVariableOp?^conv2_transpose__block/batch_normalization_12/ReadVariableOp_17^conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp?^conv2_transpose__block_1/batch_normalization_13/AssignNewValueA^conv2_transpose__block_1/batch_normalization_13/AssignNewValue_1P^conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOpR^conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?^conv2_transpose__block_1/batch_normalization_13/ReadVariableOpA^conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_19^conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp?^conv2_transpose__block_2/batch_normalization_14/AssignNewValueA^conv2_transpose__block_2/batch_normalization_14/AssignNewValue_1P^conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpR^conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?^conv2_transpose__block_2/batch_normalization_14/ReadVariableOpA^conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_19^conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp?^conv2_transpose__block_3/batch_normalization_15/AssignNewValueA^conv2_transpose__block_3/batch_normalization_15/AssignNewValue_1P^conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpR^conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?^conv2_transpose__block_3/batch_normalization_15/ReadVariableOpA^conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_19^conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp1^custom_attention/dense_10/BiasAdd/ReadVariableOp3^custom_attention/dense_10/Tensordot/ReadVariableOp1^custom_attention/dense_11/BiasAdd/ReadVariableOp3^custom_attention/dense_11/Tensordot/ReadVariableOp1^custom_attention/dense_12/BiasAdd/ReadVariableOp3^custom_attention/dense_12/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp5^residual_block/batch_normalization_17/AssignNewValue7^residual_block/batch_normalization_17/AssignNewValue_1F^residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOpH^residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_15^residual_block/batch_normalization_17/ReadVariableOp7^residual_block/batch_normalization_17/ReadVariableOp_15^residual_block/batch_normalization_18/AssignNewValue7^residual_block/batch_normalization_18/AssignNewValue_1F^residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOpH^residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_15^residual_block/batch_normalization_18/ReadVariableOp7^residual_block/batch_normalization_18/ReadVariableOp_1/^residual_block/conv2d_18/Conv2D/ReadVariableOp/^residual_block/conv2d_19/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2h
2conv2__block/batch_normalization_16/AssignNewValue2conv2__block/batch_normalization_16/AssignNewValue2l
4conv2__block/batch_normalization_16/AssignNewValue_14conv2__block/batch_normalization_16/AssignNewValue_12�
Cconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOpCconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2�
Econv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Econv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12h
2conv2__block/batch_normalization_16/ReadVariableOp2conv2__block/batch_normalization_16/ReadVariableOp2l
4conv2__block/batch_normalization_16/ReadVariableOp_14conv2__block/batch_normalization_16/ReadVariableOp_12\
,conv2__block/conv2d_17/Conv2D/ReadVariableOp,conv2__block/conv2d_17/Conv2D/ReadVariableOp2|
<conv2_transpose__block/batch_normalization_12/AssignNewValue<conv2_transpose__block/batch_normalization_12/AssignNewValue2�
>conv2_transpose__block/batch_normalization_12/AssignNewValue_1>conv2_transpose__block/batch_normalization_12/AssignNewValue_12�
Mconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOpMconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2�
Oconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Oconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12|
<conv2_transpose__block/batch_normalization_12/ReadVariableOp<conv2_transpose__block/batch_normalization_12/ReadVariableOp2�
>conv2_transpose__block/batch_normalization_12/ReadVariableOp_1>conv2_transpose__block/batch_normalization_12/ReadVariableOp_12p
6conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp6conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp2�
>conv2_transpose__block_1/batch_normalization_13/AssignNewValue>conv2_transpose__block_1/batch_normalization_13/AssignNewValue2�
@conv2_transpose__block_1/batch_normalization_13/AssignNewValue_1@conv2_transpose__block_1/batch_normalization_13/AssignNewValue_12�
Oconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOpOconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2�
Qconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Qconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12�
>conv2_transpose__block_1/batch_normalization_13/ReadVariableOp>conv2_transpose__block_1/batch_normalization_13/ReadVariableOp2�
@conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1@conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_12t
8conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp8conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp2�
>conv2_transpose__block_2/batch_normalization_14/AssignNewValue>conv2_transpose__block_2/batch_normalization_14/AssignNewValue2�
@conv2_transpose__block_2/batch_normalization_14/AssignNewValue_1@conv2_transpose__block_2/batch_normalization_14/AssignNewValue_12�
Oconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpOconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2�
Qconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Qconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12�
>conv2_transpose__block_2/batch_normalization_14/ReadVariableOp>conv2_transpose__block_2/batch_normalization_14/ReadVariableOp2�
@conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1@conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_12t
8conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp8conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp2�
>conv2_transpose__block_3/batch_normalization_15/AssignNewValue>conv2_transpose__block_3/batch_normalization_15/AssignNewValue2�
@conv2_transpose__block_3/batch_normalization_15/AssignNewValue_1@conv2_transpose__block_3/batch_normalization_15/AssignNewValue_12�
Oconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpOconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2�
Qconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Qconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12�
>conv2_transpose__block_3/batch_normalization_15/ReadVariableOp>conv2_transpose__block_3/batch_normalization_15/ReadVariableOp2�
@conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1@conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_12t
8conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp8conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2d
0custom_attention/dense_10/BiasAdd/ReadVariableOp0custom_attention/dense_10/BiasAdd/ReadVariableOp2h
2custom_attention/dense_10/Tensordot/ReadVariableOp2custom_attention/dense_10/Tensordot/ReadVariableOp2d
0custom_attention/dense_11/BiasAdd/ReadVariableOp0custom_attention/dense_11/BiasAdd/ReadVariableOp2h
2custom_attention/dense_11/Tensordot/ReadVariableOp2custom_attention/dense_11/Tensordot/ReadVariableOp2d
0custom_attention/dense_12/BiasAdd/ReadVariableOp0custom_attention/dense_12/BiasAdd/ReadVariableOp2h
2custom_attention/dense_12/Tensordot/ReadVariableOp2custom_attention/dense_12/Tensordot/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2l
4residual_block/batch_normalization_17/AssignNewValue4residual_block/batch_normalization_17/AssignNewValue2p
6residual_block/batch_normalization_17/AssignNewValue_16residual_block/batch_normalization_17/AssignNewValue_12�
Eresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOpEresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2�
Gresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Gresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12l
4residual_block/batch_normalization_17/ReadVariableOp4residual_block/batch_normalization_17/ReadVariableOp2p
6residual_block/batch_normalization_17/ReadVariableOp_16residual_block/batch_normalization_17/ReadVariableOp_12l
4residual_block/batch_normalization_18/AssignNewValue4residual_block/batch_normalization_18/AssignNewValue2p
6residual_block/batch_normalization_18/AssignNewValue_16residual_block/batch_normalization_18/AssignNewValue_12�
Eresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOpEresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp2�
Gresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1Gresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12l
4residual_block/batch_normalization_18/ReadVariableOp4residual_block/batch_normalization_18/ReadVariableOp2p
6residual_block/batch_normalization_18/ReadVariableOp_16residual_block/batch_normalization_18/ReadVariableOp_12`
.residual_block/conv2d_18/Conv2D/ReadVariableOp.residual_block/conv2d_18/Conv2D/ReadVariableOp2`
.residual_block/conv2d_19/Conv2D/ReadVariableOp.residual_block/conv2d_19/Conv2D/ReadVariableOp:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1232805

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
M
1__inference_up_sampling2d_8_layer_call_fn_1232669

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_up_sampling2d_8_layer_call_and_return_conditional_losses_1228686�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
B__inference_dense_layer_call_and_return_conditional_losses_1228968

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_17_layer_call_fn_1232818

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1228839�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_14_layer_call_fn_1232615

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1228628�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_1230439
input_2
input_1
unknown:
��
	unknown_0:	�
	unknown_1:
��@
	unknown_2:	�@%
	unknown_3:��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�%
	unknown_8:��
	unknown_9:	�

unknown_10:	�

unknown_11:	�

unknown_12:	�&

unknown_13:��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�%

unknown_18:�@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@@

unknown_24:@

unknown_25:	�@

unknown_26:@

unknown_27:	�@

unknown_28:@%

unknown_29:�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@$

unknown_34:@@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:@$

unknown_39:@@

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:@

unknown_45:
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2input_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *^
_output_shapesL
J:���������@@:����������:���������@@*C
_read_only_resource_inputs%
#! !"%&'*+,/0*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1230234w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������d
!
_user_specified_name	input_2:UQ
,
_output_shapes
:����������
!
_user_specified_name	input_1
�!
�
I__inference_conv2__block_layer_call_and_return_conditional_losses_1232275

inputsC
(conv2d_17_conv2d_readvariableop_resource:�@<
.batch_normalization_16_readvariableop_resource:@>
0batch_normalization_16_readvariableop_1_resource:@M
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@
identity��%batch_normalization_16/AssignNewValue�'batch_normalization_16/AssignNewValue_1�6batch_normalization_16/FusedBatchNormV3/ReadVariableOp�8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_16/ReadVariableOp�'batch_normalization_16/ReadVariableOp_1�conv2d_17/Conv2D/ReadVariableOp�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_17/Conv2D:output:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_16/AssignNewValueAssignVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource4batch_normalization_16/FusedBatchNormV3:batch_mean:07^batch_normalization_16/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_16/AssignNewValue_1AssignVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_16/FusedBatchNormV3:batch_variance:09^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_17/LeakyRelu	LeakyRelu+batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_17/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp&^batch_normalization_16/AssignNewValue(^batch_normalization_16/AssignNewValue_17^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_1 ^conv2d_17/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@@�: : : : : 2N
%batch_normalization_16/AssignNewValue%batch_normalization_16/AssignNewValue2R
'batch_normalization_16/AssignNewValue_1'batch_normalization_16/AssignNewValue_12p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������@@�
 
_user_specified_nameinputs
�

h
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1232523

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
(__inference_lambda_layer_call_fn_1231647

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1228991p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1229099

inputsD
(conv2d_14_conv2d_readvariableop_resource:��=
.batch_normalization_13_readvariableop_resource:	�?
0batch_normalization_13_readvariableop_1_resource:	�N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	�
identity��6batch_normalization_13/FusedBatchNormV3/ReadVariableOp�8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_13/ReadVariableOp�'batch_normalization_13/ReadVariableOp_1�conv2d_14/Conv2D/ReadVariableOpf
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_6/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_14/Conv2DConv2D6up_sampling2d_6/resize/ResizeBilinear:resized_images:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_14/Conv2D:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
leaky_re_lu_14/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:����������~
IdentityIdentity&leaky_re_lu_14/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp7^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1 ^conv2d_14/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1228934

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
M
1__inference_up_sampling2d_6_layer_call_fn_1232511

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1228520�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_17_layer_call_fn_1232831

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1228870�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_18_layer_call_fn_1232880

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1228903�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1231958

inputsD
(conv2d_15_conv2d_readvariableop_resource:��=
.batch_normalization_14_readvariableop_resource:	�?
0batch_normalization_14_readvariableop_1_resource:	�N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	�
identity��6batch_normalization_14/FusedBatchNormV3/ReadVariableOp�8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_14/ReadVariableOp�'batch_normalization_14/ReadVariableOp_1�conv2d_15/Conv2D/ReadVariableOpf
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_7/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_7/mul:z:0*
T0*0
_output_shapes
:���������  �*
half_pixel_centers(�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_15/Conv2DConv2D6up_sampling2d_7/resize/ResizeBilinear:resized_images:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_15/Conv2D:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������  �:�:�:�:�:*
epsilon%o�:*
is_training( �
leaky_re_lu_15/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:���������  �~
IdentityIdentity&leaky_re_lu_15/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������  ��
NoOpNoOp7^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1 ^conv2d_15/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
I__inference_conv2__block_layer_call_and_return_conditional_losses_1229343

inputsC
(conv2d_17_conv2d_readvariableop_resource:�@<
.batch_normalization_16_readvariableop_resource:@>
0batch_normalization_16_readvariableop_1_resource:@M
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@
identity��6batch_normalization_16/FusedBatchNormV3/ReadVariableOp�8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_16/ReadVariableOp�'batch_normalization_16/ReadVariableOp_1�conv2d_17/Conv2D/ReadVariableOp�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_17/Conv2D:output:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
leaky_re_lu_17/LeakyRelu	LeakyRelu+batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_17/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp7^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_1 ^conv2d_17/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@@�: : : : : 2p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������@@�
 
_user_specified_nameinputs
�

�
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1232427

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������@@_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_1230999
inputs_0
inputs_1
unknown:
��
	unknown_0:	�
	unknown_1:
��@
	unknown_2:	�@%
	unknown_3:��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�%
	unknown_8:��
	unknown_9:	�

unknown_10:	�

unknown_11:	�

unknown_12:	�&

unknown_13:��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�%

unknown_18:�@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@@

unknown_24:@

unknown_25:	�@

unknown_26:@

unknown_27:	�@

unknown_28:@%

unknown_29:�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@$

unknown_34:@@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:@$

unknown_39:@@

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:@

unknown_45:
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *^
_output_shapesL
J:���������@@:����������:���������@@*C
_read_only_resource_inputs%
#! !"%&'*+,/0*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1230234w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1228870

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
:__inference_conv2_transpose__block_3_layer_call_fn_1232014

inputs"
unknown:�@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1229759w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������  �: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�h
�
 __inference__traced_save_1233096
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableopF
Bsavev2_conv2_transpose__block_conv2d_13_kernel_read_readvariableopR
Nsavev2_conv2_transpose__block_batch_normalization_12_gamma_read_readvariableopQ
Msavev2_conv2_transpose__block_batch_normalization_12_beta_read_readvariableopX
Tsavev2_conv2_transpose__block_batch_normalization_12_moving_mean_read_readvariableop\
Xsavev2_conv2_transpose__block_batch_normalization_12_moving_variance_read_readvariableopH
Dsavev2_conv2_transpose__block_1_conv2d_14_kernel_read_readvariableopT
Psavev2_conv2_transpose__block_1_batch_normalization_13_gamma_read_readvariableopS
Osavev2_conv2_transpose__block_1_batch_normalization_13_beta_read_readvariableopZ
Vsavev2_conv2_transpose__block_1_batch_normalization_13_moving_mean_read_readvariableop^
Zsavev2_conv2_transpose__block_1_batch_normalization_13_moving_variance_read_readvariableopH
Dsavev2_conv2_transpose__block_2_conv2d_15_kernel_read_readvariableopT
Psavev2_conv2_transpose__block_2_batch_normalization_14_gamma_read_readvariableopS
Osavev2_conv2_transpose__block_2_batch_normalization_14_beta_read_readvariableopZ
Vsavev2_conv2_transpose__block_2_batch_normalization_14_moving_mean_read_readvariableop^
Zsavev2_conv2_transpose__block_2_batch_normalization_14_moving_variance_read_readvariableopH
Dsavev2_conv2_transpose__block_3_conv2d_16_kernel_read_readvariableopT
Psavev2_conv2_transpose__block_3_batch_normalization_15_gamma_read_readvariableopS
Osavev2_conv2_transpose__block_3_batch_normalization_15_beta_read_readvariableopZ
Vsavev2_conv2_transpose__block_3_batch_normalization_15_moving_mean_read_readvariableop^
Zsavev2_conv2_transpose__block_3_batch_normalization_15_moving_variance_read_readvariableop?
;savev2_custom_attention_dense_10_kernel_read_readvariableop=
9savev2_custom_attention_dense_10_bias_read_readvariableop?
;savev2_custom_attention_dense_11_kernel_read_readvariableop=
9savev2_custom_attention_dense_11_bias_read_readvariableop?
;savev2_custom_attention_dense_12_kernel_read_readvariableop=
9savev2_custom_attention_dense_12_bias_read_readvariableop<
8savev2_conv2__block_conv2d_17_kernel_read_readvariableopH
Dsavev2_conv2__block_batch_normalization_16_gamma_read_readvariableopG
Csavev2_conv2__block_batch_normalization_16_beta_read_readvariableopN
Jsavev2_conv2__block_batch_normalization_16_moving_mean_read_readvariableopR
Nsavev2_conv2__block_batch_normalization_16_moving_variance_read_readvariableop>
:savev2_residual_block_conv2d_18_kernel_read_readvariableop>
:savev2_residual_block_conv2d_19_kernel_read_readvariableopJ
Fsavev2_residual_block_batch_normalization_17_gamma_read_readvariableopI
Esavev2_residual_block_batch_normalization_17_beta_read_readvariableopJ
Fsavev2_residual_block_batch_normalization_18_gamma_read_readvariableopI
Esavev2_residual_block_batch_normalization_18_beta_read_readvariableopP
Lsavev2_residual_block_batch_normalization_17_moving_mean_read_readvariableopT
Psavev2_residual_block_batch_normalization_17_moving_variance_read_readvariableopP
Lsavev2_residual_block_batch_normalization_18_moving_mean_read_readvariableopT
Psavev2_residual_block_batch_normalization_18_moving_variance_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*�
value�B�0B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableopBsavev2_conv2_transpose__block_conv2d_13_kernel_read_readvariableopNsavev2_conv2_transpose__block_batch_normalization_12_gamma_read_readvariableopMsavev2_conv2_transpose__block_batch_normalization_12_beta_read_readvariableopTsavev2_conv2_transpose__block_batch_normalization_12_moving_mean_read_readvariableopXsavev2_conv2_transpose__block_batch_normalization_12_moving_variance_read_readvariableopDsavev2_conv2_transpose__block_1_conv2d_14_kernel_read_readvariableopPsavev2_conv2_transpose__block_1_batch_normalization_13_gamma_read_readvariableopOsavev2_conv2_transpose__block_1_batch_normalization_13_beta_read_readvariableopVsavev2_conv2_transpose__block_1_batch_normalization_13_moving_mean_read_readvariableopZsavev2_conv2_transpose__block_1_batch_normalization_13_moving_variance_read_readvariableopDsavev2_conv2_transpose__block_2_conv2d_15_kernel_read_readvariableopPsavev2_conv2_transpose__block_2_batch_normalization_14_gamma_read_readvariableopOsavev2_conv2_transpose__block_2_batch_normalization_14_beta_read_readvariableopVsavev2_conv2_transpose__block_2_batch_normalization_14_moving_mean_read_readvariableopZsavev2_conv2_transpose__block_2_batch_normalization_14_moving_variance_read_readvariableopDsavev2_conv2_transpose__block_3_conv2d_16_kernel_read_readvariableopPsavev2_conv2_transpose__block_3_batch_normalization_15_gamma_read_readvariableopOsavev2_conv2_transpose__block_3_batch_normalization_15_beta_read_readvariableopVsavev2_conv2_transpose__block_3_batch_normalization_15_moving_mean_read_readvariableopZsavev2_conv2_transpose__block_3_batch_normalization_15_moving_variance_read_readvariableop;savev2_custom_attention_dense_10_kernel_read_readvariableop9savev2_custom_attention_dense_10_bias_read_readvariableop;savev2_custom_attention_dense_11_kernel_read_readvariableop9savev2_custom_attention_dense_11_bias_read_readvariableop;savev2_custom_attention_dense_12_kernel_read_readvariableop9savev2_custom_attention_dense_12_bias_read_readvariableop8savev2_conv2__block_conv2d_17_kernel_read_readvariableopDsavev2_conv2__block_batch_normalization_16_gamma_read_readvariableopCsavev2_conv2__block_batch_normalization_16_beta_read_readvariableopJsavev2_conv2__block_batch_normalization_16_moving_mean_read_readvariableopNsavev2_conv2__block_batch_normalization_16_moving_variance_read_readvariableop:savev2_residual_block_conv2d_18_kernel_read_readvariableop:savev2_residual_block_conv2d_19_kernel_read_readvariableopFsavev2_residual_block_batch_normalization_17_gamma_read_readvariableopEsavev2_residual_block_batch_normalization_17_beta_read_readvariableopFsavev2_residual_block_batch_normalization_18_gamma_read_readvariableopEsavev2_residual_block_batch_normalization_18_beta_read_readvariableopLsavev2_residual_block_batch_normalization_17_moving_mean_read_readvariableopPsavev2_residual_block_batch_normalization_17_moving_variance_read_readvariableopLsavev2_residual_block_batch_normalization_18_moving_mean_read_readvariableopPsavev2_residual_block_batch_normalization_18_moving_variance_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *>
dtypes4
220�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
��:�:
��@:�@:@::��:�:�:�:�:��:�:�:�:�:��:�:�:�:�:�@:@:@:@:@:@@:@:	�@:@:	�@:@:�@:@:@:@:@:@@:@@:@:@:@:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��@:!

_output_shapes	
:�@:,(
&
_output_shapes
:@: 

_output_shapes
::.*
(
_output_shapes
:��:!

_output_shapes	
:�:!	

_output_shapes	
:�:!


_output_shapes	
:�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:-)
'
_output_shapes
:�@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:%!

_output_shapes
:	�@: 

_output_shapes
:@:%!

_output_shapes
:	�@:  

_output_shapes
:@:-!)
'
_output_shapes
:�@: "

_output_shapes
:@: #

_output_shapes
:@: $

_output_shapes
:@: %

_output_shapes
:@:,&(
&
_output_shapes
:@@:,'(
&
_output_shapes
:@@: (

_output_shapes
:@: )

_output_shapes
:@: *

_output_shapes
:@: +

_output_shapes
:@: ,

_output_shapes
:@: -

_output_shapes
:@: .

_output_shapes
:@: /

_output_shapes
:@:0

_output_shapes
: 
�
�
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1232929

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1228839

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
0__inference_residual_block_layer_call_fn_1232300

inputs!
unknown:@@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@#
	unknown_4:@@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_layer_call_and_return_conditional_losses_1229396w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�z
�
M__inference_custom_attention_layer_call_and_return_conditional_losses_1229306
tensor_h
words_e<
*dense_10_tensordot_readvariableop_resource:@@6
(dense_10_biasadd_readvariableop_resource:@=
*dense_11_tensordot_readvariableop_resource:	�@6
(dense_11_biasadd_readvariableop_resource:@=
*dense_12_tensordot_readvariableop_resource:	�@6
(dense_12_biasadd_readvariableop_resource:@
identity

identity_1��dense_10/BiasAdd/ReadVariableOp�!dense_10/Tensordot/ReadVariableOp�dense_11/BiasAdd/ReadVariableOp�!dense_11/Tensordot/ReadVariableOp�dense_12/BiasAdd/ReadVariableOp�!dense_12/Tensordot/ReadVariableOp=
ShapeShapetensor_h*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask>
Shape_1Shapewords_e*
T0*
_output_shapes
:_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
mulMulstrided_slice_1:output:0strided_slice_1:output:0*
T0*
_output_shapes
: Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@~
Reshape/shapePackstrided_slice:output:0mul:z:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:s
ReshapeReshapetensor_hReshape/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0a
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       X
dense_10/Tensordot/ShapeShapeReshape:output:0*
T0*
_output_shapes
:b
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_10/Tensordot/transpose	TransposeReshape:output:0"dense_10/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@b
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@H
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?E
powPowCast:y:0pow/y:output:0*
T0*
_output_shapes
: u
truedivRealDivdense_10/BiasAdd:output:0pow:z:0*
T0*4
_output_shapes"
 :������������������@�
!dense_11/Tensordot/ReadVariableOpReadVariableOp*dense_11_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0a
dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       O
dense_11/Tensordot/ShapeShapewords_e*
T0*
_output_shapes
:b
 dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_11/Tensordot/GatherV2GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/free:output:0)dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_11/Tensordot/GatherV2_1GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/axes:output:0+dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_11/Tensordot/ProdProd$dense_11/Tensordot/GatherV2:output:0!dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_11/Tensordot/Prod_1Prod&dense_11/Tensordot/GatherV2_1:output:0#dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_11/Tensordot/concatConcatV2 dense_11/Tensordot/free:output:0 dense_11/Tensordot/axes:output:0'dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_11/Tensordot/stackPack dense_11/Tensordot/Prod:output:0"dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_11/Tensordot/transpose	Transposewords_e"dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense_11/Tensordot/ReshapeReshape dense_11/Tensordot/transpose:y:0!dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_11/Tensordot/MatMulMatMul#dense_11/Tensordot/Reshape:output:0)dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@b
 dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_11/Tensordot/concat_1ConcatV2$dense_11/Tensordot/GatherV2:output:0#dense_11/Tensordot/Const_2:output:0)dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_11/TensordotReshape#dense_11/Tensordot/MatMul:product:0$dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_11/BiasAddBiasAdddense_11/Tensordot:output:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0a
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       O
dense_12/Tensordot/ShapeShapewords_e*
T0*
_output_shapes
:b
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_12/Tensordot/transpose	Transposewords_e"dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@b
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
einsum/EinsumEinsumtruediv:z:0dense_11/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������*
equationijk,ick->ijci
SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*4
_output_shapes"
 :�������������������
einsum_1/EinsumEinsumSoftmax:softmax:0dense_12/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������@*
equationijk,ikc->ijcx
	Reshape_1Reshapeeinsum_1/Einsum:output:0Shape:output:0*
T0*/
_output_shapes
:���������@@@V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2tensor_hReshape_1:output:0concat/axis:output:0*
N*
T0*0
_output_shapes
:���������@@��
Reshape_2/shapePackstrided_slice:output:0strided_slice_1:output:0strided_slice_1:output:0strided_slice_2:output:0*
N*
T0*
_output_shapes
:{
	Reshape_2ReshapeSoftmax:softmax:0Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@@g
IdentityIdentityconcat:output:0^NoOp*
T0*0
_output_shapes
:���������@@�k

Identity_1IdentityReshape_2:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp"^dense_11/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@@@:����������: : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2F
!dense_11/Tensordot/ReadVariableOp!dense_11/Tensordot/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp:Y U
/
_output_shapes
:���������@@@
"
_user_specified_name
tensor_h:UQ
,
_output_shapes
:����������
!
_user_specified_name	words_e
�
b
C__inference_lambda_layer_call_and_return_conditional_losses_1228991

inputs
identity�d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskW
ExpExpstrided_slice_1:output:0*
T0*(
_output_shapes
:����������K
ShapeShapestrided_slice:output:0*
T0*
_output_shapes
:�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed���)*
seed2����
random_normal/mulMul+random_normal/RandomStandardNormal:output:0Exp:y:0*
T0*(
_output_shapes
:����������x
random_normalAddV2random_normal/mul:z:0strided_slice:output:0*
T0*(
_output_shapes
:����������Z
IdentityIdentityrandom_normal:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1232040

inputsC
(conv2d_16_conv2d_readvariableop_resource:�@<
.batch_normalization_15_readvariableop_resource:@>
0batch_normalization_15_readvariableop_1_resource:@M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@
identity��6batch_normalization_15/FusedBatchNormV3/ReadVariableOp�8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_15/ReadVariableOp�'batch_normalization_15/ReadVariableOp_1�conv2d_16/Conv2D/ReadVariableOpf
up_sampling2d_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_8/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_8/mulMulup_sampling2d_8/Const:output:0 up_sampling2d_8/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_8/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_8/mul:z:0*
T0*0
_output_shapes
:���������@@�*
half_pixel_centers(�
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_16/Conv2DConv2D6up_sampling2d_8/resize/ResizeBilinear:resized_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_16/Conv2D:output:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
leaky_re_lu_16/LeakyRelu	LeakyRelu+batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_16/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp7^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1 ^conv2d_16/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������  �: : : : : 2p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�
�
'__inference_dense_layer_call_fn_1231632

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1228968p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
t
H__inference_concatenate_layer_call_and_return_conditional_losses_1231699
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :x
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������d:����������:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
2__inference_custom_attention_layer_call_fn_1232086
tensor_h
words_e
unknown:@@
	unknown_0:@
	unknown_1:	�@
	unknown_2:@
	unknown_3:	�@
	unknown_4:@
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltensor_hwords_eunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:���������@@�:���������@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_custom_attention_layer_call_and_return_conditional_losses_1229306x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������@@�y

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@@@:����������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������@@@
"
_user_specified_name
tensor_h:UQ
,
_output_shapes
:����������
!
_user_specified_name	words_e
�

�
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1229429

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������@@_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�
�
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1231876

inputsD
(conv2d_14_conv2d_readvariableop_resource:��=
.batch_normalization_13_readvariableop_resource:	�?
0batch_normalization_13_readvariableop_1_resource:	�N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	�
identity��6batch_normalization_13/FusedBatchNormV3/ReadVariableOp�8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_13/ReadVariableOp�'batch_normalization_13/ReadVariableOp_1�conv2d_14/Conv2D/ReadVariableOpf
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_6/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_14/Conv2DConv2D6up_sampling2d_6/resize/ResizeBilinear:resized_images:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_14/Conv2D:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
leaky_re_lu_14/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:����������~
IdentityIdentity&leaky_re_lu_14/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp7^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1 ^conv2d_14/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
.__inference_conv2__block_layer_call_fn_1232216

inputs"
unknown:�@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_conv2__block_layer_call_and_return_conditional_losses_1229343w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������@@�: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������@@�
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_14_layer_call_fn_1232628

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1228659�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
r
H__inference_concatenate_layer_call_and_return_conditional_losses_1229000

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������d:����������:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
:__inference_conv2_transpose__block_2_layer_call_fn_1231917

inputs#
unknown:��
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1229137x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������  �`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�e
�
B__inference_model_layer_call_and_return_conditional_losses_1230234

inputs
inputs_1!
dense_1230119:
��
dense_1230121:	�#
dense_1_1230126:
��@
dense_1_1230128:	�@:
conv2_transpose__block_1230132:��-
conv2_transpose__block_1230134:	�-
conv2_transpose__block_1230136:	�-
conv2_transpose__block_1230138:	�-
conv2_transpose__block_1230140:	�<
 conv2_transpose__block_1_1230143:��/
 conv2_transpose__block_1_1230145:	�/
 conv2_transpose__block_1_1230147:	�/
 conv2_transpose__block_1_1230149:	�/
 conv2_transpose__block_1_1230151:	�<
 conv2_transpose__block_2_1230154:��/
 conv2_transpose__block_2_1230156:	�/
 conv2_transpose__block_2_1230158:	�/
 conv2_transpose__block_2_1230160:	�/
 conv2_transpose__block_2_1230162:	�;
 conv2_transpose__block_3_1230165:�@.
 conv2_transpose__block_3_1230167:@.
 conv2_transpose__block_3_1230169:@.
 conv2_transpose__block_3_1230171:@.
 conv2_transpose__block_3_1230173:@*
custom_attention_1230180:@@&
custom_attention_1230182:@+
custom_attention_1230184:	�@&
custom_attention_1230186:@+
custom_attention_1230188:	�@&
custom_attention_1230190:@/
conv2__block_1230194:�@"
conv2__block_1230196:@"
conv2__block_1230198:@"
conv2__block_1230200:@"
conv2__block_1230202:@0
residual_block_1230205:@@$
residual_block_1230207:@$
residual_block_1230209:@$
residual_block_1230211:@$
residual_block_1230213:@0
residual_block_1230215:@@$
residual_block_1230217:@$
residual_block_1230219:@$
residual_block_1230221:@$
residual_block_1230223:@*
conv2d_7_1230226:@
conv2d_7_1230228:
identity

identity_1

identity_2��$conv2__block/StatefulPartitionedCall�.conv2_transpose__block/StatefulPartitionedCall�0conv2_transpose__block_1/StatefulPartitionedCall�0conv2_transpose__block_2/StatefulPartitionedCall�0conv2_transpose__block_3/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�(custom_attention/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�lambda/StatefulPartitionedCall�&residual_block/StatefulPartitionedCall�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask*
shrink_axis_mask�
dense/StatefulPartitionedCallStatefulPartitionedCall/tf.__operators__.getitem/strided_slice:output:0dense_1230119dense_1230121*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1228968�
lambda/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1229991�
concatenate/PartitionedCallPartitionedCallinputs'lambda/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1229000�
dense_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1_1230126dense_1_1230128*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1229013�
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1229033�
.conv2_transpose__block/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2_transpose__block_1230132conv2_transpose__block_1230134conv2_transpose__block_1230136conv2_transpose__block_1230138conv2_transpose__block_1230140*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1229930�
0conv2_transpose__block_1/StatefulPartitionedCallStatefulPartitionedCall7conv2_transpose__block/StatefulPartitionedCall:output:0 conv2_transpose__block_1_1230143 conv2_transpose__block_1_1230145 conv2_transpose__block_1_1230147 conv2_transpose__block_1_1230149 conv2_transpose__block_1_1230151*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1229873�
0conv2_transpose__block_2/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_1/StatefulPartitionedCall:output:0 conv2_transpose__block_2_1230154 conv2_transpose__block_2_1230156 conv2_transpose__block_2_1230158 conv2_transpose__block_2_1230160 conv2_transpose__block_2_1230162*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1229816�
0conv2_transpose__block_3/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_2/StatefulPartitionedCall:output:0 conv2_transpose__block_3_1230165 conv2_transpose__block_3_1230167 conv2_transpose__block_3_1230169 conv2_transpose__block_3_1230171 conv2_transpose__block_3_1230173*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1229759�
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinputs_17tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
(custom_attention/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_3/StatefulPartitionedCall:output:01tf.__operators__.getitem_1/strided_slice:output:0custom_attention_1230180custom_attention_1230182custom_attention_1230184custom_attention_1230186custom_attention_1230188custom_attention_1230190*
Tin

2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:���������@@�:���������@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_custom_attention_layer_call_and_return_conditional_losses_1229306�
$conv2__block/StatefulPartitionedCallStatefulPartitionedCall1custom_attention/StatefulPartitionedCall:output:0conv2__block_1230194conv2__block_1230196conv2__block_1230198conv2__block_1230200conv2__block_1230202*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_conv2__block_layer_call_and_return_conditional_losses_1229681�
&residual_block/StatefulPartitionedCallStatefulPartitionedCall-conv2__block/StatefulPartitionedCall:output:0residual_block_1230205residual_block_1230207residual_block_1230209residual_block_1230211residual_block_1230213residual_block_1230215residual_block_1230217residual_block_1230219residual_block_1230221residual_block_1230223*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_layer_call_and_return_conditional_losses_1229618�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall/residual_block/StatefulPartitionedCall:output:0conv2d_7_1230226conv2d_7_1230228*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1229429�
IdentityIdentity)conv2d_7/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@x

Identity_1Identity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������

Identity_2Identity1custom_attention/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp%^conv2__block/StatefulPartitionedCall/^conv2_transpose__block/StatefulPartitionedCall1^conv2_transpose__block_1/StatefulPartitionedCall1^conv2_transpose__block_2/StatefulPartitionedCall1^conv2_transpose__block_3/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall)^custom_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lambda/StatefulPartitionedCall'^residual_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$conv2__block/StatefulPartitionedCall$conv2__block/StatefulPartitionedCall2`
.conv2_transpose__block/StatefulPartitionedCall.conv2_transpose__block/StatefulPartitionedCall2d
0conv2_transpose__block_1/StatefulPartitionedCall0conv2_transpose__block_1/StatefulPartitionedCall2d
0conv2_transpose__block_2/StatefulPartitionedCall0conv2_transpose__block_2/StatefulPartitionedCall2d
0conv2_transpose__block_3/StatefulPartitionedCall0conv2_transpose__block_3/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2T
(custom_attention/StatefulPartitionedCall(custom_attention/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lambda/StatefulPartitionedCalllambda/StatefulPartitionedCall2P
&residual_block/StatefulPartitionedCall&residual_block/StatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:TP
,
_output_shapes
:����������
 
_user_specified_nameinputs
�f
�
B__inference_model_layer_call_and_return_conditional_losses_1230562
input_2
input_1!
dense_1230447:
��
dense_1230449:	�#
dense_1_1230454:
��@
dense_1_1230456:	�@:
conv2_transpose__block_1230460:��-
conv2_transpose__block_1230462:	�-
conv2_transpose__block_1230464:	�-
conv2_transpose__block_1230466:	�-
conv2_transpose__block_1230468:	�<
 conv2_transpose__block_1_1230471:��/
 conv2_transpose__block_1_1230473:	�/
 conv2_transpose__block_1_1230475:	�/
 conv2_transpose__block_1_1230477:	�/
 conv2_transpose__block_1_1230479:	�<
 conv2_transpose__block_2_1230482:��/
 conv2_transpose__block_2_1230484:	�/
 conv2_transpose__block_2_1230486:	�/
 conv2_transpose__block_2_1230488:	�/
 conv2_transpose__block_2_1230490:	�;
 conv2_transpose__block_3_1230493:�@.
 conv2_transpose__block_3_1230495:@.
 conv2_transpose__block_3_1230497:@.
 conv2_transpose__block_3_1230499:@.
 conv2_transpose__block_3_1230501:@*
custom_attention_1230508:@@&
custom_attention_1230510:@+
custom_attention_1230512:	�@&
custom_attention_1230514:@+
custom_attention_1230516:	�@&
custom_attention_1230518:@/
conv2__block_1230522:�@"
conv2__block_1230524:@"
conv2__block_1230526:@"
conv2__block_1230528:@"
conv2__block_1230530:@0
residual_block_1230533:@@$
residual_block_1230535:@$
residual_block_1230537:@$
residual_block_1230539:@$
residual_block_1230541:@0
residual_block_1230543:@@$
residual_block_1230545:@$
residual_block_1230547:@$
residual_block_1230549:@$
residual_block_1230551:@*
conv2d_7_1230554:@
conv2d_7_1230556:
identity

identity_1

identity_2��$conv2__block/StatefulPartitionedCall�.conv2_transpose__block/StatefulPartitionedCall�0conv2_transpose__block_1/StatefulPartitionedCall�0conv2_transpose__block_2/StatefulPartitionedCall�0conv2_transpose__block_3/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�(custom_attention/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�lambda/StatefulPartitionedCall�&residual_block/StatefulPartitionedCall�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinput_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask*
shrink_axis_mask�
dense/StatefulPartitionedCallStatefulPartitionedCall/tf.__operators__.getitem/strided_slice:output:0dense_1230447dense_1230449*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1228968�
lambda/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1228991�
concatenate/PartitionedCallPartitionedCallinput_2'lambda/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1229000�
dense_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1_1230454dense_1_1230456*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1229013�
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1229033�
.conv2_transpose__block/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2_transpose__block_1230460conv2_transpose__block_1230462conv2_transpose__block_1230464conv2_transpose__block_1230466conv2_transpose__block_1230468*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1229061�
0conv2_transpose__block_1/StatefulPartitionedCallStatefulPartitionedCall7conv2_transpose__block/StatefulPartitionedCall:output:0 conv2_transpose__block_1_1230471 conv2_transpose__block_1_1230473 conv2_transpose__block_1_1230475 conv2_transpose__block_1_1230477 conv2_transpose__block_1_1230479*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1229099�
0conv2_transpose__block_2/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_1/StatefulPartitionedCall:output:0 conv2_transpose__block_2_1230482 conv2_transpose__block_2_1230484 conv2_transpose__block_2_1230486 conv2_transpose__block_2_1230488 conv2_transpose__block_2_1230490*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1229137�
0conv2_transpose__block_3/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_2/StatefulPartitionedCall:output:0 conv2_transpose__block_3_1230493 conv2_transpose__block_3_1230495 conv2_transpose__block_3_1230497 conv2_transpose__block_3_1230499 conv2_transpose__block_3_1230501*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1229175�
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinput_17tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
(custom_attention/StatefulPartitionedCallStatefulPartitionedCall9conv2_transpose__block_3/StatefulPartitionedCall:output:01tf.__operators__.getitem_1/strided_slice:output:0custom_attention_1230508custom_attention_1230510custom_attention_1230512custom_attention_1230514custom_attention_1230516custom_attention_1230518*
Tin

2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:���������@@�:���������@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_custom_attention_layer_call_and_return_conditional_losses_1229306�
$conv2__block/StatefulPartitionedCallStatefulPartitionedCall1custom_attention/StatefulPartitionedCall:output:0conv2__block_1230522conv2__block_1230524conv2__block_1230526conv2__block_1230528conv2__block_1230530*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_conv2__block_layer_call_and_return_conditional_losses_1229343�
&residual_block/StatefulPartitionedCallStatefulPartitionedCall-conv2__block/StatefulPartitionedCall:output:0residual_block_1230533residual_block_1230535residual_block_1230537residual_block_1230539residual_block_1230541residual_block_1230543residual_block_1230545residual_block_1230547residual_block_1230549residual_block_1230551*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_residual_block_layer_call_and_return_conditional_losses_1229396�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall/residual_block/StatefulPartitionedCall:output:0conv2d_7_1230554conv2d_7_1230556*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1229429�
IdentityIdentity)conv2d_7/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@x

Identity_1Identity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������

Identity_2Identity1custom_attention/StatefulPartitionedCall:output:1^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp%^conv2__block/StatefulPartitionedCall/^conv2_transpose__block/StatefulPartitionedCall1^conv2_transpose__block_1/StatefulPartitionedCall1^conv2_transpose__block_2/StatefulPartitionedCall1^conv2_transpose__block_3/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall)^custom_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lambda/StatefulPartitionedCall'^residual_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$conv2__block/StatefulPartitionedCall$conv2__block/StatefulPartitionedCall2`
.conv2_transpose__block/StatefulPartitionedCall.conv2_transpose__block/StatefulPartitionedCall2d
0conv2_transpose__block_1/StatefulPartitionedCall0conv2_transpose__block_1/StatefulPartitionedCall2d
0conv2_transpose__block_2/StatefulPartitionedCall0conv2_transpose__block_2/StatefulPartitionedCall2d
0conv2_transpose__block_3/StatefulPartitionedCall0conv2_transpose__block_3/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2T
(custom_attention/StatefulPartitionedCall(custom_attention/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lambda/StatefulPartitionedCalllambda/StatefulPartitionedCall2P
&residual_block/StatefulPartitionedCall&residual_block/StatefulPartitionedCall:P L
'
_output_shapes
:���������d
!
_user_specified_name	input_2:UQ
,
_output_shapes
:����������
!
_user_specified_name	input_1
�
�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1228493

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1229061

inputsD
(conv2d_13_conv2d_readvariableop_resource:��=
.batch_normalization_12_readvariableop_resource:	�?
0batch_normalization_12_readvariableop_1_resource:	�N
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	�
identity��6batch_normalization_12/FusedBatchNormV3/ReadVariableOp�8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_12/ReadVariableOp�'batch_normalization_12/ReadVariableOp_1�conv2d_13/Conv2D/ReadVariableOpf
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_5/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_13/Conv2DConv2D6up_sampling2d_5/resize/ResizeBilinear:resized_images:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_13/Conv2D:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
leaky_re_lu_13/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:����������~
IdentityIdentity&leaky_re_lu_13/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp7^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1 ^conv2d_13/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
B__inference_dense_layer_call_and_return_conditional_losses_1231642

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
C__inference_lambda_layer_call_and_return_conditional_losses_1231686

inputs
identity�d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskW
ExpExpstrided_slice_1:output:0*
T0*(
_output_shapes
:����������K
ShapeShapestrided_slice:output:0*
T0*
_output_shapes
:�
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed���)*
seed2�Ә�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0Exp:y:0*
T0*(
_output_shapes
:����������x
random_normalAddV2random_normal/mul:z:0strided_slice:output:0*
T0*(
_output_shapes
:����������Z
IdentityIdentityrandom_normal:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
M
1__inference_up_sampling2d_7_layer_call_fn_1232590

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1228603�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_1229539
input_2
input_1
unknown:
��
	unknown_0:	�
	unknown_1:
��@
	unknown_2:	�@%
	unknown_3:��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�%
	unknown_8:��
	unknown_9:	�

unknown_10:	�

unknown_11:	�

unknown_12:	�&

unknown_13:��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�%

unknown_18:�@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@@

unknown_24:@

unknown_25:	�@

unknown_26:@

unknown_27:	�@

unknown_28:@%

unknown_29:�@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@$

unknown_34:@@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:@$

unknown_39:@@

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:@

unknown_45:
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2input_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *^
_output_shapesL
J:���������@@:����������:���������@@*Q
_read_only_resource_inputs3
1/	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1229438w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������y

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������d
!
_user_specified_name	input_2:UQ
,
_output_shapes
:����������
!
_user_specified_name	input_1
��
�&
#__inference__traced_restore_1233247
file_prefix1
assignvariableop_dense_kernel:
��,
assignvariableop_1_dense_bias:	�5
!assignvariableop_2_dense_1_kernel:
��@.
assignvariableop_3_dense_1_bias:	�@<
"assignvariableop_4_conv2d_7_kernel:@.
 assignvariableop_5_conv2d_7_bias:V
:assignvariableop_6_conv2_transpose__block_conv2d_13_kernel:��U
Fassignvariableop_7_conv2_transpose__block_batch_normalization_12_gamma:	�T
Eassignvariableop_8_conv2_transpose__block_batch_normalization_12_beta:	�[
Lassignvariableop_9_conv2_transpose__block_batch_normalization_12_moving_mean:	�`
Qassignvariableop_10_conv2_transpose__block_batch_normalization_12_moving_variance:	�Y
=assignvariableop_11_conv2_transpose__block_1_conv2d_14_kernel:��X
Iassignvariableop_12_conv2_transpose__block_1_batch_normalization_13_gamma:	�W
Hassignvariableop_13_conv2_transpose__block_1_batch_normalization_13_beta:	�^
Oassignvariableop_14_conv2_transpose__block_1_batch_normalization_13_moving_mean:	�b
Sassignvariableop_15_conv2_transpose__block_1_batch_normalization_13_moving_variance:	�Y
=assignvariableop_16_conv2_transpose__block_2_conv2d_15_kernel:��X
Iassignvariableop_17_conv2_transpose__block_2_batch_normalization_14_gamma:	�W
Hassignvariableop_18_conv2_transpose__block_2_batch_normalization_14_beta:	�^
Oassignvariableop_19_conv2_transpose__block_2_batch_normalization_14_moving_mean:	�b
Sassignvariableop_20_conv2_transpose__block_2_batch_normalization_14_moving_variance:	�X
=assignvariableop_21_conv2_transpose__block_3_conv2d_16_kernel:�@W
Iassignvariableop_22_conv2_transpose__block_3_batch_normalization_15_gamma:@V
Hassignvariableop_23_conv2_transpose__block_3_batch_normalization_15_beta:@]
Oassignvariableop_24_conv2_transpose__block_3_batch_normalization_15_moving_mean:@a
Sassignvariableop_25_conv2_transpose__block_3_batch_normalization_15_moving_variance:@F
4assignvariableop_26_custom_attention_dense_10_kernel:@@@
2assignvariableop_27_custom_attention_dense_10_bias:@G
4assignvariableop_28_custom_attention_dense_11_kernel:	�@@
2assignvariableop_29_custom_attention_dense_11_bias:@G
4assignvariableop_30_custom_attention_dense_12_kernel:	�@@
2assignvariableop_31_custom_attention_dense_12_bias:@L
1assignvariableop_32_conv2__block_conv2d_17_kernel:�@K
=assignvariableop_33_conv2__block_batch_normalization_16_gamma:@J
<assignvariableop_34_conv2__block_batch_normalization_16_beta:@Q
Cassignvariableop_35_conv2__block_batch_normalization_16_moving_mean:@U
Gassignvariableop_36_conv2__block_batch_normalization_16_moving_variance:@M
3assignvariableop_37_residual_block_conv2d_18_kernel:@@M
3assignvariableop_38_residual_block_conv2d_19_kernel:@@M
?assignvariableop_39_residual_block_batch_normalization_17_gamma:@L
>assignvariableop_40_residual_block_batch_normalization_17_beta:@M
?assignvariableop_41_residual_block_batch_normalization_18_gamma:@L
>assignvariableop_42_residual_block_batch_normalization_18_beta:@S
Eassignvariableop_43_residual_block_batch_normalization_17_moving_mean:@W
Iassignvariableop_44_residual_block_batch_normalization_17_moving_variance:@S
Eassignvariableop_45_residual_block_batch_normalization_18_moving_mean:@W
Iassignvariableop_46_residual_block_batch_normalization_18_moving_variance:@
identity_48��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*�
value�B�0B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_7_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_7_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp:assignvariableop_6_conv2_transpose__block_conv2d_13_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpFassignvariableop_7_conv2_transpose__block_batch_normalization_12_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpEassignvariableop_8_conv2_transpose__block_batch_normalization_12_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpLassignvariableop_9_conv2_transpose__block_batch_normalization_12_moving_meanIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpQassignvariableop_10_conv2_transpose__block_batch_normalization_12_moving_varianceIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp=assignvariableop_11_conv2_transpose__block_1_conv2d_14_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpIassignvariableop_12_conv2_transpose__block_1_batch_normalization_13_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpHassignvariableop_13_conv2_transpose__block_1_batch_normalization_13_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpOassignvariableop_14_conv2_transpose__block_1_batch_normalization_13_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpSassignvariableop_15_conv2_transpose__block_1_batch_normalization_13_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp=assignvariableop_16_conv2_transpose__block_2_conv2d_15_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpIassignvariableop_17_conv2_transpose__block_2_batch_normalization_14_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpHassignvariableop_18_conv2_transpose__block_2_batch_normalization_14_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpOassignvariableop_19_conv2_transpose__block_2_batch_normalization_14_moving_meanIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpSassignvariableop_20_conv2_transpose__block_2_batch_normalization_14_moving_varianceIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp=assignvariableop_21_conv2_transpose__block_3_conv2d_16_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpIassignvariableop_22_conv2_transpose__block_3_batch_normalization_15_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpHassignvariableop_23_conv2_transpose__block_3_batch_normalization_15_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpOassignvariableop_24_conv2_transpose__block_3_batch_normalization_15_moving_meanIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpSassignvariableop_25_conv2_transpose__block_3_batch_normalization_15_moving_varianceIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp4assignvariableop_26_custom_attention_dense_10_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp2assignvariableop_27_custom_attention_dense_10_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp4assignvariableop_28_custom_attention_dense_11_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp2assignvariableop_29_custom_attention_dense_11_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp4assignvariableop_30_custom_attention_dense_12_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp2assignvariableop_31_custom_attention_dense_12_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp1assignvariableop_32_conv2__block_conv2d_17_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp=assignvariableop_33_conv2__block_batch_normalization_16_gammaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp<assignvariableop_34_conv2__block_batch_normalization_16_betaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpCassignvariableop_35_conv2__block_batch_normalization_16_moving_meanIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpGassignvariableop_36_conv2__block_batch_normalization_16_moving_varianceIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp3assignvariableop_37_residual_block_conv2d_18_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp3assignvariableop_38_residual_block_conv2d_19_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp?assignvariableop_39_residual_block_batch_normalization_17_gammaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp>assignvariableop_40_residual_block_batch_normalization_17_betaIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp?assignvariableop_41_residual_block_batch_normalization_18_gammaIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp>assignvariableop_42_residual_block_batch_normalization_18_betaIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpEassignvariableop_43_residual_block_batch_normalization_17_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpIassignvariableop_44_residual_block_batch_normalization_17_moving_varianceIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpEassignvariableop_45_residual_block_batch_normalization_18_moving_meanIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpIassignvariableop_46_residual_block_batch_normalization_18_moving_varianceIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_48IdentityIdentity_47:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_48Identity_48:output:0*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462(
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
�
�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1228462

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1228903

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�z
�
M__inference_custom_attention_layer_call_and_return_conditional_losses_1232201
tensor_h
words_e<
*dense_10_tensordot_readvariableop_resource:@@6
(dense_10_biasadd_readvariableop_resource:@=
*dense_11_tensordot_readvariableop_resource:	�@6
(dense_11_biasadd_readvariableop_resource:@=
*dense_12_tensordot_readvariableop_resource:	�@6
(dense_12_biasadd_readvariableop_resource:@
identity

identity_1��dense_10/BiasAdd/ReadVariableOp�!dense_10/Tensordot/ReadVariableOp�dense_11/BiasAdd/ReadVariableOp�!dense_11/Tensordot/ReadVariableOp�dense_12/BiasAdd/ReadVariableOp�!dense_12/Tensordot/ReadVariableOp=
ShapeShapetensor_h*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask>
Shape_1Shapewords_e*
T0*
_output_shapes
:_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
mulMulstrided_slice_1:output:0strided_slice_1:output:0*
T0*
_output_shapes
: Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@~
Reshape/shapePackstrided_slice:output:0mul:z:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:s
ReshapeReshapetensor_hReshape/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0a
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       X
dense_10/Tensordot/ShapeShapeReshape:output:0*
T0*
_output_shapes
:b
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_10/Tensordot/transpose	TransposeReshape:output:0"dense_10/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@b
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@H
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?E
powPowCast:y:0pow/y:output:0*
T0*
_output_shapes
: u
truedivRealDivdense_10/BiasAdd:output:0pow:z:0*
T0*4
_output_shapes"
 :������������������@�
!dense_11/Tensordot/ReadVariableOpReadVariableOp*dense_11_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0a
dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       O
dense_11/Tensordot/ShapeShapewords_e*
T0*
_output_shapes
:b
 dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_11/Tensordot/GatherV2GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/free:output:0)dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_11/Tensordot/GatherV2_1GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/axes:output:0+dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_11/Tensordot/ProdProd$dense_11/Tensordot/GatherV2:output:0!dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_11/Tensordot/Prod_1Prod&dense_11/Tensordot/GatherV2_1:output:0#dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_11/Tensordot/concatConcatV2 dense_11/Tensordot/free:output:0 dense_11/Tensordot/axes:output:0'dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_11/Tensordot/stackPack dense_11/Tensordot/Prod:output:0"dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_11/Tensordot/transpose	Transposewords_e"dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense_11/Tensordot/ReshapeReshape dense_11/Tensordot/transpose:y:0!dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_11/Tensordot/MatMulMatMul#dense_11/Tensordot/Reshape:output:0)dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@b
 dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_11/Tensordot/concat_1ConcatV2$dense_11/Tensordot/GatherV2:output:0#dense_11/Tensordot/Const_2:output:0)dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_11/TensordotReshape#dense_11/Tensordot/MatMul:product:0$dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_11/BiasAddBiasAdddense_11/Tensordot:output:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0a
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       O
dense_12/Tensordot/ShapeShapewords_e*
T0*
_output_shapes
:b
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_12/Tensordot/transpose	Transposewords_e"dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@b
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
einsum/EinsumEinsumtruediv:z:0dense_11/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������*
equationijk,ick->ijci
SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*4
_output_shapes"
 :�������������������
einsum_1/EinsumEinsumSoftmax:softmax:0dense_12/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������@*
equationijk,ikc->ijcx
	Reshape_1Reshapeeinsum_1/Einsum:output:0Shape:output:0*
T0*/
_output_shapes
:���������@@@V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2tensor_hReshape_1:output:0concat/axis:output:0*
N*
T0*0
_output_shapes
:���������@@��
Reshape_2/shapePackstrided_slice:output:0strided_slice_1:output:0strided_slice_1:output:0strided_slice_2:output:0*
N*
T0*
_output_shapes
:{
	Reshape_2ReshapeSoftmax:softmax:0Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@@g
IdentityIdentityconcat:output:0^NoOp*
T0*0
_output_shapes
:���������@@�k

Identity_1IdentityReshape_2:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp"^dense_11/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@@@:����������: : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2F
!dense_11/Tensordot/ReadVariableOp!dense_11/Tensordot/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp:Y U
/
_output_shapes
:���������@@@
"
_user_specified_name
tensor_h:UQ
,
_output_shapes
:����������
!
_user_specified_name	words_e
�
�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1232664

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1232646

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
`
D__inference_reshape_layer_call_and_return_conditional_losses_1229033

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
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
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:����������a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������@:P L
(
_output_shapes
:����������@
 
_user_specified_nameinputs
�

h
L__inference_up_sampling2d_8_layer_call_and_return_conditional_losses_1228686

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�1
�	
K__inference_residual_block_layer_call_and_return_conditional_losses_1232366

inputsB
(conv2d_18_conv2d_readvariableop_resource:@@<
.batch_normalization_17_readvariableop_resource:@>
0batch_normalization_17_readvariableop_1_resource:@M
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@<
.batch_normalization_18_readvariableop_resource:@>
0batch_normalization_18_readvariableop_1_resource:@M
?batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@
identity��6batch_normalization_17/FusedBatchNormV3/ReadVariableOp�8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_17/ReadVariableOp�'batch_normalization_17/ReadVariableOp_1�6batch_normalization_18/FusedBatchNormV3/ReadVariableOp�8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_18/ReadVariableOp�'batch_normalization_18/ReadVariableOp_1�conv2d_18/Conv2D/ReadVariableOp�conv2d_19/Conv2D/ReadVariableOp�
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_18/Conv2D:output:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
leaky_re_lu_18/LeakyRelu	LeakyRelu+batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_19/Conv2DConv2D&leaky_re_lu_18/LeakyRelu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3conv2d_19/Conv2D:output:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( 
add/addAddV2+batch_normalization_18/FusedBatchNormV3:y:0inputs*
T0*/
_output_shapes
:���������@@@c
leaky_re_lu_19/LeakyRelu	LeakyReluadd/add:z:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_19/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp7^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_1 ^conv2d_18/Conv2D/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@@: : : : : : : : : : 2p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_13_layer_call_fn_1232549

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1228576�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�@
�
K__inference_residual_block_layer_call_and_return_conditional_losses_1229618

inputsB
(conv2d_18_conv2d_readvariableop_resource:@@<
.batch_normalization_17_readvariableop_resource:@>
0batch_normalization_17_readvariableop_1_resource:@M
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@<
.batch_normalization_18_readvariableop_resource:@>
0batch_normalization_18_readvariableop_1_resource:@M
?batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@
identity��%batch_normalization_17/AssignNewValue�'batch_normalization_17/AssignNewValue_1�6batch_normalization_17/FusedBatchNormV3/ReadVariableOp�8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_17/ReadVariableOp�'batch_normalization_17/ReadVariableOp_1�%batch_normalization_18/AssignNewValue�'batch_normalization_18/AssignNewValue_1�6batch_normalization_18/FusedBatchNormV3/ReadVariableOp�8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_18/ReadVariableOp�'batch_normalization_18/ReadVariableOp_1�conv2d_18/Conv2D/ReadVariableOp�conv2d_19/Conv2D/ReadVariableOp�
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_18/Conv2D:output:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_17/AssignNewValueAssignVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource4batch_normalization_17/FusedBatchNormV3:batch_mean:07^batch_normalization_17/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_17/AssignNewValue_1AssignVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_17/FusedBatchNormV3:batch_variance:09^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_18/LeakyRelu	LeakyRelu+batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_19/Conv2DConv2D&leaky_re_lu_18/LeakyRelu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3conv2d_19/Conv2D:output:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_18/AssignNewValueAssignVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource4batch_normalization_18/FusedBatchNormV3:batch_mean:07^batch_normalization_18/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_18/AssignNewValue_1AssignVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_18/FusedBatchNormV3:batch_variance:09^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
add/addAddV2+batch_normalization_18/FusedBatchNormV3:y:0inputs*
T0*/
_output_shapes
:���������@@@c
leaky_re_lu_19/LeakyRelu	LeakyReluadd/add:z:0*/
_output_shapes
:���������@@@}
IdentityIdentity&leaky_re_lu_19/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@@�
NoOpNoOp&^batch_normalization_17/AssignNewValue(^batch_normalization_17/AssignNewValue_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_1&^batch_normalization_18/AssignNewValue(^batch_normalization_18/AssignNewValue_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_1 ^conv2d_18/Conv2D/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������@@@: : : : : : : : : : 2N
%batch_normalization_17/AssignNewValue%batch_normalization_17/AssignNewValue2R
'batch_normalization_17/AssignNewValue_1'batch_normalization_17/AssignNewValue_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12N
%batch_normalization_18/AssignNewValue%batch_normalization_18/AssignNewValue2R
'batch_normalization_18/AssignNewValue_1'batch_normalization_18/AssignNewValue_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@@
 
_user_specified_nameinputs
�&
�
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1231902

inputsD
(conv2d_14_conv2d_readvariableop_resource:��=
.batch_normalization_13_readvariableop_resource:	�?
0batch_normalization_13_readvariableop_1_resource:	�N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	�
identity��%batch_normalization_13/AssignNewValue�'batch_normalization_13/AssignNewValue_1�6batch_normalization_13/FusedBatchNormV3/ReadVariableOp�8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_13/ReadVariableOp�'batch_normalization_13/ReadVariableOp_1�conv2d_14/Conv2D/ReadVariableOpf
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_6/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_14/Conv2DConv2D6up_sampling2d_6/resize/ResizeBilinear:resized_images:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_14/Conv2D:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_13/AssignNewValueAssignVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource4batch_normalization_13/FusedBatchNormV3:batch_mean:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_13/AssignNewValue_1AssignVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_13/FusedBatchNormV3:batch_variance:09^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
leaky_re_lu_14/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:����������~
IdentityIdentity&leaky_re_lu_14/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp&^batch_normalization_13/AssignNewValue(^batch_normalization_13/AssignNewValue_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1 ^conv2d_14/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2N
%batch_normalization_13/AssignNewValue%batch_normalization_13/AssignNewValue2R
'batch_normalization_13/AssignNewValue_1'batch_normalization_13/AssignNewValue_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_reshape_layer_call_fn_1231724

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_1229033i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������@:P L
(
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1232725

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�:
"__inference__wrapped_model_1228421
input_2
input_1>
*model_dense_matmul_readvariableop_resource:
��:
+model_dense_biasadd_readvariableop_resource:	�@
,model_dense_1_matmul_readvariableop_resource:
��@<
-model_dense_1_biasadd_readvariableop_resource:	�@a
Emodel_conv2_transpose__block_conv2d_13_conv2d_readvariableop_resource:��Z
Kmodel_conv2_transpose__block_batch_normalization_12_readvariableop_resource:	�\
Mmodel_conv2_transpose__block_batch_normalization_12_readvariableop_1_resource:	�k
\model_conv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	�m
^model_conv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	�c
Gmodel_conv2_transpose__block_1_conv2d_14_conv2d_readvariableop_resource:��\
Mmodel_conv2_transpose__block_1_batch_normalization_13_readvariableop_resource:	�^
Omodel_conv2_transpose__block_1_batch_normalization_13_readvariableop_1_resource:	�m
^model_conv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	�o
`model_conv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	�c
Gmodel_conv2_transpose__block_2_conv2d_15_conv2d_readvariableop_resource:��\
Mmodel_conv2_transpose__block_2_batch_normalization_14_readvariableop_resource:	�^
Omodel_conv2_transpose__block_2_batch_normalization_14_readvariableop_1_resource:	�m
^model_conv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	�o
`model_conv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	�b
Gmodel_conv2_transpose__block_3_conv2d_16_conv2d_readvariableop_resource:�@[
Mmodel_conv2_transpose__block_3_batch_normalization_15_readvariableop_resource:@]
Omodel_conv2_transpose__block_3_batch_normalization_15_readvariableop_1_resource:@l
^model_conv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@n
`model_conv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@S
Amodel_custom_attention_dense_10_tensordot_readvariableop_resource:@@M
?model_custom_attention_dense_10_biasadd_readvariableop_resource:@T
Amodel_custom_attention_dense_11_tensordot_readvariableop_resource:	�@M
?model_custom_attention_dense_11_biasadd_readvariableop_resource:@T
Amodel_custom_attention_dense_12_tensordot_readvariableop_resource:	�@M
?model_custom_attention_dense_12_biasadd_readvariableop_resource:@V
;model_conv2__block_conv2d_17_conv2d_readvariableop_resource:�@O
Amodel_conv2__block_batch_normalization_16_readvariableop_resource:@Q
Cmodel_conv2__block_batch_normalization_16_readvariableop_1_resource:@`
Rmodel_conv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@b
Tmodel_conv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@W
=model_residual_block_conv2d_18_conv2d_readvariableop_resource:@@Q
Cmodel_residual_block_batch_normalization_17_readvariableop_resource:@S
Emodel_residual_block_batch_normalization_17_readvariableop_1_resource:@b
Tmodel_residual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@d
Vmodel_residual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@W
=model_residual_block_conv2d_19_conv2d_readvariableop_resource:@@Q
Cmodel_residual_block_batch_normalization_18_readvariableop_resource:@S
Emodel_residual_block_batch_normalization_18_readvariableop_1_resource:@b
Tmodel_residual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@d
Vmodel_residual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@G
-model_conv2d_7_conv2d_readvariableop_resource:@<
.model_conv2d_7_biasadd_readvariableop_resource:
identity

identity_1

identity_2��Imodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp�Kmodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1�8model/conv2__block/batch_normalization_16/ReadVariableOp�:model/conv2__block/batch_normalization_16/ReadVariableOp_1�2model/conv2__block/conv2d_17/Conv2D/ReadVariableOp�Smodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp�Umodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�Bmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOp�Dmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOp_1�<model/conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp�Umodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp�Wmodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�Dmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOp�Fmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1�>model/conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp�Umodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp�Wmodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1�Dmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOp�Fmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1�>model/conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp�Umodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp�Wmodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1�Dmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOp�Fmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1�>model/conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp�%model/conv2d_7/BiasAdd/ReadVariableOp�$model/conv2d_7/Conv2D/ReadVariableOp�6model/custom_attention/dense_10/BiasAdd/ReadVariableOp�8model/custom_attention/dense_10/Tensordot/ReadVariableOp�6model/custom_attention/dense_11/BiasAdd/ReadVariableOp�8model/custom_attention/dense_11/Tensordot/ReadVariableOp�6model/custom_attention/dense_12/BiasAdd/ReadVariableOp�8model/custom_attention/dense_12/Tensordot/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�Kmodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp�Mmodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1�:model/residual_block/batch_normalization_17/ReadVariableOp�<model/residual_block/batch_normalization_17/ReadVariableOp_1�Kmodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp�Mmodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1�:model/residual_block/batch_normalization_18/ReadVariableOp�<model/residual_block/batch_normalization_18/ReadVariableOp_1�4model/residual_block/conv2d_18/Conv2D/ReadVariableOp�4model/residual_block/conv2d_19/Conv2D/ReadVariableOp�
2model/tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
4model/tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
4model/tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
,model/tf.__operators__.getitem/strided_sliceStridedSliceinput_1;model/tf.__operators__.getitem/strided_slice/stack:output:0=model/tf.__operators__.getitem/strided_slice/stack_1:output:0=model/tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask*
shrink_axis_mask�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model/dense/MatMulMatMul5model/tf.__operators__.getitem/strided_slice:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
 model/lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"model/lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   s
"model/lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
model/lambda/strided_sliceStridedSlicemodel/dense/BiasAdd:output:0)model/lambda/strided_slice/stack:output:0+model/lambda/strided_slice/stack_1:output:0+model/lambda/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_masks
"model/lambda/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   u
$model/lambda/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$model/lambda/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
model/lambda/strided_slice_1StridedSlicemodel/dense/BiasAdd:output:0+model/lambda/strided_slice_1/stack:output:0-model/lambda/strided_slice_1/stack_1:output:0-model/lambda/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskq
model/lambda/ExpExp%model/lambda/strided_slice_1:output:0*
T0*(
_output_shapes
:����������e
model/lambda/ShapeShape#model/lambda/strided_slice:output:0*
T0*
_output_shapes
:�
/model/lambda/random_normal/RandomStandardNormalRandomStandardNormalmodel/lambda/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed���)*
seed2㼼�
model/lambda/random_normal/mulMul8model/lambda/random_normal/RandomStandardNormal:output:0model/lambda/Exp:y:0*
T0*(
_output_shapes
:�����������
model/lambda/random_normalAddV2"model/lambda/random_normal/mul:z:0#model/lambda/strided_slice:output:0*
T0*(
_output_shapes
:����������_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model/concatenate/concatConcatV2input_2model/lambda/random_normal:z:0&model/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
model/dense_1/MatMulMatMul!model/concatenate/concat:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@�
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@m
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������@c
model/reshape/ShapeShape model/dense_1/Relu:activations:0*
T0*
_output_shapes
:k
!model/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/reshape/strided_sliceStridedSlicemodel/reshape/Shape:output:0*model/reshape/strided_slice/stack:output:0,model/reshape/strided_slice/stack_1:output:0,model/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
model/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :_
model/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :`
model/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
model/reshape/Reshape/shapePack$model/reshape/strided_slice:output:0&model/reshape/Reshape/shape/1:output:0&model/reshape/Reshape/shape/2:output:0&model/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
model/reshape/ReshapeReshape model/dense_1/Relu:activations:0$model/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:�����������
2model/conv2_transpose__block/up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      �
4model/conv2_transpose__block/up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
0model/conv2_transpose__block/up_sampling2d_5/mulMul;model/conv2_transpose__block/up_sampling2d_5/Const:output:0=model/conv2_transpose__block/up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
Bmodel/conv2_transpose__block/up_sampling2d_5/resize/ResizeBilinearResizeBilinearmodel/reshape/Reshape:output:04model/conv2_transpose__block/up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
<model/conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOpReadVariableOpEmodel_conv2_transpose__block_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
-model/conv2_transpose__block/conv2d_13/Conv2DConv2DSmodel/conv2_transpose__block/up_sampling2d_5/resize/ResizeBilinear:resized_images:0Dmodel/conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
Bmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOpReadVariableOpKmodel_conv2_transpose__block_batch_normalization_12_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Dmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOp_1ReadVariableOpMmodel_conv2_transpose__block_batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Smodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp\model_conv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Umodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^model_conv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Dmodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3FusedBatchNormV36model/conv2_transpose__block/conv2d_13/Conv2D:output:0Jmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOp:value:0Lmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOp_1:value:0[model/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0]model/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
5model/conv2_transpose__block/leaky_re_lu_13/LeakyRelu	LeakyReluHmodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:�����������
4model/conv2_transpose__block_1/up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"      �
6model/conv2_transpose__block_1/up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
2model/conv2_transpose__block_1/up_sampling2d_6/mulMul=model/conv2_transpose__block_1/up_sampling2d_6/Const:output:0?model/conv2_transpose__block_1/up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
Dmodel/conv2_transpose__block_1/up_sampling2d_6/resize/ResizeBilinearResizeBilinearCmodel/conv2_transpose__block/leaky_re_lu_13/LeakyRelu:activations:06model/conv2_transpose__block_1/up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
>model/conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOpGmodel_conv2_transpose__block_1_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
/model/conv2_transpose__block_1/conv2d_14/Conv2DConv2DUmodel/conv2_transpose__block_1/up_sampling2d_6/resize/ResizeBilinear:resized_images:0Fmodel/conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
Dmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOpReadVariableOpMmodel_conv2_transpose__block_1_batch_normalization_13_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Fmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1ReadVariableOpOmodel_conv2_transpose__block_1_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Umodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp^model_conv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Wmodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`model_conv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Fmodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3FusedBatchNormV38model/conv2_transpose__block_1/conv2d_14/Conv2D:output:0Lmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOp:value:0Nmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1:value:0]model/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0_model/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
7model/conv2_transpose__block_1/leaky_re_lu_14/LeakyRelu	LeakyReluJmodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:�����������
4model/conv2_transpose__block_2/up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      �
6model/conv2_transpose__block_2/up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
2model/conv2_transpose__block_2/up_sampling2d_7/mulMul=model/conv2_transpose__block_2/up_sampling2d_7/Const:output:0?model/conv2_transpose__block_2/up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:�
Dmodel/conv2_transpose__block_2/up_sampling2d_7/resize/ResizeBilinearResizeBilinearEmodel/conv2_transpose__block_1/leaky_re_lu_14/LeakyRelu:activations:06model/conv2_transpose__block_2/up_sampling2d_7/mul:z:0*
T0*0
_output_shapes
:���������  �*
half_pixel_centers(�
>model/conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOpReadVariableOpGmodel_conv2_transpose__block_2_conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
/model/conv2_transpose__block_2/conv2d_15/Conv2DConv2DUmodel/conv2_transpose__block_2/up_sampling2d_7/resize/ResizeBilinear:resized_images:0Fmodel/conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
Dmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOpReadVariableOpMmodel_conv2_transpose__block_2_batch_normalization_14_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Fmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1ReadVariableOpOmodel_conv2_transpose__block_2_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Umodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp^model_conv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Wmodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`model_conv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Fmodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3FusedBatchNormV38model/conv2_transpose__block_2/conv2d_15/Conv2D:output:0Lmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOp:value:0Nmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1:value:0]model/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0_model/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������  �:�:�:�:�:*
epsilon%o�:*
is_training( �
7model/conv2_transpose__block_2/leaky_re_lu_15/LeakyRelu	LeakyReluJmodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:���������  ��
4model/conv2_transpose__block_3/up_sampling2d_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"        �
6model/conv2_transpose__block_3/up_sampling2d_8/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
2model/conv2_transpose__block_3/up_sampling2d_8/mulMul=model/conv2_transpose__block_3/up_sampling2d_8/Const:output:0?model/conv2_transpose__block_3/up_sampling2d_8/Const_1:output:0*
T0*
_output_shapes
:�
Dmodel/conv2_transpose__block_3/up_sampling2d_8/resize/ResizeBilinearResizeBilinearEmodel/conv2_transpose__block_2/leaky_re_lu_15/LeakyRelu:activations:06model/conv2_transpose__block_3/up_sampling2d_8/mul:z:0*
T0*0
_output_shapes
:���������@@�*
half_pixel_centers(�
>model/conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOpReadVariableOpGmodel_conv2_transpose__block_3_conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
/model/conv2_transpose__block_3/conv2d_16/Conv2DConv2DUmodel/conv2_transpose__block_3/up_sampling2d_8/resize/ResizeBilinear:resized_images:0Fmodel/conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
Dmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOpReadVariableOpMmodel_conv2_transpose__block_3_batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0�
Fmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1ReadVariableOpOmodel_conv2_transpose__block_3_batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Umodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp^model_conv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Wmodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`model_conv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Fmodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3FusedBatchNormV38model/conv2_transpose__block_3/conv2d_16/Conv2D:output:0Lmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOp:value:0Nmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1:value:0]model/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0_model/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
7model/conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu	LeakyReluJmodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
4model/tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
6model/tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
6model/tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
.model/tf.__operators__.getitem_1/strided_sliceStridedSliceinput_1=model/tf.__operators__.getitem_1/strided_slice/stack:output:0?model/tf.__operators__.getitem_1/strided_slice/stack_1:output:0?model/tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
model/custom_attention/ShapeShapeEmodel/conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu:activations:0*
T0*
_output_shapes
:t
*model/custom_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,model/custom_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,model/custom_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$model/custom_attention/strided_sliceStridedSlice%model/custom_attention/Shape:output:03model/custom_attention/strided_slice/stack:output:05model/custom_attention/strided_slice/stack_1:output:05model/custom_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
,model/custom_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.model/custom_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model/custom_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&model/custom_attention/strided_slice_1StridedSlice%model/custom_attention/Shape:output:05model/custom_attention/strided_slice_1/stack:output:07model/custom_attention/strided_slice_1/stack_1:output:07model/custom_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
model/custom_attention/Shape_1Shape7model/tf.__operators__.getitem_1/strided_slice:output:0*
T0*
_output_shapes
:v
,model/custom_attention/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.model/custom_attention/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model/custom_attention/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&model/custom_attention/strided_slice_2StridedSlice'model/custom_attention/Shape_1:output:05model/custom_attention/strided_slice_2/stack:output:07model/custom_attention/strided_slice_2/stack_1:output:07model/custom_attention/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
model/custom_attention/mulMul/model/custom_attention/strided_slice_1:output:0/model/custom_attention/strided_slice_1:output:0*
T0*
_output_shapes
: h
&model/custom_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
$model/custom_attention/Reshape/shapePack-model/custom_attention/strided_slice:output:0model/custom_attention/mul:z:0/model/custom_attention/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
model/custom_attention/ReshapeReshapeEmodel/conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu:activations:0-model/custom_attention/Reshape/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
8model/custom_attention/dense_10/Tensordot/ReadVariableOpReadVariableOpAmodel_custom_attention_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0x
.model/custom_attention/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.model/custom_attention/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
/model/custom_attention/dense_10/Tensordot/ShapeShape'model/custom_attention/Reshape:output:0*
T0*
_output_shapes
:y
7model/custom_attention/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2model/custom_attention/dense_10/Tensordot/GatherV2GatherV28model/custom_attention/dense_10/Tensordot/Shape:output:07model/custom_attention/dense_10/Tensordot/free:output:0@model/custom_attention/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9model/custom_attention/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4model/custom_attention/dense_10/Tensordot/GatherV2_1GatherV28model/custom_attention/dense_10/Tensordot/Shape:output:07model/custom_attention/dense_10/Tensordot/axes:output:0Bmodel/custom_attention/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/model/custom_attention/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.model/custom_attention/dense_10/Tensordot/ProdProd;model/custom_attention/dense_10/Tensordot/GatherV2:output:08model/custom_attention/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1model/custom_attention/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
0model/custom_attention/dense_10/Tensordot/Prod_1Prod=model/custom_attention/dense_10/Tensordot/GatherV2_1:output:0:model/custom_attention/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5model/custom_attention/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0model/custom_attention/dense_10/Tensordot/concatConcatV27model/custom_attention/dense_10/Tensordot/free:output:07model/custom_attention/dense_10/Tensordot/axes:output:0>model/custom_attention/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
/model/custom_attention/dense_10/Tensordot/stackPack7model/custom_attention/dense_10/Tensordot/Prod:output:09model/custom_attention/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
3model/custom_attention/dense_10/Tensordot/transpose	Transpose'model/custom_attention/Reshape:output:09model/custom_attention/dense_10/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
1model/custom_attention/dense_10/Tensordot/ReshapeReshape7model/custom_attention/dense_10/Tensordot/transpose:y:08model/custom_attention/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
0model/custom_attention/dense_10/Tensordot/MatMulMatMul:model/custom_attention/dense_10/Tensordot/Reshape:output:0@model/custom_attention/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@{
1model/custom_attention/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@y
7model/custom_attention/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2model/custom_attention/dense_10/Tensordot/concat_1ConcatV2;model/custom_attention/dense_10/Tensordot/GatherV2:output:0:model/custom_attention/dense_10/Tensordot/Const_2:output:0@model/custom_attention/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
)model/custom_attention/dense_10/TensordotReshape:model/custom_attention/dense_10/Tensordot/MatMul:product:0;model/custom_attention/dense_10/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
6model/custom_attention/dense_10/BiasAdd/ReadVariableOpReadVariableOp?model_custom_attention_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
'model/custom_attention/dense_10/BiasAddBiasAdd2model/custom_attention/dense_10/Tensordot:output:0>model/custom_attention/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@_
model/custom_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@{
model/custom_attention/CastCast&model/custom_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: a
model/custom_attention/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
model/custom_attention/powPowmodel/custom_attention/Cast:y:0%model/custom_attention/pow/y:output:0*
T0*
_output_shapes
: �
model/custom_attention/truedivRealDiv0model/custom_attention/dense_10/BiasAdd:output:0model/custom_attention/pow:z:0*
T0*4
_output_shapes"
 :������������������@�
8model/custom_attention/dense_11/Tensordot/ReadVariableOpReadVariableOpAmodel_custom_attention_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0x
.model/custom_attention/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.model/custom_attention/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
/model/custom_attention/dense_11/Tensordot/ShapeShape7model/tf.__operators__.getitem_1/strided_slice:output:0*
T0*
_output_shapes
:y
7model/custom_attention/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2model/custom_attention/dense_11/Tensordot/GatherV2GatherV28model/custom_attention/dense_11/Tensordot/Shape:output:07model/custom_attention/dense_11/Tensordot/free:output:0@model/custom_attention/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9model/custom_attention/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4model/custom_attention/dense_11/Tensordot/GatherV2_1GatherV28model/custom_attention/dense_11/Tensordot/Shape:output:07model/custom_attention/dense_11/Tensordot/axes:output:0Bmodel/custom_attention/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/model/custom_attention/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.model/custom_attention/dense_11/Tensordot/ProdProd;model/custom_attention/dense_11/Tensordot/GatherV2:output:08model/custom_attention/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1model/custom_attention/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
0model/custom_attention/dense_11/Tensordot/Prod_1Prod=model/custom_attention/dense_11/Tensordot/GatherV2_1:output:0:model/custom_attention/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5model/custom_attention/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0model/custom_attention/dense_11/Tensordot/concatConcatV27model/custom_attention/dense_11/Tensordot/free:output:07model/custom_attention/dense_11/Tensordot/axes:output:0>model/custom_attention/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
/model/custom_attention/dense_11/Tensordot/stackPack7model/custom_attention/dense_11/Tensordot/Prod:output:09model/custom_attention/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
3model/custom_attention/dense_11/Tensordot/transpose	Transpose7model/tf.__operators__.getitem_1/strided_slice:output:09model/custom_attention/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
1model/custom_attention/dense_11/Tensordot/ReshapeReshape7model/custom_attention/dense_11/Tensordot/transpose:y:08model/custom_attention/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
0model/custom_attention/dense_11/Tensordot/MatMulMatMul:model/custom_attention/dense_11/Tensordot/Reshape:output:0@model/custom_attention/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@{
1model/custom_attention/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@y
7model/custom_attention/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2model/custom_attention/dense_11/Tensordot/concat_1ConcatV2;model/custom_attention/dense_11/Tensordot/GatherV2:output:0:model/custom_attention/dense_11/Tensordot/Const_2:output:0@model/custom_attention/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
)model/custom_attention/dense_11/TensordotReshape:model/custom_attention/dense_11/Tensordot/MatMul:product:0;model/custom_attention/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
6model/custom_attention/dense_11/BiasAdd/ReadVariableOpReadVariableOp?model_custom_attention_dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
'model/custom_attention/dense_11/BiasAddBiasAdd2model/custom_attention/dense_11/Tensordot:output:0>model/custom_attention/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
8model/custom_attention/dense_12/Tensordot/ReadVariableOpReadVariableOpAmodel_custom_attention_dense_12_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0x
.model/custom_attention/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.model/custom_attention/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
/model/custom_attention/dense_12/Tensordot/ShapeShape7model/tf.__operators__.getitem_1/strided_slice:output:0*
T0*
_output_shapes
:y
7model/custom_attention/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2model/custom_attention/dense_12/Tensordot/GatherV2GatherV28model/custom_attention/dense_12/Tensordot/Shape:output:07model/custom_attention/dense_12/Tensordot/free:output:0@model/custom_attention/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9model/custom_attention/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4model/custom_attention/dense_12/Tensordot/GatherV2_1GatherV28model/custom_attention/dense_12/Tensordot/Shape:output:07model/custom_attention/dense_12/Tensordot/axes:output:0Bmodel/custom_attention/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/model/custom_attention/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.model/custom_attention/dense_12/Tensordot/ProdProd;model/custom_attention/dense_12/Tensordot/GatherV2:output:08model/custom_attention/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1model/custom_attention/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
0model/custom_attention/dense_12/Tensordot/Prod_1Prod=model/custom_attention/dense_12/Tensordot/GatherV2_1:output:0:model/custom_attention/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5model/custom_attention/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0model/custom_attention/dense_12/Tensordot/concatConcatV27model/custom_attention/dense_12/Tensordot/free:output:07model/custom_attention/dense_12/Tensordot/axes:output:0>model/custom_attention/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
/model/custom_attention/dense_12/Tensordot/stackPack7model/custom_attention/dense_12/Tensordot/Prod:output:09model/custom_attention/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
3model/custom_attention/dense_12/Tensordot/transpose	Transpose7model/tf.__operators__.getitem_1/strided_slice:output:09model/custom_attention/dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
1model/custom_attention/dense_12/Tensordot/ReshapeReshape7model/custom_attention/dense_12/Tensordot/transpose:y:08model/custom_attention/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
0model/custom_attention/dense_12/Tensordot/MatMulMatMul:model/custom_attention/dense_12/Tensordot/Reshape:output:0@model/custom_attention/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@{
1model/custom_attention/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@y
7model/custom_attention/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2model/custom_attention/dense_12/Tensordot/concat_1ConcatV2;model/custom_attention/dense_12/Tensordot/GatherV2:output:0:model/custom_attention/dense_12/Tensordot/Const_2:output:0@model/custom_attention/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
)model/custom_attention/dense_12/TensordotReshape:model/custom_attention/dense_12/Tensordot/MatMul:product:0;model/custom_attention/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
6model/custom_attention/dense_12/BiasAdd/ReadVariableOpReadVariableOp?model_custom_attention_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
'model/custom_attention/dense_12/BiasAddBiasAdd2model/custom_attention/dense_12/Tensordot:output:0>model/custom_attention/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
$model/custom_attention/einsum/EinsumEinsum"model/custom_attention/truediv:z:00model/custom_attention/dense_11/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������*
equationijk,ick->ijc�
model/custom_attention/SoftmaxSoftmax-model/custom_attention/einsum/Einsum:output:0*
T0*4
_output_shapes"
 :�������������������
&model/custom_attention/einsum_1/EinsumEinsum(model/custom_attention/Softmax:softmax:00model/custom_attention/dense_12/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������@*
equationijk,ikc->ijc�
 model/custom_attention/Reshape_1Reshape/model/custom_attention/einsum_1/Einsum:output:0%model/custom_attention/Shape:output:0*
T0*/
_output_shapes
:���������@@@m
"model/custom_attention/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
model/custom_attention/concatConcatV2Emodel/conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu:activations:0)model/custom_attention/Reshape_1:output:0+model/custom_attention/concat/axis:output:0*
N*
T0*0
_output_shapes
:���������@@��
&model/custom_attention/Reshape_2/shapePack-model/custom_attention/strided_slice:output:0/model/custom_attention/strided_slice_1:output:0/model/custom_attention/strided_slice_1:output:0/model/custom_attention/strided_slice_2:output:0*
N*
T0*
_output_shapes
:�
 model/custom_attention/Reshape_2Reshape(model/custom_attention/Softmax:softmax:0/model/custom_attention/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@@�
2model/conv2__block/conv2d_17/Conv2D/ReadVariableOpReadVariableOp;model_conv2__block_conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
#model/conv2__block/conv2d_17/Conv2DConv2D&model/custom_attention/concat:output:0:model/conv2__block/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
8model/conv2__block/batch_normalization_16/ReadVariableOpReadVariableOpAmodel_conv2__block_batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0�
:model/conv2__block/batch_normalization_16/ReadVariableOp_1ReadVariableOpCmodel_conv2__block_batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Imodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOpRmodel_conv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Kmodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpTmodel_conv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
:model/conv2__block/batch_normalization_16/FusedBatchNormV3FusedBatchNormV3,model/conv2__block/conv2d_17/Conv2D:output:0@model/conv2__block/batch_normalization_16/ReadVariableOp:value:0Bmodel/conv2__block/batch_normalization_16/ReadVariableOp_1:value:0Qmodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0Smodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
+model/conv2__block/leaky_re_lu_17/LeakyRelu	LeakyRelu>model/conv2__block/batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
4model/residual_block/conv2d_18/Conv2D/ReadVariableOpReadVariableOp=model_residual_block_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
%model/residual_block/conv2d_18/Conv2DConv2D9model/conv2__block/leaky_re_lu_17/LeakyRelu:activations:0<model/residual_block/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
:model/residual_block/batch_normalization_17/ReadVariableOpReadVariableOpCmodel_residual_block_batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype0�
<model/residual_block/batch_normalization_17/ReadVariableOp_1ReadVariableOpEmodel_residual_block_batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Kmodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOpTmodel_residual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Mmodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVmodel_residual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
<model/residual_block/batch_normalization_17/FusedBatchNormV3FusedBatchNormV3.model/residual_block/conv2d_18/Conv2D:output:0Bmodel/residual_block/batch_normalization_17/ReadVariableOp:value:0Dmodel/residual_block/batch_normalization_17/ReadVariableOp_1:value:0Smodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0Umodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
-model/residual_block/leaky_re_lu_18/LeakyRelu	LeakyRelu@model/residual_block/batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
4model/residual_block/conv2d_19/Conv2D/ReadVariableOpReadVariableOp=model_residual_block_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
%model/residual_block/conv2d_19/Conv2DConv2D;model/residual_block/leaky_re_lu_18/LeakyRelu:activations:0<model/residual_block/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
:model/residual_block/batch_normalization_18/ReadVariableOpReadVariableOpCmodel_residual_block_batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype0�
<model/residual_block/batch_normalization_18/ReadVariableOp_1ReadVariableOpEmodel_residual_block_batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Kmodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOpTmodel_residual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Mmodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVmodel_residual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
<model/residual_block/batch_normalization_18/FusedBatchNormV3FusedBatchNormV3.model/residual_block/conv2d_19/Conv2D:output:0Bmodel/residual_block/batch_normalization_18/ReadVariableOp:value:0Dmodel/residual_block/batch_normalization_18/ReadVariableOp_1:value:0Smodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0Umodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
model/residual_block/add/addAddV2@model/residual_block/batch_normalization_18/FusedBatchNormV3:y:09model/conv2__block/leaky_re_lu_17/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������@@@�
-model/residual_block/leaky_re_lu_19/LeakyRelu	LeakyRelu model/residual_block/add/add:z:0*/
_output_shapes
:���������@@@�
$model/conv2d_7/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
model/conv2d_7/Conv2DConv2D;model/residual_block/leaky_re_lu_19/LeakyRelu:activations:0,model/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
%model/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/conv2d_7/BiasAddBiasAddmodel/conv2d_7/Conv2D:output:0-model/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@v
model/conv2d_7/TanhTanhmodel/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@n
IdentityIdentitymodel/conv2d_7/Tanh:y:0^NoOp*
T0*/
_output_shapes
:���������@@�

Identity_1Identity)model/custom_attention/Reshape_2:output:0^NoOp*
T0*/
_output_shapes
:���������@@n

Identity_2Identitymodel/dense/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOpJ^model/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOpL^model/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_19^model/conv2__block/batch_normalization_16/ReadVariableOp;^model/conv2__block/batch_normalization_16/ReadVariableOp_13^model/conv2__block/conv2d_17/Conv2D/ReadVariableOpT^model/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOpV^model/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1C^model/conv2_transpose__block/batch_normalization_12/ReadVariableOpE^model/conv2_transpose__block/batch_normalization_12/ReadVariableOp_1=^model/conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOpV^model/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOpX^model/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1E^model/conv2_transpose__block_1/batch_normalization_13/ReadVariableOpG^model/conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1?^model/conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOpV^model/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpX^model/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1E^model/conv2_transpose__block_2/batch_normalization_14/ReadVariableOpG^model/conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1?^model/conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOpV^model/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpX^model/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1E^model/conv2_transpose__block_3/batch_normalization_15/ReadVariableOpG^model/conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1?^model/conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp&^model/conv2d_7/BiasAdd/ReadVariableOp%^model/conv2d_7/Conv2D/ReadVariableOp7^model/custom_attention/dense_10/BiasAdd/ReadVariableOp9^model/custom_attention/dense_10/Tensordot/ReadVariableOp7^model/custom_attention/dense_11/BiasAdd/ReadVariableOp9^model/custom_attention/dense_11/Tensordot/ReadVariableOp7^model/custom_attention/dense_12/BiasAdd/ReadVariableOp9^model/custom_attention/dense_12/Tensordot/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOpL^model/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOpN^model/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1;^model/residual_block/batch_normalization_17/ReadVariableOp=^model/residual_block/batch_normalization_17/ReadVariableOp_1L^model/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOpN^model/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1;^model/residual_block/batch_normalization_18/ReadVariableOp=^model/residual_block/batch_normalization_18/ReadVariableOp_15^model/residual_block/conv2d_18/Conv2D/ReadVariableOp5^model/residual_block/conv2d_19/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Imodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOpImodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2�
Kmodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Kmodel/conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12t
8model/conv2__block/batch_normalization_16/ReadVariableOp8model/conv2__block/batch_normalization_16/ReadVariableOp2x
:model/conv2__block/batch_normalization_16/ReadVariableOp_1:model/conv2__block/batch_normalization_16/ReadVariableOp_12h
2model/conv2__block/conv2d_17/Conv2D/ReadVariableOp2model/conv2__block/conv2d_17/Conv2D/ReadVariableOp2�
Smodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOpSmodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2�
Umodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Umodel/conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12�
Bmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOpBmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOp2�
Dmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOp_1Dmodel/conv2_transpose__block/batch_normalization_12/ReadVariableOp_12|
<model/conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp<model/conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp2�
Umodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOpUmodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2�
Wmodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Wmodel/conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12�
Dmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOpDmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOp2�
Fmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1Fmodel/conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_12�
>model/conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp>model/conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp2�
Umodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpUmodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2�
Wmodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Wmodel/conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12�
Dmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOpDmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOp2�
Fmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1Fmodel/conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_12�
>model/conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp>model/conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp2�
Umodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpUmodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2�
Wmodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Wmodel/conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12�
Dmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOpDmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOp2�
Fmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1Fmodel/conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_12�
>model/conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp>model/conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp2N
%model/conv2d_7/BiasAdd/ReadVariableOp%model/conv2d_7/BiasAdd/ReadVariableOp2L
$model/conv2d_7/Conv2D/ReadVariableOp$model/conv2d_7/Conv2D/ReadVariableOp2p
6model/custom_attention/dense_10/BiasAdd/ReadVariableOp6model/custom_attention/dense_10/BiasAdd/ReadVariableOp2t
8model/custom_attention/dense_10/Tensordot/ReadVariableOp8model/custom_attention/dense_10/Tensordot/ReadVariableOp2p
6model/custom_attention/dense_11/BiasAdd/ReadVariableOp6model/custom_attention/dense_11/BiasAdd/ReadVariableOp2t
8model/custom_attention/dense_11/Tensordot/ReadVariableOp8model/custom_attention/dense_11/Tensordot/ReadVariableOp2p
6model/custom_attention/dense_12/BiasAdd/ReadVariableOp6model/custom_attention/dense_12/BiasAdd/ReadVariableOp2t
8model/custom_attention/dense_12/Tensordot/ReadVariableOp8model/custom_attention/dense_12/Tensordot/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2�
Kmodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOpKmodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2�
Mmodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Mmodel/residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12x
:model/residual_block/batch_normalization_17/ReadVariableOp:model/residual_block/batch_normalization_17/ReadVariableOp2|
<model/residual_block/batch_normalization_17/ReadVariableOp_1<model/residual_block/batch_normalization_17/ReadVariableOp_12�
Kmodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOpKmodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp2�
Mmodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1Mmodel/residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12x
:model/residual_block/batch_normalization_18/ReadVariableOp:model/residual_block/batch_normalization_18/ReadVariableOp2|
<model/residual_block/batch_normalization_18/ReadVariableOp_1<model/residual_block/batch_normalization_18/ReadVariableOp_12l
4model/residual_block/conv2d_18/Conv2D/ReadVariableOp4model/residual_block/conv2d_18/Conv2D/ReadVariableOp2l
4model/residual_block/conv2d_19/Conv2D/ReadVariableOp4model/residual_block/conv2d_19/Conv2D/ReadVariableOp:P L
'
_output_shapes
:���������d
!
_user_specified_name	input_2:UQ
,
_output_shapes
:����������
!
_user_specified_name	input_1
��
�6
B__inference_model_layer_call_and_return_conditional_losses_1231311
inputs_0
inputs_18
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��@6
'dense_1_biasadd_readvariableop_resource:	�@[
?conv2_transpose__block_conv2d_13_conv2d_readvariableop_resource:��T
Econv2_transpose__block_batch_normalization_12_readvariableop_resource:	�V
Gconv2_transpose__block_batch_normalization_12_readvariableop_1_resource:	�e
Vconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	�g
Xconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	�]
Aconv2_transpose__block_1_conv2d_14_conv2d_readvariableop_resource:��V
Gconv2_transpose__block_1_batch_normalization_13_readvariableop_resource:	�X
Iconv2_transpose__block_1_batch_normalization_13_readvariableop_1_resource:	�g
Xconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	�i
Zconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	�]
Aconv2_transpose__block_2_conv2d_15_conv2d_readvariableop_resource:��V
Gconv2_transpose__block_2_batch_normalization_14_readvariableop_resource:	�X
Iconv2_transpose__block_2_batch_normalization_14_readvariableop_1_resource:	�g
Xconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	�i
Zconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	�\
Aconv2_transpose__block_3_conv2d_16_conv2d_readvariableop_resource:�@U
Gconv2_transpose__block_3_batch_normalization_15_readvariableop_resource:@W
Iconv2_transpose__block_3_batch_normalization_15_readvariableop_1_resource:@f
Xconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@h
Zconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@M
;custom_attention_dense_10_tensordot_readvariableop_resource:@@G
9custom_attention_dense_10_biasadd_readvariableop_resource:@N
;custom_attention_dense_11_tensordot_readvariableop_resource:	�@G
9custom_attention_dense_11_biasadd_readvariableop_resource:@N
;custom_attention_dense_12_tensordot_readvariableop_resource:	�@G
9custom_attention_dense_12_biasadd_readvariableop_resource:@P
5conv2__block_conv2d_17_conv2d_readvariableop_resource:�@I
;conv2__block_batch_normalization_16_readvariableop_resource:@K
=conv2__block_batch_normalization_16_readvariableop_1_resource:@Z
Lconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@\
Nconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@Q
7residual_block_conv2d_18_conv2d_readvariableop_resource:@@K
=residual_block_batch_normalization_17_readvariableop_resource:@M
?residual_block_batch_normalization_17_readvariableop_1_resource:@\
Nresidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@^
Presidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@Q
7residual_block_conv2d_19_conv2d_readvariableop_resource:@@K
=residual_block_batch_normalization_18_readvariableop_resource:@M
?residual_block_batch_normalization_18_readvariableop_1_resource:@\
Nresidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_resource:@^
Presidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_7_conv2d_readvariableop_resource:@6
(conv2d_7_biasadd_readvariableop_resource:
identity

identity_1

identity_2��Cconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp�Econv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1�2conv2__block/batch_normalization_16/ReadVariableOp�4conv2__block/batch_normalization_16/ReadVariableOp_1�,conv2__block/conv2d_17/Conv2D/ReadVariableOp�Mconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp�Oconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1�<conv2_transpose__block/batch_normalization_12/ReadVariableOp�>conv2_transpose__block/batch_normalization_12/ReadVariableOp_1�6conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp�Oconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp�Qconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1�>conv2_transpose__block_1/batch_normalization_13/ReadVariableOp�@conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1�8conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp�Oconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp�Qconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1�>conv2_transpose__block_2/batch_normalization_14/ReadVariableOp�@conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1�8conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp�Oconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp�Qconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1�>conv2_transpose__block_3/batch_normalization_15/ReadVariableOp�@conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1�8conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�0custom_attention/dense_10/BiasAdd/ReadVariableOp�2custom_attention/dense_10/Tensordot/ReadVariableOp�0custom_attention/dense_11/BiasAdd/ReadVariableOp�2custom_attention/dense_11/Tensordot/ReadVariableOp�0custom_attention/dense_12/BiasAdd/ReadVariableOp�2custom_attention/dense_12/Tensordot/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�Eresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp�Gresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1�4residual_block/batch_normalization_17/ReadVariableOp�6residual_block/batch_normalization_17/ReadVariableOp_1�Eresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp�Gresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1�4residual_block/batch_normalization_18/ReadVariableOp�6residual_block/batch_normalization_18/ReadVariableOp_1�.residual_block/conv2d_18/Conv2D/ReadVariableOp�.residual_block/conv2d_19/Conv2D/ReadVariableOp�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_mask*
shrink_axis_mask�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul/tf.__operators__.getitem/strided_slice:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        m
lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �   m
lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lambda/strided_sliceStridedSlicedense/BiasAdd:output:0#lambda/strided_slice/stack:output:0%lambda/strided_slice/stack_1:output:0%lambda/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maskm
lambda/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    �   o
lambda/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        o
lambda/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lambda/strided_slice_1StridedSlicedense/BiasAdd:output:0%lambda/strided_slice_1/stack:output:0'lambda/strided_slice_1/stack_1:output:0'lambda/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*

begin_mask*
end_maske

lambda/ExpExplambda/strided_slice_1:output:0*
T0*(
_output_shapes
:����������Y
lambda/ShapeShapelambda/strided_slice:output:0*
T0*
_output_shapes
:�
)lambda/random_normal/RandomStandardNormalRandomStandardNormallambda/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0*
seed���)*
seed2����
lambda/random_normal/mulMul2lambda/random_normal/RandomStandardNormal:output:0lambda/Exp:y:0*
T0*(
_output_shapes
:�����������
lambda/random_normalAddV2lambda/random_normal/mul:z:0lambda/strided_slice:output:0*
T0*(
_output_shapes
:����������Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2inputs_0lambda/random_normal:z:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
dense_1/MatMulMatMulconcatenate/concat:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������@W
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:����������}
,conv2_transpose__block/up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
.conv2_transpose__block/up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
*conv2_transpose__block/up_sampling2d_5/mulMul5conv2_transpose__block/up_sampling2d_5/Const:output:07conv2_transpose__block/up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:�
<conv2_transpose__block/up_sampling2d_5/resize/ResizeBilinearResizeBilinearreshape/Reshape:output:0.conv2_transpose__block/up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
6conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOpReadVariableOp?conv2_transpose__block_conv2d_13_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
'conv2_transpose__block/conv2d_13/Conv2DConv2DMconv2_transpose__block/up_sampling2d_5/resize/ResizeBilinear:resized_images:0>conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
<conv2_transpose__block/batch_normalization_12/ReadVariableOpReadVariableOpEconv2_transpose__block_batch_normalization_12_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>conv2_transpose__block/batch_normalization_12/ReadVariableOp_1ReadVariableOpGconv2_transpose__block_batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Mconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpVconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Oconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpXconv2_transpose__block_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
>conv2_transpose__block/batch_normalization_12/FusedBatchNormV3FusedBatchNormV30conv2_transpose__block/conv2d_13/Conv2D:output:0Dconv2_transpose__block/batch_normalization_12/ReadVariableOp:value:0Fconv2_transpose__block/batch_normalization_12/ReadVariableOp_1:value:0Uconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Wconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
/conv2_transpose__block/leaky_re_lu_13/LeakyRelu	LeakyReluBconv2_transpose__block/batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:����������
.conv2_transpose__block_1/up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"      �
0conv2_transpose__block_1/up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
,conv2_transpose__block_1/up_sampling2d_6/mulMul7conv2_transpose__block_1/up_sampling2d_6/Const:output:09conv2_transpose__block_1/up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:�
>conv2_transpose__block_1/up_sampling2d_6/resize/ResizeBilinearResizeBilinear=conv2_transpose__block/leaky_re_lu_13/LeakyRelu:activations:00conv2_transpose__block_1/up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:����������*
half_pixel_centers(�
8conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOpAconv2_transpose__block_1_conv2d_14_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
)conv2_transpose__block_1/conv2d_14/Conv2DConv2DOconv2_transpose__block_1/up_sampling2d_6/resize/ResizeBilinear:resized_images:0@conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
>conv2_transpose__block_1/batch_normalization_13/ReadVariableOpReadVariableOpGconv2_transpose__block_1_batch_normalization_13_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1ReadVariableOpIconv2_transpose__block_1_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Oconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpXconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Qconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZconv2_transpose__block_1_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
@conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3FusedBatchNormV32conv2_transpose__block_1/conv2d_14/Conv2D:output:0Fconv2_transpose__block_1/batch_normalization_13/ReadVariableOp:value:0Hconv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1:value:0Wconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Yconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
1conv2_transpose__block_1/leaky_re_lu_14/LeakyRelu	LeakyReluDconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:����������
.conv2_transpose__block_2/up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      �
0conv2_transpose__block_2/up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
,conv2_transpose__block_2/up_sampling2d_7/mulMul7conv2_transpose__block_2/up_sampling2d_7/Const:output:09conv2_transpose__block_2/up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:�
>conv2_transpose__block_2/up_sampling2d_7/resize/ResizeBilinearResizeBilinear?conv2_transpose__block_1/leaky_re_lu_14/LeakyRelu:activations:00conv2_transpose__block_2/up_sampling2d_7/mul:z:0*
T0*0
_output_shapes
:���������  �*
half_pixel_centers(�
8conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOpReadVariableOpAconv2_transpose__block_2_conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
)conv2_transpose__block_2/conv2d_15/Conv2DConv2DOconv2_transpose__block_2/up_sampling2d_7/resize/ResizeBilinear:resized_images:0@conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
>conv2_transpose__block_2/batch_normalization_14/ReadVariableOpReadVariableOpGconv2_transpose__block_2_batch_normalization_14_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1ReadVariableOpIconv2_transpose__block_2_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Oconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpXconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Qconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZconv2_transpose__block_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
@conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3FusedBatchNormV32conv2_transpose__block_2/conv2d_15/Conv2D:output:0Fconv2_transpose__block_2/batch_normalization_14/ReadVariableOp:value:0Hconv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1:value:0Wconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Yconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������  �:�:�:�:�:*
epsilon%o�:*
is_training( �
1conv2_transpose__block_2/leaky_re_lu_15/LeakyRelu	LeakyReluDconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:���������  �
.conv2_transpose__block_3/up_sampling2d_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"        �
0conv2_transpose__block_3/up_sampling2d_8/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
,conv2_transpose__block_3/up_sampling2d_8/mulMul7conv2_transpose__block_3/up_sampling2d_8/Const:output:09conv2_transpose__block_3/up_sampling2d_8/Const_1:output:0*
T0*
_output_shapes
:�
>conv2_transpose__block_3/up_sampling2d_8/resize/ResizeBilinearResizeBilinear?conv2_transpose__block_2/leaky_re_lu_15/LeakyRelu:activations:00conv2_transpose__block_3/up_sampling2d_8/mul:z:0*
T0*0
_output_shapes
:���������@@�*
half_pixel_centers(�
8conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOpReadVariableOpAconv2_transpose__block_3_conv2d_16_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
)conv2_transpose__block_3/conv2d_16/Conv2DConv2DOconv2_transpose__block_3/up_sampling2d_8/resize/ResizeBilinear:resized_images:0@conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
>conv2_transpose__block_3/batch_normalization_15/ReadVariableOpReadVariableOpGconv2_transpose__block_3_batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype0�
@conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1ReadVariableOpIconv2_transpose__block_3_batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Oconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpXconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Qconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZconv2_transpose__block_3_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
@conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3FusedBatchNormV32conv2_transpose__block_3/conv2d_16/Conv2D:output:0Fconv2_transpose__block_3/batch_normalization_15/ReadVariableOp:value:0Hconv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1:value:0Wconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Yconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
1conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu	LeakyReluDconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinputs_17tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
custom_attention/ShapeShape?conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$custom_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&custom_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&custom_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
custom_attention/strided_sliceStridedSlicecustom_attention/Shape:output:0-custom_attention/strided_slice/stack:output:0/custom_attention/strided_slice/stack_1:output:0/custom_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&custom_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(custom_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(custom_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 custom_attention/strided_slice_1StridedSlicecustom_attention/Shape:output:0/custom_attention/strided_slice_1/stack:output:01custom_attention/strided_slice_1/stack_1:output:01custom_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
custom_attention/Shape_1Shape1tf.__operators__.getitem_1/strided_slice:output:0*
T0*
_output_shapes
:p
&custom_attention/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(custom_attention/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(custom_attention/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 custom_attention/strided_slice_2StridedSlice!custom_attention/Shape_1:output:0/custom_attention/strided_slice_2/stack:output:01custom_attention/strided_slice_2/stack_1:output:01custom_attention/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
custom_attention/mulMul)custom_attention/strided_slice_1:output:0)custom_attention/strided_slice_1:output:0*
T0*
_output_shapes
: b
 custom_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
custom_attention/Reshape/shapePack'custom_attention/strided_slice:output:0custom_attention/mul:z:0)custom_attention/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
custom_attention/ReshapeReshape?conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu:activations:0'custom_attention/Reshape/shape:output:0*
T0*4
_output_shapes"
 :������������������@�
2custom_attention/dense_10/Tensordot/ReadVariableOpReadVariableOp;custom_attention_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0r
(custom_attention/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(custom_attention/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       z
)custom_attention/dense_10/Tensordot/ShapeShape!custom_attention/Reshape:output:0*
T0*
_output_shapes
:s
1custom_attention/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_10/Tensordot/GatherV2GatherV22custom_attention/dense_10/Tensordot/Shape:output:01custom_attention/dense_10/Tensordot/free:output:0:custom_attention/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3custom_attention/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.custom_attention/dense_10/Tensordot/GatherV2_1GatherV22custom_attention/dense_10/Tensordot/Shape:output:01custom_attention/dense_10/Tensordot/axes:output:0<custom_attention/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)custom_attention/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(custom_attention/dense_10/Tensordot/ProdProd5custom_attention/dense_10/Tensordot/GatherV2:output:02custom_attention/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+custom_attention/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*custom_attention/dense_10/Tensordot/Prod_1Prod7custom_attention/dense_10/Tensordot/GatherV2_1:output:04custom_attention/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/custom_attention/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*custom_attention/dense_10/Tensordot/concatConcatV21custom_attention/dense_10/Tensordot/free:output:01custom_attention/dense_10/Tensordot/axes:output:08custom_attention/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
)custom_attention/dense_10/Tensordot/stackPack1custom_attention/dense_10/Tensordot/Prod:output:03custom_attention/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
-custom_attention/dense_10/Tensordot/transpose	Transpose!custom_attention/Reshape:output:03custom_attention/dense_10/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������@�
+custom_attention/dense_10/Tensordot/ReshapeReshape1custom_attention/dense_10/Tensordot/transpose:y:02custom_attention/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
*custom_attention/dense_10/Tensordot/MatMulMatMul4custom_attention/dense_10/Tensordot/Reshape:output:0:custom_attention/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
+custom_attention/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@s
1custom_attention/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_10/Tensordot/concat_1ConcatV25custom_attention/dense_10/Tensordot/GatherV2:output:04custom_attention/dense_10/Tensordot/Const_2:output:0:custom_attention/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
#custom_attention/dense_10/TensordotReshape4custom_attention/dense_10/Tensordot/MatMul:product:05custom_attention/dense_10/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������@�
0custom_attention/dense_10/BiasAdd/ReadVariableOpReadVariableOp9custom_attention_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!custom_attention/dense_10/BiasAddBiasAdd,custom_attention/dense_10/Tensordot:output:08custom_attention/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������@Y
custom_attention/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :@o
custom_attention/CastCast custom_attention/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: [
custom_attention/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?x
custom_attention/powPowcustom_attention/Cast:y:0custom_attention/pow/y:output:0*
T0*
_output_shapes
: �
custom_attention/truedivRealDiv*custom_attention/dense_10/BiasAdd:output:0custom_attention/pow:z:0*
T0*4
_output_shapes"
 :������������������@�
2custom_attention/dense_11/Tensordot/ReadVariableOpReadVariableOp;custom_attention_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0r
(custom_attention/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(custom_attention/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
)custom_attention/dense_11/Tensordot/ShapeShape1tf.__operators__.getitem_1/strided_slice:output:0*
T0*
_output_shapes
:s
1custom_attention/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_11/Tensordot/GatherV2GatherV22custom_attention/dense_11/Tensordot/Shape:output:01custom_attention/dense_11/Tensordot/free:output:0:custom_attention/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3custom_attention/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.custom_attention/dense_11/Tensordot/GatherV2_1GatherV22custom_attention/dense_11/Tensordot/Shape:output:01custom_attention/dense_11/Tensordot/axes:output:0<custom_attention/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)custom_attention/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(custom_attention/dense_11/Tensordot/ProdProd5custom_attention/dense_11/Tensordot/GatherV2:output:02custom_attention/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+custom_attention/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*custom_attention/dense_11/Tensordot/Prod_1Prod7custom_attention/dense_11/Tensordot/GatherV2_1:output:04custom_attention/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/custom_attention/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*custom_attention/dense_11/Tensordot/concatConcatV21custom_attention/dense_11/Tensordot/free:output:01custom_attention/dense_11/Tensordot/axes:output:08custom_attention/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
)custom_attention/dense_11/Tensordot/stackPack1custom_attention/dense_11/Tensordot/Prod:output:03custom_attention/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
-custom_attention/dense_11/Tensordot/transpose	Transpose1tf.__operators__.getitem_1/strided_slice:output:03custom_attention/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
+custom_attention/dense_11/Tensordot/ReshapeReshape1custom_attention/dense_11/Tensordot/transpose:y:02custom_attention/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
*custom_attention/dense_11/Tensordot/MatMulMatMul4custom_attention/dense_11/Tensordot/Reshape:output:0:custom_attention/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
+custom_attention/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@s
1custom_attention/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_11/Tensordot/concat_1ConcatV25custom_attention/dense_11/Tensordot/GatherV2:output:04custom_attention/dense_11/Tensordot/Const_2:output:0:custom_attention/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
#custom_attention/dense_11/TensordotReshape4custom_attention/dense_11/Tensordot/MatMul:product:05custom_attention/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
0custom_attention/dense_11/BiasAdd/ReadVariableOpReadVariableOp9custom_attention_dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!custom_attention/dense_11/BiasAddBiasAdd,custom_attention/dense_11/Tensordot:output:08custom_attention/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
2custom_attention/dense_12/Tensordot/ReadVariableOpReadVariableOp;custom_attention_dense_12_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0r
(custom_attention/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(custom_attention/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
)custom_attention/dense_12/Tensordot/ShapeShape1tf.__operators__.getitem_1/strided_slice:output:0*
T0*
_output_shapes
:s
1custom_attention/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_12/Tensordot/GatherV2GatherV22custom_attention/dense_12/Tensordot/Shape:output:01custom_attention/dense_12/Tensordot/free:output:0:custom_attention/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3custom_attention/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.custom_attention/dense_12/Tensordot/GatherV2_1GatherV22custom_attention/dense_12/Tensordot/Shape:output:01custom_attention/dense_12/Tensordot/axes:output:0<custom_attention/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)custom_attention/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(custom_attention/dense_12/Tensordot/ProdProd5custom_attention/dense_12/Tensordot/GatherV2:output:02custom_attention/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+custom_attention/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*custom_attention/dense_12/Tensordot/Prod_1Prod7custom_attention/dense_12/Tensordot/GatherV2_1:output:04custom_attention/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/custom_attention/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*custom_attention/dense_12/Tensordot/concatConcatV21custom_attention/dense_12/Tensordot/free:output:01custom_attention/dense_12/Tensordot/axes:output:08custom_attention/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
)custom_attention/dense_12/Tensordot/stackPack1custom_attention/dense_12/Tensordot/Prod:output:03custom_attention/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
-custom_attention/dense_12/Tensordot/transpose	Transpose1tf.__operators__.getitem_1/strided_slice:output:03custom_attention/dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
+custom_attention/dense_12/Tensordot/ReshapeReshape1custom_attention/dense_12/Tensordot/transpose:y:02custom_attention/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
*custom_attention/dense_12/Tensordot/MatMulMatMul4custom_attention/dense_12/Tensordot/Reshape:output:0:custom_attention/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
+custom_attention/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@s
1custom_attention/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,custom_attention/dense_12/Tensordot/concat_1ConcatV25custom_attention/dense_12/Tensordot/GatherV2:output:04custom_attention/dense_12/Tensordot/Const_2:output:0:custom_attention/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
#custom_attention/dense_12/TensordotReshape4custom_attention/dense_12/Tensordot/MatMul:product:05custom_attention/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
0custom_attention/dense_12/BiasAdd/ReadVariableOpReadVariableOp9custom_attention_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!custom_attention/dense_12/BiasAddBiasAdd,custom_attention/dense_12/Tensordot:output:08custom_attention/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
custom_attention/einsum/EinsumEinsumcustom_attention/truediv:z:0*custom_attention/dense_11/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������*
equationijk,ick->ijc�
custom_attention/SoftmaxSoftmax'custom_attention/einsum/Einsum:output:0*
T0*4
_output_shapes"
 :�������������������
 custom_attention/einsum_1/EinsumEinsum"custom_attention/Softmax:softmax:0*custom_attention/dense_12/BiasAdd:output:0*
N*
T0*4
_output_shapes"
 :������������������@*
equationijk,ikc->ijc�
custom_attention/Reshape_1Reshape)custom_attention/einsum_1/Einsum:output:0custom_attention/Shape:output:0*
T0*/
_output_shapes
:���������@@@g
custom_attention/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
custom_attention/concatConcatV2?conv2_transpose__block_3/leaky_re_lu_16/LeakyRelu:activations:0#custom_attention/Reshape_1:output:0%custom_attention/concat/axis:output:0*
N*
T0*0
_output_shapes
:���������@@��
 custom_attention/Reshape_2/shapePack'custom_attention/strided_slice:output:0)custom_attention/strided_slice_1:output:0)custom_attention/strided_slice_1:output:0)custom_attention/strided_slice_2:output:0*
N*
T0*
_output_shapes
:�
custom_attention/Reshape_2Reshape"custom_attention/Softmax:softmax:0)custom_attention/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@@�
,conv2__block/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5conv2__block_conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2__block/conv2d_17/Conv2DConv2D custom_attention/concat:output:04conv2__block/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
2conv2__block/batch_normalization_16/ReadVariableOpReadVariableOp;conv2__block_batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0�
4conv2__block/batch_normalization_16/ReadVariableOp_1ReadVariableOp=conv2__block_batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Cconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Econv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv2__block_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
4conv2__block/batch_normalization_16/FusedBatchNormV3FusedBatchNormV3&conv2__block/conv2d_17/Conv2D:output:0:conv2__block/batch_normalization_16/ReadVariableOp:value:0<conv2__block/batch_normalization_16/ReadVariableOp_1:value:0Kconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0Mconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
%conv2__block/leaky_re_lu_17/LeakyRelu	LeakyRelu8conv2__block/batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
.residual_block/conv2d_18/Conv2D/ReadVariableOpReadVariableOp7residual_block_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
residual_block/conv2d_18/Conv2DConv2D3conv2__block/leaky_re_lu_17/LeakyRelu:activations:06residual_block/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
4residual_block/batch_normalization_17/ReadVariableOpReadVariableOp=residual_block_batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype0�
6residual_block/batch_normalization_17/ReadVariableOp_1ReadVariableOp?residual_block_batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Eresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOpNresidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Gresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPresidual_block_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6residual_block/batch_normalization_17/FusedBatchNormV3FusedBatchNormV3(residual_block/conv2d_18/Conv2D:output:0<residual_block/batch_normalization_17/ReadVariableOp:value:0>residual_block/batch_normalization_17/ReadVariableOp_1:value:0Mresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0Oresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
'residual_block/leaky_re_lu_18/LeakyRelu	LeakyRelu:residual_block/batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:���������@@@�
.residual_block/conv2d_19/Conv2D/ReadVariableOpReadVariableOp7residual_block_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
residual_block/conv2d_19/Conv2DConv2D5residual_block/leaky_re_lu_18/LeakyRelu:activations:06residual_block/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@@*
paddingSAME*
strides
�
4residual_block/batch_normalization_18/ReadVariableOpReadVariableOp=residual_block_batch_normalization_18_readvariableop_resource*
_output_shapes
:@*
dtype0�
6residual_block/batch_normalization_18/ReadVariableOp_1ReadVariableOp?residual_block_batch_normalization_18_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Eresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOpNresidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Gresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPresidual_block_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6residual_block/batch_normalization_18/FusedBatchNormV3FusedBatchNormV3(residual_block/conv2d_19/Conv2D:output:0<residual_block/batch_normalization_18/ReadVariableOp:value:0>residual_block/batch_normalization_18/ReadVariableOp_1:value:0Mresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0Oresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@@:@:@:@:@:*
epsilon%o�:*
is_training( �
residual_block/add/addAddV2:residual_block/batch_normalization_18/FusedBatchNormV3:y:03conv2__block/leaky_re_lu_17/LeakyRelu:activations:0*
T0*/
_output_shapes
:���������@@@�
'residual_block/leaky_re_lu_19/LeakyRelu	LeakyReluresidual_block/add/add:z:0*/
_output_shapes
:���������@@@�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_7/Conv2DConv2D5residual_block/leaky_re_lu_19/LeakyRelu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@j
conv2d_7/TanhTanhconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@h
IdentityIdentityconv2d_7/Tanh:y:0^NoOp*
T0*/
_output_shapes
:���������@@h

Identity_1Identitydense/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������|

Identity_2Identity#custom_attention/Reshape_2:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOpD^conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOpF^conv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_13^conv2__block/batch_normalization_16/ReadVariableOp5^conv2__block/batch_normalization_16/ReadVariableOp_1-^conv2__block/conv2d_17/Conv2D/ReadVariableOpN^conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOpP^conv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1=^conv2_transpose__block/batch_normalization_12/ReadVariableOp?^conv2_transpose__block/batch_normalization_12/ReadVariableOp_17^conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOpP^conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOpR^conv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?^conv2_transpose__block_1/batch_normalization_13/ReadVariableOpA^conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_19^conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOpP^conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpR^conv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?^conv2_transpose__block_2/batch_normalization_14/ReadVariableOpA^conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_19^conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOpP^conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpR^conv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?^conv2_transpose__block_3/batch_normalization_15/ReadVariableOpA^conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_19^conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp1^custom_attention/dense_10/BiasAdd/ReadVariableOp3^custom_attention/dense_10/Tensordot/ReadVariableOp1^custom_attention/dense_11/BiasAdd/ReadVariableOp3^custom_attention/dense_11/Tensordot/ReadVariableOp1^custom_attention/dense_12/BiasAdd/ReadVariableOp3^custom_attention/dense_12/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOpF^residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOpH^residual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_15^residual_block/batch_normalization_17/ReadVariableOp7^residual_block/batch_normalization_17/ReadVariableOp_1F^residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOpH^residual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_15^residual_block/batch_normalization_18/ReadVariableOp7^residual_block/batch_normalization_18/ReadVariableOp_1/^residual_block/conv2d_18/Conv2D/ReadVariableOp/^residual_block/conv2d_19/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Cconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOpCconv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2�
Econv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Econv2__block/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12h
2conv2__block/batch_normalization_16/ReadVariableOp2conv2__block/batch_normalization_16/ReadVariableOp2l
4conv2__block/batch_normalization_16/ReadVariableOp_14conv2__block/batch_normalization_16/ReadVariableOp_12\
,conv2__block/conv2d_17/Conv2D/ReadVariableOp,conv2__block/conv2d_17/Conv2D/ReadVariableOp2�
Mconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOpMconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2�
Oconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Oconv2_transpose__block/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12|
<conv2_transpose__block/batch_normalization_12/ReadVariableOp<conv2_transpose__block/batch_normalization_12/ReadVariableOp2�
>conv2_transpose__block/batch_normalization_12/ReadVariableOp_1>conv2_transpose__block/batch_normalization_12/ReadVariableOp_12p
6conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp6conv2_transpose__block/conv2d_13/Conv2D/ReadVariableOp2�
Oconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOpOconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2�
Qconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Qconv2_transpose__block_1/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12�
>conv2_transpose__block_1/batch_normalization_13/ReadVariableOp>conv2_transpose__block_1/batch_normalization_13/ReadVariableOp2�
@conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_1@conv2_transpose__block_1/batch_normalization_13/ReadVariableOp_12t
8conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp8conv2_transpose__block_1/conv2d_14/Conv2D/ReadVariableOp2�
Oconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpOconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2�
Qconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Qconv2_transpose__block_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12�
>conv2_transpose__block_2/batch_normalization_14/ReadVariableOp>conv2_transpose__block_2/batch_normalization_14/ReadVariableOp2�
@conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_1@conv2_transpose__block_2/batch_normalization_14/ReadVariableOp_12t
8conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp8conv2_transpose__block_2/conv2d_15/Conv2D/ReadVariableOp2�
Oconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOpOconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2�
Qconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Qconv2_transpose__block_3/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12�
>conv2_transpose__block_3/batch_normalization_15/ReadVariableOp>conv2_transpose__block_3/batch_normalization_15/ReadVariableOp2�
@conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_1@conv2_transpose__block_3/batch_normalization_15/ReadVariableOp_12t
8conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp8conv2_transpose__block_3/conv2d_16/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2d
0custom_attention/dense_10/BiasAdd/ReadVariableOp0custom_attention/dense_10/BiasAdd/ReadVariableOp2h
2custom_attention/dense_10/Tensordot/ReadVariableOp2custom_attention/dense_10/Tensordot/ReadVariableOp2d
0custom_attention/dense_11/BiasAdd/ReadVariableOp0custom_attention/dense_11/BiasAdd/ReadVariableOp2h
2custom_attention/dense_11/Tensordot/ReadVariableOp2custom_attention/dense_11/Tensordot/ReadVariableOp2d
0custom_attention/dense_12/BiasAdd/ReadVariableOp0custom_attention/dense_12/BiasAdd/ReadVariableOp2h
2custom_attention/dense_12/Tensordot/ReadVariableOp2custom_attention/dense_12/Tensordot/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2�
Eresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOpEresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2�
Gresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Gresidual_block/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12l
4residual_block/batch_normalization_17/ReadVariableOp4residual_block/batch_normalization_17/ReadVariableOp2p
6residual_block/batch_normalization_17/ReadVariableOp_16residual_block/batch_normalization_17/ReadVariableOp_12�
Eresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOpEresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp2�
Gresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1Gresidual_block/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12l
4residual_block/batch_normalization_18/ReadVariableOp4residual_block/batch_normalization_18/ReadVariableOp2p
6residual_block/batch_normalization_18/ReadVariableOp_16residual_block/batch_normalization_18/ReadVariableOp_12`
.residual_block/conv2d_18/Conv2D/ReadVariableOp.residual_block/conv2d_18/Conv2D/ReadVariableOp2`
.residual_block/conv2d_19/Conv2D/ReadVariableOp.residual_block/conv2d_19/Conv2D/ReadVariableOp:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1229137

inputsD
(conv2d_15_conv2d_readvariableop_resource:��=
.batch_normalization_14_readvariableop_resource:	�?
0batch_normalization_14_readvariableop_1_resource:	�N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	�
identity��6batch_normalization_14/FusedBatchNormV3/ReadVariableOp�8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_14/ReadVariableOp�'batch_normalization_14/ReadVariableOp_1�conv2d_15/Conv2D/ReadVariableOpf
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:�
%up_sampling2d_7/resize/ResizeBilinearResizeBilinearinputsup_sampling2d_7/mul:z:0*
T0*0
_output_shapes
:���������  �*
half_pixel_centers(�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_15/Conv2DConv2D6up_sampling2d_7/resize/ResizeBilinear:resized_images:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_15/Conv2D:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������  �:�:�:�:�:*
epsilon%o�:*
is_training( �
leaky_re_lu_15/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*0
_output_shapes
:���������  �~
IdentityIdentity&leaky_re_lu_15/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������  ��
NoOpNoOp7^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1 ^conv2d_15/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 2p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

h
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1228437

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_15_layer_call_fn_1232707

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1228742�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

h
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1232444

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:�
resize/ResizeBilinearResizeBilinearinputsmul:z:0*
T0*J
_output_shapes8
6:4������������������������������������*
half_pixel_centers(�
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
@
input_15
serving_default_input_1:0����������
;
input_20
serving_default_input_2:0���������dD
conv2d_78
StatefulPartitionedCall:0���������@@L
custom_attention8
StatefulPartitionedCall:1���������@@:
dense1
StatefulPartitionedCall:2����������tensorflow/serving/predict:Ƹ
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer-5
layer_with_weights-1
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
layer_with_weights-9
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
"
_tf_keras_input_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
CUP
DC2D
EBN
FLR"
_tf_keras_layer
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
MUP
NC2D
OBN
PLR"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses
WUP
XC2D
YBN
ZLR"
_tf_keras_layer
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
aUP
bC2D
cBN
dLR"
_tf_keras_layer
(
e	keras_api"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
lWQ
mWK
nWV"
_tf_keras_layer
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
uC2D
vBN
wLR"
_tf_keras_layer
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~CD1
CD2
�LR1
�LR2
�BN1
�BN2"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
!0
"1
52
63
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46"
trackable_list_wrapper
�
!0
"1
52
63
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
'__inference_model_layer_call_fn_1229539
'__inference_model_layer_call_fn_1230895
'__inference_model_layer_call_fn_1230999
'__inference_model_layer_call_fn_1230439�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
B__inference_model_layer_call_and_return_conditional_losses_1231311
B__inference_model_layer_call_and_return_conditional_losses_1231623
B__inference_model_layer_call_and_return_conditional_losses_1230562
B__inference_model_layer_call_and_return_conditional_losses_1230685�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
"__inference__wrapped_model_1228421input_2input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
-
�serving_default"
signature_map
"
_generic_user_object
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_layer_call_fn_1231632�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_layer_call_and_return_conditional_losses_1231642�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :
��2dense/kernel
:�2
dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_lambda_layer_call_fn_1231647
(__inference_lambda_layer_call_fn_1231652�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_lambda_layer_call_and_return_conditional_losses_1231669
C__inference_lambda_layer_call_and_return_conditional_losses_1231686�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_concatenate_layer_call_fn_1231692�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_concatenate_layer_call_and_return_conditional_losses_1231699�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_1_layer_call_fn_1231708�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_1_layer_call_and_return_conditional_losses_1231719�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
��@2dense_1/kernel
:�@2dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_reshape_layer_call_fn_1231724�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_reshape_layer_call_and_return_conditional_losses_1231738�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_conv2_transpose__block_layer_call_fn_1231753
8__inference_conv2_transpose__block_layer_call_fn_1231768�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1231794
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1231820�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
:__inference_conv2_transpose__block_1_layer_call_fn_1231835
:__inference_conv2_transpose__block_1_layer_call_fn_1231850�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1231876
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1231902�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
:__inference_conv2_transpose__block_2_layer_call_fn_1231917
:__inference_conv2_transpose__block_2_layer_call_fn_1231932�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1231958
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1231984�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
:__inference_conv2_transpose__block_3_layer_call_fn_1231999
:__inference_conv2_transpose__block_3_layer_call_fn_1232014�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1232040
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1232066�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_generic_user_object
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_custom_attention_layer_call_fn_1232086�
���
FullArgSpec*
args"�
jself

jtensor_h
	jwords_e
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_custom_attention_layer_call_and_return_conditional_losses_1232201�
���
FullArgSpec*
args"�
jself

jtensor_h
	jwords_e
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_conv2__block_layer_call_fn_1232216
.__inference_conv2__block_layer_call_fn_1232231�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_conv2__block_layer_call_and_return_conditional_losses_1232253
I__inference_conv2__block_layer_call_and_return_conditional_losses_1232275�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
p
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9"
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_residual_block_layer_call_fn_1232300
0__inference_residual_block_layer_call_fn_1232325�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_residual_block_layer_call_and_return_conditional_losses_1232366
K__inference_residual_block_layer_call_and_return_conditional_losses_1232407�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_7_layer_call_fn_1232416�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1232427�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'@2conv2d_7/kernel
:2conv2d_7/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
C:A��2'conv2_transpose__block/conv2d_13/kernel
B:@�23conv2_transpose__block/batch_normalization_12/gamma
A:?�22conv2_transpose__block/batch_normalization_12/beta
J:H� (29conv2_transpose__block/batch_normalization_12/moving_mean
N:L� (2=conv2_transpose__block/batch_normalization_12/moving_variance
E:C��2)conv2_transpose__block_1/conv2d_14/kernel
D:B�25conv2_transpose__block_1/batch_normalization_13/gamma
C:A�24conv2_transpose__block_1/batch_normalization_13/beta
L:J� (2;conv2_transpose__block_1/batch_normalization_13/moving_mean
P:N� (2?conv2_transpose__block_1/batch_normalization_13/moving_variance
E:C��2)conv2_transpose__block_2/conv2d_15/kernel
D:B�25conv2_transpose__block_2/batch_normalization_14/gamma
C:A�24conv2_transpose__block_2/batch_normalization_14/beta
L:J� (2;conv2_transpose__block_2/batch_normalization_14/moving_mean
P:N� (2?conv2_transpose__block_2/batch_normalization_14/moving_variance
D:B�@2)conv2_transpose__block_3/conv2d_16/kernel
C:A@25conv2_transpose__block_3/batch_normalization_15/gamma
B:@@24conv2_transpose__block_3/batch_normalization_15/beta
K:I@ (2;conv2_transpose__block_3/batch_normalization_15/moving_mean
O:M@ (2?conv2_transpose__block_3/batch_normalization_15/moving_variance
2:0@@2 custom_attention/dense_10/kernel
,:*@2custom_attention/dense_10/bias
3:1	�@2 custom_attention/dense_11/kernel
,:*@2custom_attention/dense_11/bias
3:1	�@2 custom_attention/dense_12/kernel
,:*@2custom_attention/dense_12/bias
8:6�@2conv2__block/conv2d_17/kernel
7:5@2)conv2__block/batch_normalization_16/gamma
6:4@2(conv2__block/batch_normalization_16/beta
?:=@ (2/conv2__block/batch_normalization_16/moving_mean
C:A@ (23conv2__block/batch_normalization_16/moving_variance
9:7@@2residual_block/conv2d_18/kernel
9:7@@2residual_block/conv2d_19/kernel
9:7@2+residual_block/batch_normalization_17/gamma
8:6@2*residual_block/batch_normalization_17/beta
9:7@2+residual_block/batch_normalization_18/gamma
8:6@2*residual_block/batch_normalization_18/beta
A:?@ (21residual_block/batch_normalization_17/moving_mean
E:C@ (25residual_block/batch_normalization_17/moving_variance
A:?@ (21residual_block/batch_normalization_18/moving_mean
E:C@ (25residual_block/batch_normalization_18/moving_variance
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_model_layer_call_fn_1229539input_2input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_layer_call_fn_1230895inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_layer_call_fn_1230999inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_layer_call_fn_1230439input_2input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1231311inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1231623inputs/0inputs/1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1230562input_2input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1230685input_2input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_1230791input_1input_2"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_dense_layer_call_fn_1231632inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_layer_call_and_return_conditional_losses_1231642inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_lambda_layer_call_fn_1231647inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_lambda_layer_call_fn_1231652inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_lambda_layer_call_and_return_conditional_losses_1231669inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_lambda_layer_call_and_return_conditional_losses_1231686inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_concatenate_layer_call_fn_1231692inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_concatenate_layer_call_and_return_conditional_losses_1231699inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_dense_1_layer_call_fn_1231708inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_1_layer_call_and_return_conditional_losses_1231719inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_reshape_layer_call_fn_1231724inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_reshape_layer_call_and_return_conditional_losses_1231738inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
<
C0
D1
E2
F3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_conv2_transpose__block_layer_call_fn_1231753inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_conv2_transpose__block_layer_call_fn_1231768inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1231794inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1231820inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_up_sampling2d_5_layer_call_fn_1232432�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1232444�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_12_layer_call_fn_1232457
8__inference_batch_normalization_12_layer_call_fn_1232470�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1232488
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1232506�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
<
M0
N1
O2
P3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
:__inference_conv2_transpose__block_1_layer_call_fn_1231835inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
:__inference_conv2_transpose__block_1_layer_call_fn_1231850inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1231876inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1231902inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_up_sampling2d_6_layer_call_fn_1232511�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1232523�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_13_layer_call_fn_1232536
8__inference_batch_normalization_13_layer_call_fn_1232549�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1232567
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1232585�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
<
W0
X1
Y2
Z3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
:__inference_conv2_transpose__block_2_layer_call_fn_1231917inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
:__inference_conv2_transpose__block_2_layer_call_fn_1231932inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1231958inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1231984inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_up_sampling2d_7_layer_call_fn_1232590�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1232602�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_14_layer_call_fn_1232615
8__inference_batch_normalization_14_layer_call_fn_1232628�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1232646
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1232664�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
<
a0
b1
c2
d3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
:__inference_conv2_transpose__block_3_layer_call_fn_1231999inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
:__inference_conv2_transpose__block_3_layer_call_fn_1232014inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1232040inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1232066inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_up_sampling2d_8_layer_call_fn_1232669�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_up_sampling2d_8_layer_call_and_return_conditional_losses_1232681�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_15_layer_call_fn_1232694
8__inference_batch_normalization_15_layer_call_fn_1232707�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1232725
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1232743�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
5
l0
m1
n2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_custom_attention_layer_call_fn_1232086tensor_hwords_e"�
���
FullArgSpec*
args"�
jself

jtensor_h
	jwords_e
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_custom_attention_layer_call_and_return_conditional_losses_1232201tensor_hwords_e"�
���
FullArgSpec*
args"�
jself

jtensor_h
	jwords_e
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
5
u0
v1
w2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_conv2__block_layer_call_fn_1232216inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_conv2__block_layer_call_fn_1232231inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_conv2__block_layer_call_and_return_conditional_losses_1232253inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_conv2__block_layer_call_and_return_conditional_losses_1232275inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_16_layer_call_fn_1232756
8__inference_batch_normalization_16_layer_call_fn_1232769�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1232787
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1232805�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
@
�0
�1
�2
�3"
trackable_list_wrapper
N
~0
1
�2
�3
�4
�5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_residual_block_layer_call_fn_1232300inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_residual_block_layer_call_fn_1232325inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_residual_block_layer_call_and_return_conditional_losses_1232366inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_residual_block_layer_call_and_return_conditional_losses_1232407inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_17_layer_call_fn_1232818
8__inference_batch_normalization_17_layer_call_fn_1232831�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1232849
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1232867�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_18_layer_call_fn_1232880
8__inference_batch_normalization_18_layer_call_fn_1232893�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1232911
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1232929�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
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
�B�
*__inference_conv2d_7_layer_call_fn_1232416inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1232427inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_up_sampling2d_5_layer_call_fn_1232432inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1232444inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_12_layer_call_fn_1232457inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_12_layer_call_fn_1232470inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1232488inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1232506inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_up_sampling2d_6_layer_call_fn_1232511inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1232523inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_13_layer_call_fn_1232536inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_13_layer_call_fn_1232549inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1232567inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1232585inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_up_sampling2d_7_layer_call_fn_1232590inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1232602inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_14_layer_call_fn_1232615inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_14_layer_call_fn_1232628inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1232646inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1232664inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_up_sampling2d_8_layer_call_fn_1232669inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_up_sampling2d_8_layer_call_and_return_conditional_losses_1232681inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_15_layer_call_fn_1232694inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_15_layer_call_fn_1232707inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1232725inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1232743inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_16_layer_call_fn_1232756inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_16_layer_call_fn_1232769inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1232787inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1232805inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_17_layer_call_fn_1232818inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_17_layer_call_fn_1232831inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1232849inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1232867inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_18_layer_call_fn_1232880inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_18_layer_call_fn_1232893inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1232911inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1232929inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
"__inference__wrapped_model_1228421�Z!"56�������������������������������������������]�Z
S�P
N�K
!�
input_2���������d
&�#
input_1����������
� "���
6
conv2d_7*�'
conv2d_7���������@@
F
custom_attention2�/
custom_attention���������@@
)
dense �
dense�����������
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1232488�����N�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_1232506�����N�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
8__inference_batch_normalization_12_layer_call_fn_1232457�����N�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
8__inference_batch_normalization_12_layer_call_fn_1232470�����N�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1232567�����N�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_1232585�����N�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
8__inference_batch_normalization_13_layer_call_fn_1232536�����N�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
8__inference_batch_normalization_13_layer_call_fn_1232549�����N�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1232646�����N�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_1232664�����N�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
8__inference_batch_normalization_14_layer_call_fn_1232615�����N�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
8__inference_batch_normalization_14_layer_call_fn_1232628�����N�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1232725�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1232743�����M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_15_layer_call_fn_1232694�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_15_layer_call_fn_1232707�����M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1232787�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1232805�����M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_16_layer_call_fn_1232756�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_16_layer_call_fn_1232769�����M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1232849�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1232867�����M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_17_layer_call_fn_1232818�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_17_layer_call_fn_1232831�����M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1232911�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1232929�����M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
8__inference_batch_normalization_18_layer_call_fn_1232880�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
8__inference_batch_normalization_18_layer_call_fn_1232893�����M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
H__inference_concatenate_layer_call_and_return_conditional_losses_1231699�[�X
Q�N
L�I
"�
inputs/0���������d
#� 
inputs/1����������
� "&�#
�
0����������
� �
-__inference_concatenate_layer_call_fn_1231692x[�X
Q�N
L�I
"�
inputs/0���������d
#� 
inputs/1����������
� "������������
I__inference_conv2__block_layer_call_and_return_conditional_losses_1232253y
�����<�9
2�/
)�&
inputs���������@@�
p 
� "-�*
#� 
0���������@@@
� �
I__inference_conv2__block_layer_call_and_return_conditional_losses_1232275y
�����<�9
2�/
)�&
inputs���������@@�
p
� "-�*
#� 
0���������@@@
� �
.__inference_conv2__block_layer_call_fn_1232216l
�����<�9
2�/
)�&
inputs���������@@�
p 
� " ����������@@@�
.__inference_conv2__block_layer_call_fn_1232231l
�����<�9
2�/
)�&
inputs���������@@�
p
� " ����������@@@�
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1231876z
�����<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
U__inference_conv2_transpose__block_1_layer_call_and_return_conditional_losses_1231902z
�����<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
:__inference_conv2_transpose__block_1_layer_call_fn_1231835m
�����<�9
2�/
)�&
inputs����������
p 
� "!������������
:__inference_conv2_transpose__block_1_layer_call_fn_1231850m
�����<�9
2�/
)�&
inputs����������
p
� "!������������
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1231958z
�����<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0���������  �
� �
U__inference_conv2_transpose__block_2_layer_call_and_return_conditional_losses_1231984z
�����<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0���������  �
� �
:__inference_conv2_transpose__block_2_layer_call_fn_1231917m
�����<�9
2�/
)�&
inputs����������
p 
� "!����������  ��
:__inference_conv2_transpose__block_2_layer_call_fn_1231932m
�����<�9
2�/
)�&
inputs����������
p
� "!����������  ��
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1232040y
�����<�9
2�/
)�&
inputs���������  �
p 
� "-�*
#� 
0���������@@@
� �
U__inference_conv2_transpose__block_3_layer_call_and_return_conditional_losses_1232066y
�����<�9
2�/
)�&
inputs���������  �
p
� "-�*
#� 
0���������@@@
� �
:__inference_conv2_transpose__block_3_layer_call_fn_1231999l
�����<�9
2�/
)�&
inputs���������  �
p 
� " ����������@@@�
:__inference_conv2_transpose__block_3_layer_call_fn_1232014l
�����<�9
2�/
)�&
inputs���������  �
p
� " ����������@@@�
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1231794z
�����<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
S__inference_conv2_transpose__block_layer_call_and_return_conditional_losses_1231820z
�����<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
8__inference_conv2_transpose__block_layer_call_fn_1231753m
�����<�9
2�/
)�&
inputs����������
p 
� "!������������
8__inference_conv2_transpose__block_layer_call_fn_1231768m
�����<�9
2�/
)�&
inputs����������
p
� "!������������
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1232427n��7�4
-�*
(�%
inputs���������@@@
� "-�*
#� 
0���������@@
� �
*__inference_conv2d_7_layer_call_fn_1232416a��7�4
-�*
(�%
inputs���������@@@
� " ����������@@�
M__inference_custom_attention_layer_call_and_return_conditional_losses_1232201�������a�^
W�T
*�'
tensor_h���������@@@
&�#
words_e����������
� "\�Y
R�O
&�#
0/0���������@@�
%�"
0/1���������@@
� �
2__inference_custom_attention_layer_call_fn_1232086�������a�^
W�T
*�'
tensor_h���������@@@
&�#
words_e����������
� "N�K
$�!
0���������@@�
#� 
1���������@@�
D__inference_dense_1_layer_call_and_return_conditional_losses_1231719^560�-
&�#
!�
inputs����������
� "&�#
�
0����������@
� ~
)__inference_dense_1_layer_call_fn_1231708Q560�-
&�#
!�
inputs����������
� "�����������@�
B__inference_dense_layer_call_and_return_conditional_losses_1231642^!"0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� |
'__inference_dense_layer_call_fn_1231632Q!"0�-
&�#
!�
inputs����������
� "������������
C__inference_lambda_layer_call_and_return_conditional_losses_1231669b8�5
.�+
!�
inputs����������

 
p 
� "&�#
�
0����������
� �
C__inference_lambda_layer_call_and_return_conditional_losses_1231686b8�5
.�+
!�
inputs����������

 
p
� "&�#
�
0����������
� �
(__inference_lambda_layer_call_fn_1231647U8�5
.�+
!�
inputs����������

 
p 
� "������������
(__inference_lambda_layer_call_fn_1231652U8�5
.�+
!�
inputs����������

 
p
� "������������
B__inference_model_layer_call_and_return_conditional_losses_1230562�Z!"56�������������������������������������������e�b
[�X
N�K
!�
input_2���������d
&�#
input_1����������
p 

 
� "{�x
q�n
%�"
0/0���������@@
�
0/1����������
%�"
0/2���������@@
� �
B__inference_model_layer_call_and_return_conditional_losses_1230685�Z!"56�������������������������������������������e�b
[�X
N�K
!�
input_2���������d
&�#
input_1����������
p

 
� "{�x
q�n
%�"
0/0���������@@
�
0/1����������
%�"
0/2���������@@
� �
B__inference_model_layer_call_and_return_conditional_losses_1231311�Z!"56�������������������������������������������g�d
]�Z
P�M
"�
inputs/0���������d
'�$
inputs/1����������
p 

 
� "{�x
q�n
%�"
0/0���������@@
�
0/1����������
%�"
0/2���������@@
� �
B__inference_model_layer_call_and_return_conditional_losses_1231623�Z!"56�������������������������������������������g�d
]�Z
P�M
"�
inputs/0���������d
'�$
inputs/1����������
p

 
� "{�x
q�n
%�"
0/0���������@@
�
0/1����������
%�"
0/2���������@@
� �
'__inference_model_layer_call_fn_1229539�Z!"56�������������������������������������������e�b
[�X
N�K
!�
input_2���������d
&�#
input_1����������
p 

 
� "k�h
#� 
0���������@@
�
1����������
#� 
2���������@@�
'__inference_model_layer_call_fn_1230439�Z!"56�������������������������������������������e�b
[�X
N�K
!�
input_2���������d
&�#
input_1����������
p

 
� "k�h
#� 
0���������@@
�
1����������
#� 
2���������@@�
'__inference_model_layer_call_fn_1230895�Z!"56�������������������������������������������g�d
]�Z
P�M
"�
inputs/0���������d
'�$
inputs/1����������
p 

 
� "k�h
#� 
0���������@@
�
1����������
#� 
2���������@@�
'__inference_model_layer_call_fn_1230999�Z!"56�������������������������������������������g�d
]�Z
P�M
"�
inputs/0���������d
'�$
inputs/1����������
p

 
� "k�h
#� 
0���������@@
�
1����������
#� 
2���������@@�
D__inference_reshape_layer_call_and_return_conditional_losses_1231738b0�-
&�#
!�
inputs����������@
� ".�+
$�!
0����������
� �
)__inference_reshape_layer_call_fn_1231724U0�-
&�#
!�
inputs����������@
� "!������������
K__inference_residual_block_layer_call_and_return_conditional_losses_1232366�����������;�8
1�.
(�%
inputs���������@@@
p 
� "-�*
#� 
0���������@@@
� �
K__inference_residual_block_layer_call_and_return_conditional_losses_1232407�����������;�8
1�.
(�%
inputs���������@@@
p
� "-�*
#� 
0���������@@@
� �
0__inference_residual_block_layer_call_fn_1232300u����������;�8
1�.
(�%
inputs���������@@@
p 
� " ����������@@@�
0__inference_residual_block_layer_call_fn_1232325u����������;�8
1�.
(�%
inputs���������@@@
p
� " ����������@@@�
%__inference_signature_wrapper_1230791�Z!"56�������������������������������������������n�k
� 
d�a
1
input_1&�#
input_1����������
,
input_2!�
input_2���������d"���
6
conv2d_7*�'
conv2d_7���������@@
F
custom_attention2�/
custom_attention���������@@
)
dense �
dense�����������
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1232444�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_up_sampling2d_5_layer_call_fn_1232432�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1232523�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_up_sampling2d_6_layer_call_fn_1232511�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1232602�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_up_sampling2d_7_layer_call_fn_1232590�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_up_sampling2d_8_layer_call_and_return_conditional_losses_1232681�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_up_sampling2d_8_layer_call_fn_1232669�R�O
H�E
C�@
inputs4������������������������������������
� ";�84������������������������������������