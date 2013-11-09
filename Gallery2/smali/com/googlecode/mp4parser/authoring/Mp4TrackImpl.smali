.class public Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "Mp4TrackImpl.java"


# instance fields
.field private compositionTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private decodingTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Ljava/lang/String;

.field private mihd:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

.field private sampleDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private syncSamples:[J

.field private trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/TrackBox;)V
    .locals 44
    .parameter "trackBox"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 37
    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 39
    new-instance v38, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct/range {v38 .. v38}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v31

    .line 45
    .local v31, trackId:J
    new-instance v38, Lcom/coremedia/iso/boxes/mdat/SampleList;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/mdat/SampleList;-><init>(Lcom/coremedia/iso/boxes/TrackBox;)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    .line 47
    .local v25, stbl:Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/MediaBox;->getHandlerBox()Lcom/coremedia/iso/boxes/HandlerBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/HandlerBox;->getHandlerType()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->mihd:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 50
    new-instance v38, Ljava/util/LinkedList;

    invoke-direct/range {v38 .. v38}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    .line 51
    new-instance v38, Ljava/util/LinkedList;

    invoke-direct/range {v38 .. v38}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    .line 52
    new-instance v38, Ljava/util/LinkedList;

    invoke-direct/range {v38 .. v38}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getTimeToSampleBox()Lcom/coremedia/iso/boxes/TimeToSampleBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->getEntries()Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v38

    if-eqz v38, :cond_0

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->getEntries()Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_0
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v38

    if-eqz v38, :cond_1

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    move-object/from16 v38, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->getEntries()Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_1
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v38

    if-eqz v38, :cond_2

    .line 62
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/SyncSampleBox;->getSampleNumber()[J

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 66
    :cond_2
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v38

    const-class v39, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface/range {v38 .. v39}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v18

    .line 68
    .local v18, movieExtendsBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v38

    if-lez v38, :cond_14

    .line 69
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    .line 70
    .local v20, mvex:Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    const-class v38, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v30

    .line 71
    .local v30, trackExtendsBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 72
    .local v35, trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-virtual/range {v35 .. v35}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v38

    cmp-long v38, v38, v31

    if-nez v38, :cond_4

    .line 73
    new-instance v26, Ljava/util/LinkedList;

    invoke-direct/range {v26 .. v26}, Ljava/util/LinkedList;-><init>()V

    .line 75
    .local v26, syncSampleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v23, 0x1

    .line 76
    .local v23, sampleNumber:J
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v38

    const-class v39, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual/range {v38 .. v39}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 77
    .local v19, movieFragmentBox:Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    const-class v38, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v34

    .line 78
    .local v34, trafs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 79
    .local v33, traf:Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual/range {v33 .. v33}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v38

    cmp-long v38, v38, v31

    if-nez v38, :cond_6

    .line 80
    const-class v38, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v37

    .line 81
    .local v37, truns:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 82
    .local v36, trun:Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v38

    check-cast v38, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v28

    .line 83
    .local v28, tfhd:Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    const/4 v7, 0x1

    .line 84
    .local v7, first:Z
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 85
    .local v6, entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z

    move-result v38

    if-eqz v38, :cond_d

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v38

    if-eqz v38, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v38

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v40

    cmp-long v38, v38, v40

    if-eqz v38, :cond_c

    .line 88
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    new-instance v39, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v40, 0x1

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v42

    invoke-direct/range {v39 .. v43}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_1
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v38

    if-eqz v38, :cond_a

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v38

    if-eqz v38, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v38

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_f

    .line 104
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    new-instance v39, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/16 v40, 0x1

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    invoke-static/range {v41 .. v42}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v41

    invoke-direct/range {v39 .. v41}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_a
    :goto_2
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v38

    if-eqz v38, :cond_10

    .line 112
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v22

    .line 124
    .local v22, sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :goto_3
    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->isSampleIsDifferenceSample()Z

    move-result v38

    if-nez v38, :cond_b

    .line 126
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_b
    const-wide/16 v38, 0x1

    add-long v23, v23, v38

    .line 129
    const/4 v7, 0x0

    .line 130
    goto/16 :goto_0

    .line 90
    .end local v22           #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 91
    .local v5, e:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v38

    const-wide/16 v40, 0x1

    add-long v38, v38, v40

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto/16 :goto_1

    .line 94
    .end local v5           #e:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_d
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleDuration()Z

    move-result v38

    if-eqz v38, :cond_e

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    new-instance v39, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v40, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleDuration()J

    move-result-wide v42

    invoke-direct/range {v39 .. v43}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 97
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    new-instance v39, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v40, 0x1

    invoke-virtual/range {v35 .. v35}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleDuration()J

    move-result-wide v42

    invoke-direct/range {v39 .. v43}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 106
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 107
    .local v5, e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto/16 :goto_2

    .line 114
    .end local v5           #e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isFirstSampleFlagsPresent()Z

    move-result v38

    if-eqz v38, :cond_11

    .line 115
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v22

    .restart local v22       #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto/16 :goto_3

    .line 117
    .end local v22           #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_11
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleFlags()Z

    move-result v38

    if-eqz v38, :cond_12

    .line 118
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v22

    .restart local v22       #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto/16 :goto_3

    .line 120
    .end local v22           #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_12
    invoke-virtual/range {v35 .. v35}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v22

    .restart local v22       #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto/16 :goto_3

    .line 136
    .end local v6           #entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .end local v7           #first:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #movieFragmentBox:Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .end local v22           #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .end local v28           #tfhd:Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .end local v33           #traf:Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    .end local v34           #trafs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    .end local v36           #trun:Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    .end local v37           #truns:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    move-object/from16 v21, v0

    .line 137
    .local v21, oldSS:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v39

    add-int v38, v38, v39

    move/from16 v0, v38

    new-array v0, v0, [J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 138
    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v21

    move/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 140
    .local v16, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    move-object/from16 v0, v21

    array-length v8, v0

    .line 141
    .local v8, i:I
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_4

    .line 142
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 143
    .local v27, syncSampleNumber:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    move-object/from16 v38, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    aput-wide v39, v38, v8

    move v8, v9

    .line 144
    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_4

    .line 149
    .end local v8           #i:I
    .end local v16           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v20           #mvex:Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    .end local v21           #oldSS:[J
    .end local v23           #sampleNumber:J
    .end local v26           #syncSampleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v27           #syncSampleNumber:Ljava/lang/Long;
    .end local v30           #trackExtendsBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    .end local v35           #trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v17

    .line 150
    .local v17, mdhd:Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v29

    .line 152
    .local v29, tkhd:Lcom/coremedia/iso/boxes/TrackHeaderBox;
    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isEnabled()Z

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setEnabled(Z)V

    .line 153
    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInMovie()Z

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setInMovie(Z)V

    .line 154
    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInPoster()Z

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setInPoster(Z)V

    .line 155
    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInPreview()Z

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setInPreview(Z)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v38, v0

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTrackId(J)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v38, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getCreationTime()J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v38, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getLanguage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v38, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getModificationTime()J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v38, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v38, v0

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v38, v0

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v39

    invoke-virtual/range {v38 .. v40}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v38, v0

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getLayer()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLayer(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v38, v0

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()[J

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setMatrix([J)V

    .line 171
    return-void
.end method


# virtual methods
.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->mihd:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method

.method public bridge synthetic getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mp4TrackImpl{handler=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
