.class public Lcom/badlogic/gdx/utils/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Timer$TimerThread;,
        Lcom/badlogic/gdx/utils/Timer$Task;
    }
.end annotation


# static fields
.field static thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

.field static final threadLock:Ljava/lang/Object;


# instance fields
.field final tasks:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Timer$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    .line 57
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer;->start()V

    return-void
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Timer;
    .registers 3

    .line 37
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_3
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->thread()Lcom/badlogic/gdx/utils/Timer$TimerThread;

    move-result-object v1

    .line 39
    iget-object v2, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instance:Lcom/badlogic/gdx/utils/Timer;

    if-nez v2, :cond_12

    new-instance v2, Lcom/badlogic/gdx/utils/Timer;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Timer;-><init>()V

    iput-object v2, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instance:Lcom/badlogic/gdx/utils/Timer;

    .line 40
    :cond_12
    iget-object v1, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instance:Lcom/badlogic/gdx/utils/Timer;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static post(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 2

    .line 167
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Timer;->postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 3

    .line 173
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 4

    .line 179
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 5

    .line 185
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method private static thread()Lcom/badlogic/gdx/utils/Timer$TimerThread;
    .registers 3

    .line 45
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->files:Lcom/badlogic/gdx/Files;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-eq v1, v2, :cond_1f

    .line 47
    :cond_f
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Timer$TimerThread;->dispose()V

    .line 48
    :cond_18
    new-instance v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Timer$TimerThread;-><init>()V

    sput-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    .line 50
    :cond_1f
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 114
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_6
    if-ge v0, v1, :cond_1f

    .line 115
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    .line 116
    monitor-enter v2
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_26

    const-wide/16 v3, 0x0

    .line 117
    :try_start_13
    iput-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    const/4 v3, 0x0

    .line 118
    iput-object v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    .line 119
    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catchall_1c
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0

    .line 121
    :cond_1f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_26

    .line 122
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    goto :goto_2a

    :goto_29
    throw v0

    :goto_2a
    goto :goto_29
.end method

.method public declared-synchronized delay(J)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 156
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_6
    if-ge v0, v1, :cond_1d

    .line 157
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    .line 158
    monitor-enter v2
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_1f

    .line 159
    :try_start_11
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 160
    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catchall_1a
    move-exception p1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1f

    .line 162
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    goto :goto_23

    :goto_22
    throw p1

    :goto_23
    goto :goto_22
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 5

    const/4 v0, -0x1

    .line 72
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .registers 10

    .line 78
    monitor-enter p0

    .line 79
    :try_start_1
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_3e

    .line 80
    :try_start_2
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    if-nez v0, :cond_33

    .line 81
    iput-object p0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float p2, p2, v2

    float-to-long v3, p2

    add-long/2addr v0, v3

    iput-wide v0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    mul-float p3, p3, v2

    float-to-long p2, p3

    .line 83
    iput-wide p2, p1, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    .line 84
    iput p4, p1, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    .line 85
    iget-object p2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 86
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_3b

    .line 87
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_3e

    .line 88
    sget-object p2, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter p2

    .line 89
    :try_start_29
    sget-object p3, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p2

    return-object p1

    :catchall_30
    move-exception p1

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw p1

    .line 80
    :cond_33
    :try_start_33
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "The same task may not be scheduled twice."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_3b
    move-exception p2

    .line 86
    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw p2

    :catchall_3e
    move-exception p1

    .line 87
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public start()V
    .registers 4

    .line 103
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->thread()Lcom/badlogic/gdx/utils/Timer$TimerThread;

    move-result-object v1

    .line 105
    iget-object v1, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    .line 106
    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    monitor-exit v0

    return-void

    .line 107
    :cond_12
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 108
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 109
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public stop()V
    .registers 4

    .line 96
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->thread()Lcom/badlogic/gdx/utils/Timer$TimerThread;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->instances:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 98
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method declared-synchronized update(JJ)J
    .registers 11

    monitor-enter p0

    const/4 v0, 0x0

    .line 131
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_6
    if-ge v0, v1, :cond_52

    .line 132
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    .line 133
    monitor-enter v2
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_54

    .line 134
    :try_start_11
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_20

    .line 135
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    sub-long/2addr v3, p1

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 136
    monitor-exit v2

    goto :goto_4c

    .line 138
    :cond_20
    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-nez v3, :cond_31

    const/4 v3, 0x0

    .line 139
    iput-object v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->timer:Lcom/badlogic/gdx/utils/Timer;

    .line 140
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 144
    :cond_31
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 145
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 146
    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-lez v3, :cond_46

    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    .line 148
    :cond_46
    :goto_46
    iget-object v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 149
    monitor-exit v2

    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catchall_4f
    move-exception p1

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_11 .. :try_end_51} :catchall_4f

    :try_start_51
    throw p1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_54

    .line 151
    :cond_52
    monitor-exit p0

    return-wide p3

    :catchall_54
    move-exception p1

    monitor-exit p0

    goto :goto_58

    :goto_57
    throw p1

    :goto_58
    goto :goto_57
.end method
