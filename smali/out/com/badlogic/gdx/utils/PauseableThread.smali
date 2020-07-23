.class public Lcom/badlogic/gdx/utils/PauseableThread;
.super Ljava/lang/Thread;
.source "PauseableThread.java"


# instance fields
.field exit:Z

.field paused:Z

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    .line 26
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->exit:Z

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/utils/PauseableThread;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public isPaused()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    return v0
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 59
    monitor-enter p0

    const/4 v0, 0x0

    .line 60
    :try_start_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 2

    .line 37
    :goto_0
    monitor-enter p0

    .line 39
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    if-eqz v0, :cond_f

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_b
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    :catchall_9
    move-exception v0

    goto :goto_1b

    :catch_b
    move-exception v0

    .line 42
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 44
    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_9

    .line 46
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->exit:Z

    if-eqz v0, :cond_15

    return-void

    .line 48
    :cond_15
    iget-object v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 44
    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_9

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method public stopThread()V
    .registers 2

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->exit:Z

    .line 73
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/PauseableThread;->paused:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PauseableThread;->onResume()V

    :cond_a
    return-void
.end method
