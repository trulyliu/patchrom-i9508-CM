.class public Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;
.super Ljava/lang/Object;
.source "MovieCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;
    .locals 7
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v1, p0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 33
    .local v1, isoFile:Lcom/coremedia/iso/IsoFile;
    new-instance v2, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 34
    .local v2, m:Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {v1}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v5

    const-class v6, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v5, v6}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 35
    .local v4, trackBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/TrackBox;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/TrackBox;

    .line 36
    .local v3, trackBox:Lcom/coremedia/iso/boxes/TrackBox;
    new-instance v5, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;

    invoke-direct {v5, v3}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;-><init>(Lcom/coremedia/iso/boxes/TrackBox;)V

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    .line 38
    .end local v3           #trackBox:Lcom/coremedia/iso/boxes/TrackBox;
    :cond_0
    return-object v2
.end method
