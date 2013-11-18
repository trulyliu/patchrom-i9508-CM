.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 4058
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4058
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method private adjustCurrentStreamVolume()V
    .locals 5

    .prologue
    .line 4322
    const/4 v1, 0x0

    .local v1, stream:I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4323
    iget-object v3, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v3}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[I

    move-result-object v3

    aget v3, v3, v1

    if-ne v1, v3, :cond_0

    .line 4324
    iget-object v3, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v3}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[I

    move-result-object v4

    aget v4, v4, v1

    aget-object v2, v3, v4

    .line 4325
    .local v2, streamState:Landroid/media/AudioService$VolumeStreamState;
    iget-object v3, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v3, v1}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;I)I

    move-result v0

    .line 4327
    .local v0, device:I
    invoke-virtual {v2, v0}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 4322
    .end local v0           #device:I
    .end local v2           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4330
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4061
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 4065
    .local v10, action:Ljava/lang/String;
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4066
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 4069
    .local v22, dockState:I
    packed-switch v22, :pswitch_data_0

    .line 4084
    const/16 v19, 0x0

    .line 4089
    .local v19, config:I
    :goto_0
    const/4 v3, 0x3

    move/from16 v0, v22

    if-eq v0, v3, :cond_1

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 4092
    :cond_0
    const/4 v3, 0x3

    move/from16 v0, v19

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4094
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v22

    #setter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9102(Landroid/media/AudioService;I)I

    .line 4316
    .end local v19           #config:I
    .end local v22           #dockState:I
    :cond_2
    :goto_1
    return-void

    .line 4071
    .restart local v22       #dockState:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mForceAnalogDeskDock:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v19, 0x8

    .line 4072
    .restart local v19       #config:I
    :goto_2
    goto :goto_0

    .line 4071
    .end local v19           #config:I
    :cond_3
    const/16 v19, 0x7

    goto :goto_2

    .line 4074
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mForceAnalogCarDock:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v19, 0x8

    .line 4075
    .restart local v19       #config:I
    :goto_3
    goto :goto_0

    .line 4074
    .end local v19           #config:I
    :cond_4
    const/16 v19, 0x6

    goto :goto_3

    .line 4077
    :pswitch_2
    const/16 v19, 0x8

    .line 4078
    .restart local v19       #config:I
    goto :goto_0

    .line 4080
    .end local v19           #config:I
    :pswitch_3
    const/16 v19, 0x9

    .line 4081
    .restart local v19       #config:I
    goto :goto_0

    .line 4095
    .end local v19           #config:I
    .end local v22           #dockState:I
    :cond_5
    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->noDelayInATwoDP:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4096
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4098
    .local v31, state:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    .line 4100
    .local v17, btDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v17

    move/from16 v1, v31

    #calls: Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v3, v0, v1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 4101
    .end local v17           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v31           #state:I
    :cond_6
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4102
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4104
    .restart local v31       #state:I
    const/16 v21, 0x10

    .line 4105
    .local v21, device:I
    const/4 v12, 0x0

    .line 4107
    .local v12, address:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    .line 4108
    .restart local v17       #btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v17, :cond_2

    .line 4112
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 4113
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v16

    .line 4114
    .local v16, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v16, :cond_7

    .line 4115
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 4126
    :cond_7
    :goto_4
    invoke-static {v12}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 4127
    const-string v12, ""

    .line 4130
    :cond_8
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_9

    const/16 v20, 0x1

    .line 4131
    .local v20, connected:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v20

    move/from16 v1, v21

    #calls: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v0, v1, v12}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4132
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 4133
    if-eqz v20, :cond_a

    .line 4134
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v17

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4139
    :goto_6
    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4118
    .end local v20           #connected:Z
    :sswitch_0
    const/16 v21, 0x20

    .line 4119
    goto :goto_4

    .line 4121
    :sswitch_1
    const/16 v21, 0x40

    goto :goto_4

    .line 4130
    :cond_9
    const/16 v20, 0x0

    goto :goto_5

    .line 4136
    .restart local v20       #connected:Z
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4137
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 4141
    .end local v12           #address:Ljava/lang/String;
    .end local v16           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v17           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v20           #connected:Z
    .end local v21           #device:I
    .end local v31           #state:I
    :cond_b
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4142
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4143
    .restart local v31       #state:I
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_d

    .line 4145
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->adjustCurrentStreamVolume()V

    .line 4148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "headset_connect_player"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_c

    const/16 v25, 0x1

    .line 4152
    .local v25, launchPlayer:Z
    :goto_7
    if-eqz v25, :cond_2

    .line 4153
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4154
    .local v29, playerIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_MUSIC"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4155
    const/high16 v3, 0x1000

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4157
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4158
    :catch_0
    move-exception v23

    .line 4159
    .local v23, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "AudioService"

    const-string v4, "No music player found to start after headset connection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4148
    .end local v23           #e:Landroid/content/ActivityNotFoundException;
    .end local v25           #launchPlayer:Z
    .end local v29           #playerIntent:Landroid/content/Intent;
    :cond_c
    const/16 v25, 0x0

    goto :goto_7

    .line 4164
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->adjustCurrentStreamVolume()V

    goto/16 :goto_1

    .line 4166
    .end local v31           #state:I
    :cond_e
    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4168
    :cond_f
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4169
    .restart local v31       #state:I
    const-string v3, "card"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 4170
    .local v13, alsaCard:I
    const-string v3, "device"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 4171
    .local v14, alsaDevice:I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_10

    const/4 v3, -0x1

    if-ne v14, v3, :cond_10

    const-string v28, ""

    .line 4173
    .local v28, params:Ljava/lang/String;
    :goto_8
    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v21, 0x2000

    .line 4175
    .restart local v21       #device:I
    :goto_9
    const-string v4, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast Receiver: Got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "ACTION_USB_AUDIO_ACCESSORY_PLUG"

    :goto_a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", card: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", device: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v21

    move/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 4171
    .end local v21           #device:I
    .end local v28           #params:Ljava/lang/String;
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_8

    .line 4173
    .restart local v28       #params:Ljava/lang/String;
    :cond_11
    const/16 v21, 0x4000

    goto :goto_9

    .line 4175
    .restart local v21       #device:I
    :cond_12
    const-string v3, "ACTION_USB_AUDIO_DEVICE_PLUG"

    goto :goto_a

    .line 4180
    .end local v13           #alsaCard:I
    .end local v14           #alsaDevice:I
    .end local v21           #device:I
    .end local v28           #params:Ljava/lang/String;
    .end local v31           #state:I
    :cond_13
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4181
    const/4 v15, 0x0

    .line 4182
    .local v15, broadcast:Z
    const/16 v30, -0x1

    .line 4183
    .local v30, scoAudioState:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 4184
    :try_start_3
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 4186
    .local v18, btState:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_15

    .line 4190
    :cond_14
    const/4 v15, 0x1

    .line 4192
    :cond_15
    packed-switch v18, :pswitch_data_1

    .line 4214
    :cond_16
    :goto_b
    const/4 v15, 0x0

    .line 4217
    :cond_17
    :goto_c
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4218
    if-eqz v15, :cond_2

    .line 4219
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v30

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;I)V

    .line 4222
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4223
    .local v26, newIntent:Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4224
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v26

    #calls: Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 4194
    .end local v26           #newIntent:Landroid/content/Intent;
    :pswitch_4
    const/16 v30, 0x1

    .line 4195
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_17

    .line 4198
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;I)I

    goto :goto_c

    .line 4217
    .end local v18           #btState:I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 4202
    .restart local v18       #btState:I
    :pswitch_5
    const/16 v30, 0x0

    .line 4203
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;I)I

    .line 4204
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_c

    .line 4207
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_16

    .line 4210
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_b

    .line 4226
    .end local v15           #broadcast:Z
    .end local v18           #btState:I
    .end local v30           #scoAudioState:I
    :cond_18
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4227
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$4702(Landroid/media/AudioService;Z)Z

    .line 4228
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4231
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    #setter for: Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4, v3}, Landroid/media/AudioService;->access$9402(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 4233
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, -0x1

    #setter for: Landroid/media/AudioService;->mScoConnectionState:I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;I)I

    .line 4234
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)V

    .line 4235
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Z

    .line 4238
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4239
    .restart local v26       #newIntent:Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4241
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v26

    #calls: Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;Landroid/content/Intent;)V

    .line 4243
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 4244
    .local v11, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v11, :cond_19

    .line 4245
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v4}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v11, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 4249
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x1b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7530

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4256
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->adjustCurrentStreamVolume()V

    goto/16 :goto_1

    .line 4257
    .end local v11           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v26           #newIntent:Landroid/content/Intent;
    :cond_1a
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4259
    :cond_1b
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4261
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v27

    .line 4262
    .local v27, packageName:Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 4263
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    move-object/from16 v0, v27

    #calls: Landroid/media/AudioService;->cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V
    invoke-static {v3, v0, v4}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4266
    .end local v27           #packageName:Ljava/lang/String;
    :cond_1c
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4268
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v27

    .line 4269
    .restart local v27       #packageName:Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 4270
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    #calls: Landroid/media/AudioService;->cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V
    invoke-static {v3, v0, v4}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4272
    .end local v27           #packageName:Ljava/lang/String;
    :cond_1e
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4273
    const-string/jumbo v3, "screen_state=on"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4274
    :cond_1f
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4275
    const-string/jumbo v3, "screen_state=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4276
    :cond_20
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4277
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    #calls: Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 4278
    :cond_21
    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4280
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 4287
    :cond_22
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 4289
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->discardAudioFocusOwner()V
    invoke-static {v3}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)V

    .line 4292
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #calls: Landroid/media/AudioService;->readAudioSettings(Z)V
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;Z)V

    .line 4294
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xe

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v8}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 4300
    :cond_23
    const-string/jumbo v3, "qualcomm.intent.action.WIFI_DISPLAY_AUDIO"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4301
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 4302
    .restart local v31       #state:I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WiFi Display device state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    .line 4304
    .local v24, isConnected:Z
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_24

    if-nez v24, :cond_24

    .line 4305
    const/high16 v3, 0x4

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4308
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/high16 v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4309
    :cond_24
    if-nez v31, :cond_2

    if-eqz v24, :cond_2

    .line 4310
    const/high16 v3, 0x4

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4313
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4115
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 4192
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
