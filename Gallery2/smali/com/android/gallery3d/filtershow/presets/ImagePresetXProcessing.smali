.class public Lcom/android/gallery3d/filtershow/presets/ImagePresetXProcessing;
.super Lcom/android/gallery3d/filtershow/presets/ImagePreset;
.source "ImagePresetXProcessing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>()V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "X-Process"

    return-object v0
.end method

.method public setup()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    .line 32
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGradient;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGradient;-><init>()V

    .line 33
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterGradient;
    const/high16 v1, -0x100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGradient;->addColor(IF)V

    .line 34
    const/16 v1, 0x1d

    const/16 v2, 0x52

    const/16 v3, 0x53

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const v2, 0x3ecccccd

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGradient;->addColor(IF)V

    .line 35
    const/16 v1, 0xd3

    const/16 v2, 0xd9

    const/16 v3, 0xba

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGradient;->addColor(IF)V

    .line 36
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePresetXProcessing;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method
