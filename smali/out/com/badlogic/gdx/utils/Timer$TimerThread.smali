.class Lcom/badlogic/gdx/utils/Timer$TimerThread;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimerThread"
.end annotation


# instance fields
.field final files:Lcom/badlogic/gdx/Files;

.field instance:Lcom/badlogic/gdx/utils/Timer;

.field final instances:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private pauseMillis:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    .line 253
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->files:Lcom/badlogic/gdx/Files;

    .line 254
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 255
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer$TimerThread;->resume()V

    .line 257
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "Timer"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 308
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-ne v1, p0, :cond_a

    const/4 v1, 0x0

    sput-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    .line 310
    :cond_a
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 311
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 312
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    .line 313
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Application;->removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void

    :catchall_1b
    move-exception v1

    .line 312
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public pause()V
    .registers 6

    .line 301
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseMillis:J

    .line 303
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public resume()V
    .registers 7

    .line 291
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseMillis:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    .line 293
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_13
    if-ge v3, v4, :cond_23

    .line 294
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v5, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->delay(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_23
    const-wide/16 v1, 0x0

    .line 295
    iput-wide v1, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseMillis:J

    .line 296
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 297
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    goto :goto_32

    :goto_31
    throw v1

    :goto_32
    goto :goto_31
.end method

.method public run()V
    .registers 11

    .line 264
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-ne v1, p0, :cond_76

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->files:Lcom/badlogic/gdx/Files;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-eq v1, v2, :cond_e

    goto :goto_76

    :cond_e
    const-wide/16 v1, 0x1388

    .line 268
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->pauseMillis:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_5e

    .line 269
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v7, 0xf4240

    div-long/2addr v3, v7

    const/4 v7, 0x0

    .line 270
    iget-object v8, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_7b

    :goto_25
    if-ge v7, v8, :cond_5e

    .line 272
    :try_start_27
    iget-object v9, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v9, v3, v4, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->update(JJ)J

    move-result-wide v1
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_33} :catch_36
    .catchall {:try_start_27 .. :try_end_33} :catchall_7b

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :catch_36
    move-exception v1

    .line 274
    :try_start_37
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 279
    :cond_5e
    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-ne v3, p0, :cond_74

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer$TimerThread;->files:Lcom/badlogic/gdx/Files;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    :try_end_66
    .catchall {:try_start_37 .. :try_end_66} :catchall_7b

    if-eq v3, v4, :cond_69

    goto :goto_74

    :cond_69
    cmp-long v3, v1, v5

    if-lez v3, :cond_72

    .line 282
    :try_start_6d
    sget-object v3, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6d .. :try_end_72} :catch_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_7b

    .line 285
    :catch_72
    :cond_72
    :try_start_72
    monitor-exit v0

    goto :goto_0

    .line 279
    :cond_74
    :goto_74
    monitor-exit v0

    goto :goto_77

    .line 265
    :cond_76
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_7b

    .line 287
    :goto_77
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer$TimerThread;->dispose()V

    return-void

    :catchall_7b
    move-exception v1

    .line 285
    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    goto :goto_7f

    :goto_7e
    throw v1

    :goto_7f
    goto :goto_7e
.end method
