.class public Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;
.super Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;,
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    }
.end annotation


# instance fields
.field public allowSameAnimation:Z

.field protected final animationPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;",
            ">;"
        }
    .end annotation
.end field

.field public current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public inAction:Z

.field private justChangedAnimation:Z

.field public paused:Z

.field public previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queuedTransitionTime:F

.field public transitionCurrentTime:F

.field public transitionTargetTime:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V

    .line 106
    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    return-void
.end method

.method private obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 8

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 144
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 145
    iput-object p6, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 146
    iput p4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    .line 147
    iput p5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    .line 148
    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    const/4 p4, 0x0

    cmpg-float p6, p3, p4

    if-gez p6, :cond_1f

    .line 149
    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    sub-float p3, p1, p2

    :cond_1f
    iput p3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    cmpg-float p1, p5, p4

    if-gez p1, :cond_27

    .line 150
    iget p4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    :cond_27
    iput p4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    return-object v0
.end method

.method private obtain(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9

    .line 163
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method private obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 15

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v2

    if-eqz v2, :cond_17

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 159
    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1

    .line 158
    :cond_17
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown animation: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method protected action(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 8

    .line 472
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method protected action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5

    .line 477
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-ltz v0, :cond_2c

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_28

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v0, :cond_d

    goto :goto_28

    .line 481
    :cond_d
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    goto :goto_19

    :cond_13
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    :goto_19
    const/4 v1, 0x0

    .line 482
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 483
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v1, 0x1

    .line 484
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v0, :cond_2b

    .line 485
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_2b

    .line 479
    :cond_28
    :goto_28
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    :cond_2b
    :goto_2b
    return-object p1

    .line 477
    :cond_2c
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "An action cannot be continuous"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 8

    .line 466
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public action(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 14

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 448
    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method protected animate(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 8

    .line 355
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method protected animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-nez v0, :cond_7

    .line 361
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_46

    .line 362
    :cond_7
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v1, :cond_f

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_46

    .line 364
    :cond_f
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v1, :cond_2b

    if-eqz p1, :cond_2b

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v0, v1, :cond_2b

    .line 365
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget p2, p2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 366
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 367
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_46

    .line 369
    :cond_2b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_3b

    .line 370
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 373
    :cond_3b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 374
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v0, 0x0

    .line 375
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    .line 376
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    :goto_46
    return-object p1
.end method

.method public animate(Ljava/lang/String;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 9

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 293
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 8

    .line 349
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 14

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 331
    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public animate(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 11

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 315
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public animate(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 10

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 303
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method protected queue(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 8

    .line 419
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method protected queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_22

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v0, :cond_9

    goto :goto_22

    .line 427
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 428
    :cond_12
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 429
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    .line 430
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget p2, p2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-gez p2, :cond_25

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v0, 0x1

    iput v0, p2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    goto :goto_25

    .line 425
    :cond_22
    :goto_22
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    :cond_25
    :goto_25
    return-object p1
.end method

.method public queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 8

    .line 413
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public queue(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 14

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 394
    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method protected setAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 7

    .line 268
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method protected setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-nez v0, :cond_7

    .line 274
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_2a

    .line 276
    :cond_7
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v1, :cond_1a

    if-eqz p1, :cond_1a

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v0, v1, :cond_1a

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    goto :goto_21

    .line 279
    :cond_1a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 280
    :goto_21
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 281
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    :goto_2a
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 201
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 7

    .line 262
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 12

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 245
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 231
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .registers 5

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 220
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public update(F)V
    .registers 8

    .line 169
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->paused:Z

    if-eqz v0, :cond_5

    return-void

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_26

    .line 171
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 174
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 176
    :cond_26
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 178
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 180
    :cond_32
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_96

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-nez v0, :cond_41

    goto :goto_96

    .line 181
    :cond_41
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->update(F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5d

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_5d

    .line 183
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 184
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 185
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 186
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->update(F)V

    return-void

    .line 189
    :cond_5d
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz p1, :cond_86

    .line 190
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float v2, p1, v0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float v4, p1, v0

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    div-float v5, p1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->applyAnimations(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FLcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V

    goto :goto_96

    .line 193
    :cond_86
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    :cond_96
    :goto_96
    return-void
.end method
