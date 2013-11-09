.class public Lcom/android/camera/ScriptC_HdrSoftware;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_HdrSoftware.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "hdrsoftware"

.field private static final mExportForEachIdx_root:I = 0x0

.field private static final mExportFuncIdx_performHdrComputation:I = 0x0

.field private static final mExportVarIdx_gImageWidth:I = 0x6

.field private static final mExportVarIdx_gInIndex:I = 0x1

.field private static final mExportVarIdx_gInputHi:I = 0x4

.field private static final mExportVarIdx_gInputLow:I = 0x2

.field private static final mExportVarIdx_gInputMid:I = 0x3

.field private static final mExportVarIdx_gOutput:I = 0x5

.field private static final mExportVarIdx_gScript:I


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __I32:Landroid/renderscript/Element;

.field private __SCRIPT:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroid/renderscript/FieldPacker;

.field private __rs_fp_SCRIPT:Landroid/renderscript/FieldPacker;

.field private mExportVar_gImageWidth:I

.field private mExportVar_gInIndex:Landroid/renderscript/Allocation;

.field private mExportVar_gInputHi:Landroid/renderscript/Allocation;

.field private mExportVar_gInputLow:Landroid/renderscript/Allocation;

.field private mExportVar_gInputMid:Landroid/renderscript/Allocation;

.field private mExportVar_gOutput:Landroid/renderscript/Allocation;

.field private mExportVar_gScript:Landroid/renderscript/Script;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 5
    .parameter "rs"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "hdrsoftware"

    const-string v3, "raw"

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->__SCRIPT:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->__ALLOCATION:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->__I32:Landroid/renderscript/Element;

    .line 45
    return-void
.end method


# virtual methods
.method public bind_gInputHi(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x4

    .line 110
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInputHi:Landroid/renderscript/Allocation;

    .line 111
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gInputLow(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x2

    .line 86
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInputLow:Landroid/renderscript/Allocation;

    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gInputMid(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x3

    .line 98
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInputMid:Landroid/renderscript/Allocation;

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_gOutput(Landroid/renderscript/Allocation;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x5

    .line 122
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gOutput:Landroid/renderscript/Allocation;

    .line 123
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public forEach_root(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 4
    .parameter "ain"
    .parameter "aout"

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ScriptC_HdrSoftware;->__I32:Landroid/renderscript/Element;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Type mismatch with I32!"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ScriptC_HdrSoftware;->__I32:Landroid/renderscript/Element;

    invoke-virtual {v2, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Type mismatch with I32!"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 162
    .local v0, tIn:Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    .line 163
    .local v1, tOut:Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v2

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 169
    :cond_2
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Dimension mismatch between input and output parameters!"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/android/camera/ScriptC_HdrSoftware;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 172
    return-void
.end method

.method public getFieldID_gImageWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gInIndex()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gScript()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ScriptC_HdrSoftware;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_root()Landroid/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/camera/ScriptC_HdrSoftware;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_gImageWidth()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gImageWidth:I

    return v0
.end method

.method public get_gInIndex()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInIndex:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gInputHi()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInputHi:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gInputLow()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInputLow:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gInputMid()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInputMid:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gOutput()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gOutput:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gScript()Landroid/renderscript/Script;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gScript:Landroid/renderscript/Script;

    return-object v0
.end method

.method public invoke_performHdrComputation()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ScriptC_HdrSoftware;->invoke(I)V

    .line 177
    return-void
.end method

.method public declared-synchronized set_gImageWidth(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 134
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ScriptC_HdrSoftware;->setVar(II)V

    .line 135
    iput p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gImageWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gInIndex(Landroid/renderscript/Allocation;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 71
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ScriptC_HdrSoftware;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 72
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gInIndex:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gScript(Landroid/renderscript/Script;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ScriptC_HdrSoftware;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 57
    iput-object p1, p0, Lcom/android/camera/ScriptC_HdrSoftware;->mExportVar_gScript:Landroid/renderscript/Script;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
