.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->val$success:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->val$success:Z

    #calls: Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->closeKeyGuard(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    const v2, 0x10405e0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
