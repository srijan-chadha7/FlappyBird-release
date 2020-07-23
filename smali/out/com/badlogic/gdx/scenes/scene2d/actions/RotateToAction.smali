.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "RotateToAction.java"


# instance fields
.field private end:F

.field private start:F

.field private useShortestDirection:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    .line 42
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    return-void
.end method


# virtual methods
.method protected begin()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    return-void
.end method

.method public getRotation()F
    .registers 2

    .line 65
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    return v0
.end method

.method public isUseShortestDirection()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    return v0
.end method

.method public setRotation(F)V
    .registers 2

    .line 69
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    return-void
.end method

.method public setUseShortestDirection(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    return-void
.end method

.method protected update(F)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    .line 54
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    goto :goto_27

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    .line 56
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    goto :goto_27

    .line 57
    :cond_11
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->useShortestDirection:Z

    if-eqz v0, :cond_1e

    .line 58
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/math/MathUtils;->lerpAngleDeg(FFF)F

    move-result p1

    goto :goto_27

    .line 60
    :cond_1e
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float p1, v0, v1

    .line 61
    :goto_27
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    return-void
.end method
