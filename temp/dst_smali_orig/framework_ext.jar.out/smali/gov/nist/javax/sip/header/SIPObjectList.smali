.class public Lgov/nist/javax/sip/header/SIPObjectList;
.super Lgov/nist/core/GenericObjectList;
.source "SIPObjectList.java"


# static fields
.field private static final serialVersionUID:J = -0x29d7fb4297970e29L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "lname"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public concatenate(Lgov/nist/javax/sip/header/SIPObjectList;)V
    .locals 0
    .parameter "otherList"

    .prologue
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;)V

    return-void
.end method

.method public concatenate(Lgov/nist/javax/sip/header/SIPObjectList;Z)V
    .locals 0
    .parameter "otherList"
    .parameter "topFlag"

    .prologue
    invoke-super {p0, p1, p2}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;Z)V

    return-void
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 1
    .parameter "indent"

    .prologue
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public first()Lgov/nist/core/GenericObject;
    .locals 1

    .prologue
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPObject;

    return-object v0
.end method

.method public mergeObjects(Lgov/nist/core/GenericObjectList;)V
    .locals 5
    .parameter "mergeList"

    .prologue
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, it1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/core/GenericObject;>;"
    invoke-virtual {p1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/core/GenericObject;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    .local v3, outerObj:Lgov/nist/core/GenericObject;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, innerObj:Ljava/lang/Object;
    invoke-virtual {v3, v0}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #innerObj:Ljava/lang/Object;
    .end local v3           #outerObj:Lgov/nist/core/GenericObject;
    :cond_1
    return-void
.end method

.method public next()Lgov/nist/core/GenericObject;
    .locals 1

    .prologue
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPObject;

    return-object v0
.end method
