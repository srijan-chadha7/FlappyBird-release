.class public final Lcom/badlogic/gdx/math/WindowedMean;
.super Ljava/lang/Object;
.source "WindowedMean.java"


# instance fields
.field added_values:I

.field dirty:Z

.field last_value:I

.field mean:F

.field values:[F


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 36
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    return-void
.end method


# virtual methods
.method public addValue(F)V
    .registers 6

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_b

    add-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    .line 58
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    aput p1, v0, v1

    .line 59
    iget p1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    array-length v0, v0

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1e

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    .line 60
    :cond_1e
    iput-boolean v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    .line 47
    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    .line 48
    :goto_5
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v2, v1

    if-ge v0, v2, :cond_10

    const/4 v2, 0x0

    .line 49
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    return-void
.end method

.method public getHighest()F
    .registers 5

    const/high16 v0, 0x800000

    const/4 v1, 0x0

    .line 113
    :goto_3
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 114
    aget v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    return v0
.end method

.method public getLatest()F
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    array-length v1, v0

    :cond_a
    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLowest()F
    .registers 5

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    .line 106
    :goto_4
    iget-object v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v3, v2

    if-ge v1, v3, :cond_12

    .line 107
    aget v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return v0
.end method

.method public getMean()F
    .registers 6

    .line 67
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 68
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    :goto_e
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v4, v3

    if-ge v1, v4, :cond_19

    .line 71
    aget v3, v3, v1

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 73
    :cond_19
    array-length v1, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    .line 74
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    .line 76
    :cond_20
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    return v0

    :cond_23
    return v1
.end method

.method public getOldest()F
    .registers 4

    .line 83
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v2, v1

    if-ge v0, v2, :cond_b

    const/4 v0, 0x0

    aget v0, v1, v0

    goto :goto_f

    :cond_b
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    aget v0, v1, v0

    :goto_f
    return v0
.end method

.method public getValueCount()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    return v0
.end method

.method public getWindowSize()I
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v0, v0

    return v0
.end method

.method public getWindowValues()[F
    .registers 6

    .line 129
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    new-array v0, v0, [F

    .line 130
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 131
    :goto_b
    array-length v1, v0

    if-ge v2, v1, :cond_23

    .line 132
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/2addr v3, v2

    array-length v4, v1

    rem-int/2addr v3, v4

    aget v1, v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 135
    :cond_1c
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    return-object v0
.end method

.method public hasEnoughData()Z
    .registers 3

    .line 41
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public standardDeviation()F
    .registers 6

    .line 93
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 95
    :cond_8
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v0

    const/4 v2, 0x0

    .line 97
    :goto_d
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1e

    .line 98
    aget v4, v3, v2

    sub-float/2addr v4, v0

    aget v3, v3, v2

    sub-float/2addr v3, v0

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 101
    :cond_1e
    array-length v0, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
