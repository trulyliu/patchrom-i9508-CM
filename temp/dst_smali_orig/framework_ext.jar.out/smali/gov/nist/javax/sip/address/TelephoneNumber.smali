.class public Lgov/nist/javax/sip/address/TelephoneNumber;
.super Lgov/nist/javax/sip/address/NetObject;
.source "TelephoneNumber.java"


# static fields
.field public static final ISUB:Ljava/lang/String; = "isub"

.field public static final PHONE_CONTEXT_TAG:Ljava/lang/String; = "context-tag"

.field public static final POSTDIAL:Ljava/lang/String; = "postdial"

.field public static final PROVIDER_TAG:Ljava/lang/String; = "provider-tag"


# instance fields
.field protected isglobal:Z

.field protected parameters:Lgov/nist/core/NameValueList;

.field protected phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    invoke-super {p0}, Lgov/nist/javax/sip/address/NetObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    .local v0, retval:Lgov/nist/javax/sip/address/TelephoneNumber;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    :cond_0
    return-object v0
.end method

.method public deleteParm(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "buffer"

    .prologue
    iget-boolean v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    return-object p1
.end method

.method public getIsdnSubaddress()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "isub"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, val:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local v0           #val:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0       #val:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_1

    check-cast v0, Lgov/nist/core/GenericObject;

    .end local v0           #val:Ljava/lang/Object;
    invoke-virtual {v0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v0       #val:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .locals 1

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDial()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "postdial"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasIsdnSubaddress()Z
    .locals 1

    .prologue
    const-string v0, "isub"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->hasParm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasParm(Ljava/lang/String;)Z
    .locals 1
    .parameter "pname"

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->hasNameValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasPostDial()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "postdial"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobal()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    return v0
.end method

.method public removeIsdnSubaddress()V
    .locals 1

    .prologue
    const-string v0, "isub"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->deleteParm(Ljava/lang/String;)V

    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .parameter "parameter"

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method public removePostDial()V
    .locals 2

    .prologue
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "postdial"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method public setGlobal(Z)V
    .locals 0
    .parameter "g"

    .prologue
    iput-boolean p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    return-void
.end method

.method public setIsdnSubaddress(Ljava/lang/String;)V
    .locals 1
    .parameter "isub"

    .prologue
    const-string v0, "isub"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParm(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .local v0, nv:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setParameters(Lgov/nist/core/NameValueList;)V
    .locals 0
    .parameter "p"

    .prologue
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public setParm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .local v0, nv:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "num"

    .prologue
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPostDial(Ljava/lang/String;)V
    .locals 2
    .parameter "p"

    .prologue
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "postdial"

    invoke-direct {v0, v1, p1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .local v0, nv:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method
