.class Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListenerExecutionMaxTimer"
.end annotation


# instance fields
.field serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;


# direct methods
.method constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->terminate()V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    .local v1, sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget-object v2, v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "unexpected exception"

    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
