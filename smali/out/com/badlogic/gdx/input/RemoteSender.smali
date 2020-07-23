.class public Lcom/badlogic/gdx/input/RemoteSender;
.super Ljava/lang/Object;
.source "RemoteSender.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# static fields
.field public static final ACCEL:I = 0x6

.field public static final COMPASS:I = 0x7

.field public static final GYRO:I = 0x9

.field public static final KEY_DOWN:I = 0x0

.field public static final KEY_TYPED:I = 0x2

.field public static final KEY_UP:I = 0x1

.field public static final SIZE:I = 0x8

.field public static final TOUCH_DOWN:I = 0x3

.field public static final TOUCH_DRAGGED:I = 0x5

.field public static final TOUCH_UP:I = 0x4


# instance fields
.field private connected:Z

.field private out:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    .line 49
    :try_start_6
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v2, 0xbb8

    .line 51
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 52
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    sget-object v3, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 54
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    .line 55
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    goto :goto_54

    .line 57
    :catch_34
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteSender"

    invoke-interface {v0, p2, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .registers 2

    .line 206
    monitor-enter p0

    .line 207
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 208
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public keyDown(I)Z
    .registers 4

    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    monitor-exit p0

    return v1

    .line 91
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1c

    .line 94
    :try_start_9
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_18

    .line 97
    :catch_14
    monitor-enter p0

    .line 98
    :try_start_15
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    .line 99
    monitor-exit p0

    :goto_18
    return v1

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw p1

    :catchall_1c
    move-exception p1

    .line 91
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public keyTyped(C)Z
    .registers 5

    .line 123
    monitor-enter p0

    .line 124
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    monitor-exit p0

    return v1

    .line 125
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 128
    :try_start_9
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_19

    .line 131
    :catch_15
    monitor-enter p0

    .line 132
    :try_start_16
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    .line 133
    monitor-exit p0

    :goto_19
    return v1

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw p1

    :catchall_1d
    move-exception p1

    .line 125
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public keyUp(I)Z
    .registers 5

    .line 106
    monitor-enter p0

    .line 107
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    monitor-exit p0

    return v1

    .line 108
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 111
    :try_start_9
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_19

    .line 114
    :catch_15
    monitor-enter p0

    .line 115
    :try_start_16
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    .line 116
    monitor-exit p0

    :goto_19
    return v1

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw p1

    :catchall_1d
    move-exception p1

    .line 108
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public mouseMoved(II)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public scrolled(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public sendUpdate()V
    .registers 3

    .line 62
    monitor-enter p0

    .line 63
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 64
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a5

    .line 66
    :try_start_8
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getAccelerometerX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getAccelerometerY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getAccelerometerZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getAzimuth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getPitch()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getRoll()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getGyroscopeX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getGyroscopeY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getGyroscopeZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_9d} :catch_9e

    goto :goto_a4

    :catch_9e
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    :goto_a4
    return-void

    :catchall_a5
    move-exception v0

    .line 64
    :try_start_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method public touchDown(IIII)Z
    .registers 7

    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    iget-boolean p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    const/4 v0, 0x0

    if-nez p4, :cond_8

    monitor-exit p0

    return v0

    .line 142
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    .line 145
    :try_start_9
    iget-object p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x3

    invoke-virtual {p4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 146
    iget-object p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 147
    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 148
    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_23

    .line 150
    :catch_1f
    monitor-enter p0

    .line 151
    :try_start_20
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    .line 152
    monitor-exit p0

    :goto_23
    return v0

    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw p1

    :catchall_27
    move-exception p1

    .line 142
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public touchDragged(III)Z
    .registers 7

    .line 178
    monitor-enter p0

    .line 179
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    monitor-exit p0

    return v1

    .line 180
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    .line 183
    :try_start_9
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 185
    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 186
    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_23

    .line 188
    :catch_1f
    monitor-enter p0

    .line 189
    :try_start_20
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    .line 190
    monitor-exit p0

    :goto_23
    return v1

    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw p1

    :catchall_27
    move-exception p1

    .line 180
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public touchUp(IIII)Z
    .registers 7

    .line 159
    monitor-enter p0

    .line 160
    :try_start_1
    iget-boolean p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    const/4 v0, 0x0

    if-nez p4, :cond_8

    monitor-exit p0

    return v0

    .line 161
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    .line 164
    :try_start_9
    iget-object p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 165
    iget-object p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 166
    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 167
    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_23

    .line 169
    :catch_1f
    monitor-enter p0

    .line 170
    :try_start_20
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->connected:Z

    .line 171
    monitor-exit p0

    :goto_23
    return v0

    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw p1

    :catchall_27
    move-exception p1

    .line 161
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method
