.class public Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "IntAction.java"


# instance fields
.field private end:I

.field private start:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 35
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    .line 36
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    .line 41
    invoke-direct {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(F)V

    .line 42
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    .line 43
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method

.method public constructor <init>(IIFLcom/badlogic/gdx/math/Interpolation;)V
    .registers 5

    .line 48
    invoke-direct {p0, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(FLcom/badlogic/gdx/math/Interpolation;)V

    .line 49
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    .line 50
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method


# virtual methods
.method protected begin()V
    .registers 2

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    return-void
.end method

.method public getEnd()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    return v0
.end method

.method public getValue()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    return v0
.end method

.method public setEnd(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method

.method public setStart(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    return-void
.end method

.method public setValue(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    return-void
.end method

.method protected update(F)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_a

    .line 59
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    goto :goto_22

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_15

    .line 61
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    goto :goto_22

    .line 63
    :cond_15
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    :goto_22
    return-void
.end method
