.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewManagerHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .line 140
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->setFitsSystemWindows(Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 163
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 165
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 167
    .local v0, action:I
    if-nez v0, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v3, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    .end local v0           #action:I
    .end local v1           #keyCode:I
    :cond_0
    :goto_0
    return v2

    .line 171
    .restart local v0       #action:I
    .restart local v1       #keyCode:I
    :cond_1
    if-ne v0, v2, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v3, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->handleKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    .end local v0           #action:I
    .end local v1           #keyCode:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "insets"

    .prologue
    .line 146
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bug 7643792: fitSystemWindows("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V

    .line 159
    :cond_0
    return-void
.end method
