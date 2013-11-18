.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;
.super Ljava/lang/Object;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    .line 131
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 135
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    .line 126
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 12
    .parameter "v"
    .parameter "target"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mStoredTargets:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v10

    .line 76
    .local v10, resId:I
    sparse-switch v10, :sswitch_data_0

    .line 120
    .end local v10           #resId:I
    :goto_0
    return-void

    .line 78
    .restart local v10       #resId:I
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 81
    .local v1, assistIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 84
    :cond_0
    const-string v0, "SecuritySelectorView"

    const-string v2, "Failed to get intent for assist activity"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    .end local v1           #assistIntent:Landroid/content/Intent;
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 96
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 101
    .end local v10           #resId:I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mTargetOffset:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mTargetOffset:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I

    move-result v0

    sub-int v0, p2, v0

    add-int/lit8 v9, v0, -0x1

    .line 105
    .local v9, realTarget:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mStoredTargets:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v9, v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mStoredTargets:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v11, v0, v9

    .line 108
    .local v11, targetUri:Ljava/lang/String;
    :goto_2
    const-string v0, "empty"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_0

    .line 105
    .end local v11           #targetUri:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 112
    .restart local v11       #targetUri:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v11, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 113
    .local v3, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 114
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 115
    .local v8, e:Ljava/net/URISyntaxException;
    const-string v0, "SecuritySelectorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid lockscreen target "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x1080297 -> :sswitch_0
        0x10802f1 -> :sswitch_1
        0x1080337 -> :sswitch_2
        0x108033a -> :sswitch_2
    .end sparse-switch
.end method
