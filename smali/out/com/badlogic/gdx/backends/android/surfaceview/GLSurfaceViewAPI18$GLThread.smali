.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceViewAPI18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;",
            ">;)V"
        }
    .end annotation

    .line 1273
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1805
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 1274
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    .line 1275
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    .line 1276
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1277
    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    .line 1278
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1102(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;Z)Z
    .registers 2

    .line 1271
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1320
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    const/4 v0, 0x0

    .line 1321
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    .line 1322
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1b
    const/4 v14, 0x0

    .line 1338
    :goto_1c
    :try_start_1c
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_222

    .line 1340
    :goto_21
    :try_start_21
    iget-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_36

    .line 1341
    monitor-exit v15
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_21f

    .line 1608
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1609
    :try_start_2b
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1611
    monitor-exit v2

    return-void

    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    throw v0

    .line 1344
    :cond_36
    :try_start_36
    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 1345
    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v14, v2

    const/4 v2, 0x0

    goto/16 :goto_152

    .line 1351
    :cond_4b
    iget-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_5f

    .line 1352
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    .line 1353
    iget-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    iput-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    .line 1354
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_60

    :cond_5f
    const/4 v0, 0x0

    .line 1361
    :goto_60
    iget-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v2, :cond_6e

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1366
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    const/4 v2, 0x0

    .line 1367
    iput-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldReleaseEglContext:Z

    const/4 v5, 0x1

    :cond_6e
    if-eqz v3, :cond_77

    .line 1373
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    const/4 v3, 0x0

    :cond_77
    if-eqz v0, :cond_80

    .line 1379
    iget-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_80

    .line 1383
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    :cond_80
    if-eqz v0, :cond_a5

    .line 1387
    iget-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_a5

    .line 1388
    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-nez v2, :cond_92

    const/4 v2, 0x0

    goto :goto_96

    .line 1390
    :cond_92
    invoke-static {v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$900(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Z

    move-result v2

    :goto_96
    if-eqz v2, :cond_a2

    .line 1391
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1392
    :cond_a2
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    :cond_a5
    if-eqz v0, :cond_b6

    .line 1401
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1402
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->finish()V

    .line 1410
    :cond_b6
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    if-nez v0, :cond_d2

    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_d2

    .line 1414
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c5

    .line 1415
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    :cond_c5
    const/4 v0, 0x1

    .line 1417
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    .line 1418
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    .line 1419
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1423
    :cond_d2
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_e4

    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_e4

    const/4 v0, 0x0

    .line 1427
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    .line 1428
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_e4
    if-eqz v4, :cond_f2

    const/4 v0, 0x1

    .line 1437
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    .line 1438
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 1442
    :cond_f2
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_215

    .line 1445
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-nez v0, :cond_124

    if-eqz v5, :cond_100

    const/4 v5, 0x0

    goto :goto_124

    .line 1448
    :cond_100
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->tryAcquireEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)Z

    move-result v0
    :try_end_108
    .catchall {:try_start_36 .. :try_end_108} :catchall_21f

    if-eqz v0, :cond_124

    .line 1450
    :try_start_10a
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->start()V
    :try_end_10f
    .catch Ljava/lang/RuntimeException; {:try_start_10a .. :try_end_10f} :catch_11b
    .catchall {:try_start_10a .. :try_end_10f} :catchall_21f

    const/4 v0, 0x1

    .line 1455
    :try_start_110
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    .line 1458
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x1

    goto :goto_124

    :catch_11b
    move-exception v0

    .line 1452
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    .line 1453
    throw v0

    .line 1462
    :cond_124
    :goto_124
    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_133

    iget-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_133

    const/4 v0, 0x1

    .line 1463
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    const/4 v0, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_134

    :cond_133
    move v0, v10

    .line 1469
    :goto_134
    iget-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_214

    .line 1470
    iget-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    if-eqz v2, :cond_147

    .line 1472
    iget v7, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    .line 1473
    iget v8, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    const/4 v2, 0x0

    .line 1484
    iput-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    const/4 v0, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_148

    :cond_147
    const/4 v2, 0x0

    .line 1486
    :goto_148
    iput-boolean v2, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1487
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    move v10, v0

    .line 1509
    :goto_152
    monitor-exit v15
    :try_end_153
    .catchall {:try_start_110 .. :try_end_153} :catchall_21f

    if-eqz v14, :cond_15b

    .line 1512
    :try_start_155
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    goto/16 :goto_1b

    :cond_15b
    if-eqz v10, :cond_192

    .line 1521
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->createSurface()Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 1522
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v10

    monitor-enter v10
    :try_end_16a
    .catchall {:try_start_155 .. :try_end_16a} :catchall_222

    const/4 v0, 0x1

    .line 1523
    :try_start_16b
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1524
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1525
    monitor-exit v10

    const/4 v10, 0x0

    goto :goto_192

    :catchall_177
    move-exception v0

    monitor-exit v10
    :try_end_179
    .catchall {:try_start_16b .. :try_end_179} :catchall_177

    :try_start_179
    throw v0

    .line 1527
    :cond_17a
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_17f
    .catchall {:try_start_179 .. :try_end_17f} :catchall_222

    const/4 v0, 0x1

    .line 1528
    :try_start_180
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1529
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    .line 1530
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1531
    monitor-exit v15

    :cond_18c
    :goto_18c
    const/4 v0, 0x0

    goto/16 :goto_1c

    :catchall_18f
    move-exception v0

    monitor-exit v15
    :try_end_191
    .catchall {:try_start_180 .. :try_end_191} :catchall_18f

    :try_start_191
    throw v0

    :cond_192
    :goto_192
    if-eqz v11, :cond_1a5

    .line 1538
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 1540
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object v6, v0

    const/4 v11, 0x0

    :cond_1a5
    if-eqz v9, :cond_1bd

    .line 1548
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-eqz v0, :cond_1bc

    .line 1550
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    iget-object v9, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    iget-object v9, v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v6, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_1bc
    const/4 v9, 0x0

    :cond_1bd
    if-eqz v12, :cond_1d1

    .line 1559
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-eqz v0, :cond_1d0

    .line 1561
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v6, v7, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_1d0
    const/4 v12, 0x0

    .line 1570
    :cond_1d1
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-eqz v0, :cond_1e2

    .line 1572
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1575
    :cond_1e2
    iget-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->swap()I

    move-result v0

    const/16 v15, 0x3000

    if-eq v0, v15, :cond_20e

    const/16 v15, 0x300e

    if-eq v0, v15, :cond_20b

    const-string v15, "GLThread"

    const-string v2, "eglSwapBuffers"

    .line 1590
    invoke-static {v15, v2, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1592
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_1fc
    .catchall {:try_start_191 .. :try_end_1fc} :catchall_222

    const/4 v0, 0x1

    .line 1593
    :try_start_1fd
    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    .line 1594
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1595
    monitor-exit v2

    goto :goto_20f

    :catchall_208
    move-exception v0

    monitor-exit v2
    :try_end_20a
    .catchall {:try_start_1fd .. :try_end_20a} :catchall_208

    :try_start_20a
    throw v0
    :try_end_20b
    .catchall {:try_start_20a .. :try_end_20b} :catchall_222

    :cond_20b
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_20f

    :cond_20e
    const/4 v0, 0x1

    :goto_20f
    if-eqz v13, :cond_18c

    const/4 v4, 0x1

    goto/16 :goto_18c

    :cond_214
    move v10, v0

    .line 1507
    :cond_215
    :try_start_215
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_21

    :catchall_21f
    move-exception v0

    .line 1509
    monitor-exit v15
    :try_end_221
    .catchall {:try_start_215 .. :try_end_221} :catchall_21f

    :try_start_221
    throw v0
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_222

    :catchall_222
    move-exception v0

    .line 1608
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1609
    :try_start_228
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1611
    monitor-exit v2
    :try_end_22f
    .catchall {:try_start_228 .. :try_end_22f} :catchall_230

    throw v0

    :catchall_230
    move-exception v0

    :try_start_231
    monitor-exit v2
    :try_end_232
    .catchall {:try_start_231 .. :try_end_232} :catchall_230

    goto :goto_234

    :goto_233
    throw v0

    :goto_234
    goto :goto_233
.end method

.method private readyToDraw()Z
    .registers 3

    .line 1620
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    if-lez v0, :cond_1e

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method private stopEglContextLocked()V
    .registers 2

    .line 1313
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1314
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 1315
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    .line 1316
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .line 1302
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1303
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    .line 1304
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->destroySurface()V

    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .line 1616
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public getRenderMode()I
    .registers 3

    .line 1636
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1637
    :try_start_5
    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    .line 1638
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public onPause()V
    .registers 3

    .line 1686
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1690
    :try_start_6
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    .line 1691
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1692
    :goto_f
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-nez v1, :cond_27

    .line 1697
    :try_start_17
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_29

    goto :goto_f

    .line 1699
    :catch_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1702
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    goto :goto_2d

    :goto_2c
    throw v1

    :goto_2d
    goto :goto_2c
.end method

.method public onResume()V
    .registers 4

    .line 1706
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1710
    :try_start_6
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 1711
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1712
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    .line 1713
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1714
    :goto_14
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    if-nez v1, :cond_30

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_32

    if-nez v1, :cond_30

    .line 1719
    :try_start_20
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_32

    goto :goto_14

    .line 1721
    :catch_28
    :try_start_28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_14

    .line 1724
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    goto :goto_36

    :goto_35
    throw v1

    :goto_36
    goto :goto_35
.end method

.method public onWindowResize(II)V
    .registers 4

    .line 1728
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1729
    :try_start_5
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    .line 1730
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 1731
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    .line 1732
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 1733
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    .line 1734
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1737
    :goto_18
    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    if-nez p1, :cond_3a

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    if-nez p1, :cond_3a

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_3a

    .line 1738
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_3c

    if-eqz p1, :cond_3a

    .line 1743
    :try_start_2a
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_31} :catch_32
    .catchall {:try_start_2a .. :try_end_31} :catchall_3c

    goto :goto_18

    .line 1745
    :catch_32
    :try_start_32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_18

    .line 1748
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_3c

    goto :goto_40

    :goto_3f
    throw p1

    :goto_40
    goto :goto_3f
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4

    if-eqz p1, :cond_18

    .line 1780
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1781
    :try_start_7
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1783
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1

    .line 1778
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestExitAndWait()V
    .registers 3

    .line 1754
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1755
    :try_start_6
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldExit:Z

    .line 1756
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1757
    :goto_f
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_25

    if-nez v1, :cond_23

    .line 1759
    :try_start_13
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_25

    goto :goto_f

    .line 1761
    :catch_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1764
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    goto :goto_29

    :goto_28
    throw v1

    :goto_29
    goto :goto_28
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    const/4 v0, 0x1

    .line 1768
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldReleaseEglContext:Z

    .line 1769
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .registers 3

    .line 1642
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1643
    :try_start_6
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1644
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1645
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public run()V
    .registers 4

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->setName(Ljava/lang/String;)V

    .line 1289
    :try_start_18
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->guardedRun()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_23

    .line 1293
    :catch_1b
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    goto :goto_2c

    :catchall_23
    move-exception v0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    throw v0

    :goto_2c
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3

    if-ltz p1, :cond_18

    const/4 v0, 0x1

    if-gt p1, v0, :cond_18

    .line 1629
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1630
    :try_start_a
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    .line 1631
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1632
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw p1

    .line 1627
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceCreated()V
    .registers 3

    .line 1649
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1653
    :try_start_6
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    .line 1654
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1655
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1656
    :goto_12
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_2e

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_30

    if-nez v1, :cond_2e

    .line 1660
    :try_start_1e
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_26
    .catchall {:try_start_1e .. :try_end_25} :catchall_30

    goto :goto_12

    .line 1662
    :catch_26
    :try_start_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_12

    .line 1665
    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    goto :goto_34

    :goto_33
    throw v1

    :goto_34
    goto :goto_33
.end method

.method public surfaceDestroyed()V
    .registers 3

    .line 1669
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1673
    :try_start_6
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    .line 1674
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1675
    :goto_f
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-nez v1, :cond_27

    .line 1677
    :try_start_17
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_29

    goto :goto_f

    .line 1679
    :catch_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1682
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    goto :goto_2d

    :goto_2c
    throw v1

    :goto_2d
    goto :goto_2c
.end method
