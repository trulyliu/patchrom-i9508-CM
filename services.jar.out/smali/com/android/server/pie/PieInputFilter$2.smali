.class synthetic Lcom/android/server/pie/PieInputFilter$2;
.super Ljava/lang/Object;
.source "PieInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pie/PieInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$pie$PieInputFilter$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 274
    invoke-static {}, Lcom/android/server/pie/PieInputFilter$State;->values()[Lcom/android/server/pie/PieInputFilter$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pie/PieInputFilter$2;->$SwitchMap$com$android$server$pie$PieInputFilter$State:[I

    :try_start_0
    sget-object v0, Lcom/android/server/pie/PieInputFilter$2;->$SwitchMap$com$android$server$pie$PieInputFilter$State:[I

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->LISTEN:Lcom/android/server/pie/PieInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/pie/PieInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/pie/PieInputFilter$2;->$SwitchMap$com$android$server$pie$PieInputFilter$State:[I

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->DETECTING:Lcom/android/server/pie/PieInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/pie/PieInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/pie/PieInputFilter$2;->$SwitchMap$com$android$server$pie$PieInputFilter$State:[I

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->LOCKED:Lcom/android/server/pie/PieInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/pie/PieInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/server/pie/PieInputFilter$2;->$SwitchMap$com$android$server$pie$PieInputFilter$State:[I

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->SYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/pie/PieInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/server/pie/PieInputFilter$2;->$SwitchMap$com$android$server$pie$PieInputFilter$State:[I

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/pie/PieInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
