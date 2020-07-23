.class public Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "AlphaAction.java"


# instance fields
.field private color:Lcom/badlogic/gdx/graphics/Color;

.field private end:F

.field private start:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 31
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 59
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 44
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected update(F)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    .line 36
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_25

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_19

    .line 38
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_25

    .line 40
    :cond_19
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    :goto_25
    return-void
.end method