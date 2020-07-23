.class public Lcom/badlogic/gdx/math/FloatCounter;
.super Ljava/lang/Object;
.source "FloatCounter.java"


# instance fields
.field public average:F

.field public count:I

.field public latest:F

.field public max:F

.field public final mean:Lcom/badlogic/gdx/math/WindowedMean;

.field public min:F

.field public total:F

.field public value:F


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-le p1, v0, :cond_c

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/WindowedMean;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/WindowedMean;-><init>(I)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    .line 47
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    return-void
.end method


# virtual methods
.method public put(F)V
    .registers 4

    .line 53
    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    .line 56
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_25

    .line 59
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/WindowedMean;->addValue(F)V

    .line 60
    iget-object p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    goto :goto_29

    .line 62
    :cond_25
    iget p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    .line 64
    :goto_29
    iget-object p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 65
    :cond_33
    iget p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3d

    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    .line 66
    :cond_3d
    iget p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_47

    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    :cond_47
    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 74
    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    const v1, -0x800001

    .line 75
    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    .line 76
    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    .line 77
    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    .line 78
    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->clear()V

    :cond_1d
    return-void
.end method
