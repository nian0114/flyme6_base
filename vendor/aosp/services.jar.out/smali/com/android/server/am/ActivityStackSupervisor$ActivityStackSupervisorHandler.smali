.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4013
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4014
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4013
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 4018
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4019
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4017
    return-void

    .line 4018
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4025
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 4024
    :cond_0
    :goto_0
    return-void

    .line 4029
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_1

    .line 4030
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4031
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 4032
    .local v6, "nmsg":Landroid/os/Message;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v9, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4033
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v6, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4034
    return-void

    .line 4038
    .end local v6    # "nmsg":Landroid/os/Message;
    :cond_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 4042
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 4045
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 4046
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v10

    goto :goto_0

    .line 4045
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4050
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 4051
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4052
    const-string/jumbo v9, "ActivityManager"

    const-string/jumbo v11, "Sleep timeout!  Sleeping now."

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 4054
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 4050
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4059
    :pswitch_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_3

    .line 4060
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4061
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v10, 0x2710

    const/16 v12, 0x68

    invoke-virtual {v9, v12, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4062
    return-void

    .line 4064
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 4065
    :try_start_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4066
    const-string/jumbo v9, "ActivityManager"

    const-string/jumbo v11, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 4064
    :catchall_2
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4076
    :pswitch_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap2(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4079
    :pswitch_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap3(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4082
    :pswitch_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap4(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4085
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4086
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4087
    .local v0, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    .line 4089
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-interface {v0, v10, v9}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4090
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 4089
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 4097
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_9
    :try_start_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_5

    .line 4098
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4100
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    .line 4101
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 4102
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 4103
    const/4 v5, 0x0

    .line 4104
    .local v5, "flags":I
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 4105
    const/high16 v5, 0x3bf0000

    .line 4113
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v10

    .line 4114
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 4113
    invoke-interface {v9, v5, v10, v11}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4116
    .end local v5    # "flags":I
    :cond_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v10

    const-string/jumbo v11, "Lock-to-App"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4117
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 4118
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v10

    .line 4119
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget v11, p1, Landroid/os/Message;->arg1:I

    .line 4118
    const/4 v12, 0x1

    invoke-interface {v10, v12, v9, v11}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4121
    :catch_1
    move-exception v4

    .line 4122
    .local v4, "ex":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 4107
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v5    # "flags":I
    :cond_8
    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 4108
    const/high16 v5, 0x29f0000

    goto :goto_3

    .line 4128
    .end local v5    # "flags":I
    :pswitch_a
    :try_start_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 4129
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v10

    .line 4130
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 4129
    const/4 v12, 0x0

    invoke-interface {v9, v12, v10, v11}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4132
    :cond_9
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 4133
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 4134
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    .line 4135
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 4134
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12, v10}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 4137
    :cond_a
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_b

    .line 4138
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4140
    :cond_b
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4143
    :try_start_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 4144
    const-string/jumbo v10, "lock_to_app_exit_locked"

    .line 4142
    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_d

    const/4 v8, 0x1

    .line 4145
    .local v8, "shouldLockKeyguard":Z
    :goto_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    if-eqz v8, :cond_c

    .line 4146
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 4147
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 4148
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4149
    const/4 v10, -0x1

    .line 4148
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4157
    .end local v8    # "shouldLockKeyguard":Z
    :cond_c
    :goto_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    goto/16 :goto_0

    .line 4142
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "shouldLockKeyguard":Z
    goto :goto_4

    .line 4154
    .end local v8    # "shouldLockKeyguard":Z
    :catch_2
    move-exception v4

    .line 4155
    .restart local v4    # "ex":Landroid/os/RemoteException;
    :try_start_8
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4156
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catchall_3
    move-exception v9

    .line 4157
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 4156
    throw v9

    .line 4161
    :pswitch_b
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_e

    .line 4162
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4164
    :cond_e
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    goto/16 :goto_0

    .line 4167
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4168
    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4169
    .restart local v0    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    .line 4171
    :try_start_9
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v0, v9}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 4172
    :catch_3
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 4177
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_d
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 4178
    :try_start_a
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v9}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 4179
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_2

    .line 4180
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/16 :goto_1

    .line 4177
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4151
    :catch_4
    move-exception v3

    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_5

    .line 4025
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method
