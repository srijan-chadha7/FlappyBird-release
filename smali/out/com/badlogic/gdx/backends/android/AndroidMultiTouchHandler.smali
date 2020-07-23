.class public Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;
.super Ljava/lang/Object;
.source "AndroidMultiTouchHandler.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logAction(II)V
    .registers 6

    if-nez p1, :cond_5

    const-string p1, "DOWN"

    goto :goto_3f

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    const-string p1, "POINTER DOWN"

    goto :goto_3f

    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    const-string p1, "UP"

    goto :goto_3f

    :cond_11
    const/4 v0, 0x6

    if-ne p1, v0, :cond_17

    const-string p1, "POINTER UP"

    goto :goto_3f

    :cond_17
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1d

    const-string p1, "OUTSIDE"

    goto :goto_3f

    :cond_1d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_23

    const-string p1, "CANCEL"

    goto :goto_3f

    :cond_23
    const/4 v0, 0x2

    if-ne p1, v0, :cond_29

    const-string p1, "MOVE"

    goto :goto_3f

    .line 138
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    :goto_3f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Android pointer id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AndroidMultiTouchHandler"

    invoke-interface {v0, p2, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V
    .registers 10

    .line 152
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 153
    iput-wide p7, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    .line 154
    iput p5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    .line 155
    iput p3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    .line 156
    iput p4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    .line 157
    iput p2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    .line 158
    iput p6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->button:I

    .line 159
    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private toGdxButton(I)I
    .registers 4

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1b

    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    return v0

    :cond_a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    return v1

    :cond_e
    const/16 v1, 0x8

    if-ne p1, v1, :cond_14

    const/4 p1, 0x3

    return p1

    :cond_14
    const/16 v1, 0x10

    if-ne p1, v1, :cond_19

    return v0

    :cond_19
    const/4 p1, -0x1

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)V
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v11, v2, 0x8

    .line 34
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 41
    monitor-enter p2

    const/4 v9, 0x0

    const/16 v14, 0x14

    const/4 v15, -0x1

    const/16 v16, 0x0

    packed-switch v1, :pswitch_data_1a0

    goto/16 :goto_190

    :pswitch_28
    const/4 v0, 0x0

    .line 82
    :goto_29
    :try_start_29
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_190

    .line 83
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aput v15, v1, v0

    .line 84
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v16, v1, v0

    .line 85
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v16, v1, v0

    .line 86
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    aput v16, v1, v0

    .line 87
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    aput v16, v1, v0

    .line 88
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    aput-boolean v16, v1, v0

    .line 89
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aput v16, v1, v0

    .line 90
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->pressure:[F

    aput v9, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 95
    :pswitch_51
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v8, 0x0

    :goto_56
    if-ge v8, v11, :cond_190

    .line 98
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 99
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v9, v2

    .line 100
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v7, v2

    .line 101
    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->lookUpPointerIndex(I)I

    move-result v6

    if-ne v6, v15, :cond_6e

    move v14, v8

    goto :goto_c8

    :cond_6e
    if-lt v6, v14, :cond_72

    goto/16 :goto_190

    .line 104
    :cond_72
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aget v5, v1, v6

    if-eq v5, v15, :cond_8f

    const/4 v3, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v9

    move/from16 v16, v5

    move v5, v7

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v7, v16

    move v14, v8

    move/from16 v16, v9

    move-wide v8, v12

    .line 106
    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V

    goto :goto_a4

    :cond_8f
    move/from16 v17, v6

    move/from16 v18, v7

    move v14, v8

    move/from16 v16, v9

    const/4 v3, 0x4

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v4, v16

    move/from16 v5, v18

    move-wide v8, v12

    .line 108
    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V

    .line 109
    :goto_a4
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    iget-object v2, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aget v2, v2, v17

    sub-int v9, v16, v2

    aput v9, v1, v17

    .line 110
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    iget-object v2, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aget v2, v2, v17

    sub-int v7, v18, v2

    aput v7, v1, v17

    .line 111
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v16, v1, v17

    .line 112
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v18, v1, v17

    .line 113
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->pressure:[F

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    aput v2, v1, v17

    :goto_c8
    add-int/lit8 v8, v14, 0x1

    const/16 v14, 0x14

    goto :goto_56

    .line 64
    :pswitch_cd
    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->lookUpPointerIndex(I)I

    move-result v14

    if-ne v14, v15, :cond_d5

    goto/16 :goto_190

    :cond_d5
    const/16 v1, 0x14

    if-lt v14, v1, :cond_db

    goto/16 :goto_190

    .line 67
    :cond_db
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aput v15, v1, v14

    .line 68
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v7, v1

    .line 69
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v11, v0

    .line 70
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aget v6, v0, v14

    if-eq v6, v15, :cond_fd

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v3, v7

    move v4, v11

    move v5, v14

    move v15, v7

    move-wide v7, v12

    .line 71
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V

    goto :goto_fe

    :cond_fd
    move v15, v7

    .line 72
    :goto_fe
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v15, v0, v14

    .line 73
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v11, v0, v14

    .line 74
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    aput v16, v0, v14

    .line 75
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    aput v16, v0, v14

    .line 76
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    aput-boolean v16, v0, v14

    .line 77
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aput v16, v0, v14

    .line 78
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->pressure:[F

    aput v9, v0, v14

    goto/16 :goto_190

    .line 45
    :pswitch_11c
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->getFreePointerIndex()I

    move-result v14

    const/16 v1, 0x14

    if-lt v14, v1, :cond_126

    goto/16 :goto_190

    .line 47
    :cond_126
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aput v2, v1, v14

    .line 48
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v8, v1

    .line 49
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v9, v1

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_136
    .catchall {:try_start_29 .. :try_end_136} :catchall_19b

    const/16 v2, 0xe

    if-lt v1, v2, :cond_14a

    :try_start_13a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1
    :try_end_13e
    .catchall {:try_start_13a .. :try_end_13e} :catchall_146

    move-object/from16 v7, p0

    :try_start_140
    invoke-direct {v7, v1}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->toGdxButton(I)I

    move-result v1

    move v6, v1

    goto :goto_14d

    :catchall_146
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_19c

    :cond_14a
    move-object/from16 v7, p0

    const/4 v6, 0x0

    :goto_14d
    if-eq v6, v15, :cond_164

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v8

    move v5, v9

    move/from16 v17, v6

    move v6, v14

    move/from16 v7, v17

    move/from16 v18, v8

    move/from16 v19, v9

    move-wide v8, v12

    .line 51
    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V

    goto :goto_16a

    :cond_164
    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    .line 52
    :goto_16a
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v18, v1, v14

    .line 53
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v19, v1, v14

    .line 54
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    aput v16, v1, v14

    .line 55
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    aput v16, v1, v14

    .line 56
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    move/from16 v2, v17

    if-eq v2, v15, :cond_182

    const/16 v16, 0x1

    :cond_182
    aput-boolean v16, v1, v14

    .line 57
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aput v2, v1, v14

    .line 58
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/AndroidInput;->pressure:[F

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    aput v0, v1, v14

    .line 117
    :cond_190
    :goto_190
    monitor-exit p2
    :try_end_191
    .catchall {:try_start_140 .. :try_end_191} :catchall_19b

    .line 118
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    return-void

    :catchall_19b
    move-exception v0

    .line 117
    :goto_19c
    :try_start_19c
    monitor-exit p2
    :try_end_19d
    .catchall {:try_start_19c .. :try_end_19d} :catchall_19b

    goto :goto_19f

    :goto_19e
    throw v0

    :goto_19f
    goto :goto_19e

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_11c
        :pswitch_cd
        :pswitch_51
        :pswitch_28
        :pswitch_cd
        :pswitch_11c
        :pswitch_cd
    .end packed-switch
.end method

.method public supportsMultitouch(Landroid/content/Context;)Z
    .registers 3

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.touchscreen.multitouch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
