.class Landroid/hardware/location/GeofenceHardwareImpl$2;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 573
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 575
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/location/Location;

    .line 576
    .local v5, location:Landroid/location/Location;
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 578
    .local v7, val:I
    if-nez v7, :cond_2

    const/4 v0, 0x1

    .line 580
    .local v0, available:Z
    :goto_1
    iget-object v9, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl;->access$700(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v9

    aget-object v3, v9, v8

    .line 581
    .local v3, callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v3, :cond_3

    .line 582
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$300()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "GeofenceHardwareImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MonitoringSystemChangeCallback: GPS : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 586
    .local v1, c:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v1, v8, v0, v5}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->onMonitoringSystemChange(IZLandroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 589
    :catch_0
    move-exception v8

    goto :goto_2

    .end local v0           #available:Z
    .end local v1           #c:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v3           #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    move v0, v8

    .line 578
    goto :goto_1

    .line 592
    .restart local v0       #available:Z
    .restart local v3       #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    :cond_3
    iget-object v8, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #calls: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v8}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto :goto_0

    .line 595
    .end local v0           #available:Z
    .end local v3           #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v5           #location:Landroid/location/Location;
    .end local v7           #val:I
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 596
    .local v6, monitoringType:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 597
    .local v2, callback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget-object v8, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/location/GeofenceHardwareImpl;->access$700(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v8

    aget-object v3, v8, v6

    .line 598
    .restart local v3       #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-nez v3, :cond_4

    .line 599
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .restart local v3       #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    iget-object v8, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/location/GeofenceHardwareImpl;->access$700(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v8

    aput-object v3, v8, v6

    .line 602
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    .end local v2           #callback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v3           #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v6           #monitoringType:I
    :pswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 606
    .restart local v6       #monitoringType:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 607
    .restart local v2       #callback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget-object v8, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/location/GeofenceHardwareImpl;->access$700(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v8

    aget-object v3, v8, v6

    .line 608
    .restart local v3       #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v3, :cond_0

    .line 609
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 613
    .end local v2           #callback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v3           #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v6           #monitoringType:I
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 614
    .restart local v2       #callback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$300()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "GeofenceHardwareImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Monitor callback reaped:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_5
    iget-object v8, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/location/GeofenceHardwareImpl;->access$700(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    aget-object v3, v8, v9

    .line 616
    .restart local v3       #callbackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 617
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
