.class public Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;
.source "DelayAction.java"


# instance fields
.field private duration:F

.field private time:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;-><init>()V

    .line 28
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    return-void
.end method


# virtual methods
.method protected delegate(F)Z
    .registers 5

    .line 32
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_14

    add-float/2addr v0, p1

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    .line 34
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    cmpg-float v0, p1, v1

    if-gez v0, :cond_13

    const/4 p1, 0x0

    return p1

    :cond_13
    sub-float/2addr p1, v1

    .line 37
    :cond_14
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-nez v0, :cond_1a

    const/4 p1, 0x1

    return p1

    .line 38
    :cond_1a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .registers 2

    .line 43
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    return-void
.end method

.method public getDuration()F
    .registers 2

    .line 62
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    return v0
.end method

.method public getTime()F
    .registers 2

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    return v0
.end method

.method public restart()V
    .registers 2

    .line 47
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;->restart()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    return-void
.end method

.method public setDuration(F)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->duration:F

    return-void
.end method

.method public setTime(F)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->time:F

    return-void
.end method
