.class public Lcom/android/server/gesture/GestureService;
.super Landroid/service/gesture/IGestureService$Stub;
.source "GestureService.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "GestureService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputFilter:Lcom/android/server/gesture/GestureInputFilter;

.field private mInputManager:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .parameter "context"
    .parameter "inputManager"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/service/gesture/IGestureService$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/gesture/GestureService;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/server/gesture/GestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 46
    return-void
.end method


# virtual methods
.method public systemReady()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/server/gesture/GestureInputFilter;

    iget-object v1, p0, Lcom/android/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/gesture/GestureInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/gesture/GestureService;->mInputFilter:Lcom/android/server/gesture/GestureInputFilter;

    .line 52
    iget-object v0, p0, Lcom/android/server/gesture/GestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/gesture/GestureService;->mInputFilter:Lcom/android/server/gesture/GestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->registerSecondaryInputFilter(Landroid/view/IInputFilter;)V

    .line 53
    return-void
.end method
