.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaledNumericValue"
.end annotation


# instance fields
.field private highMax:F

.field private highMin:F

.field private relative:Z

.field private scaling:[F

.field timeline:[F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1359
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    const/4 v0, 0x1

    .line 1360
    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1361
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-void
.end method


# virtual methods
.method public getHighMax()F
    .registers 2

    .line 1388
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return v0
.end method

.method public getHighMin()F
    .registers 2

    .line 1380
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    return v0
.end method

.method public getScale(F)F
    .registers 8

    .line 1449
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1450
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_5
    const/4 v4, -0x1

    if-ge v3, v1, :cond_12

    .line 1452
    aget v5, v0, v3

    cmpl-float v5, v5, p1

    if-lez v5, :cond_f

    goto :goto_13

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    const/4 v3, -0x1

    :goto_13
    if-ne v3, v4, :cond_1b

    .line 1458
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    sub-int/2addr v1, v2

    aget p1, p1, v1

    return p1

    .line 1459
    :cond_1b
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    add-int/lit8 v2, v3, -0x1

    .line 1461
    aget v4, v1, v2

    .line 1462
    aget v2, v0, v2

    .line 1463
    aget v1, v1, v3

    sub-float/2addr v1, v4

    sub-float/2addr p1, v2

    aget v0, v0, v3

    sub-float/2addr v0, v2

    div-float/2addr p1, v0

    mul-float v1, v1, p1

    add-float/2addr v4, v1

    return v4
.end method

.method public getScaling()[F
    .registers 2

    .line 1424
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    return-object v0
.end method

.method public getTimeline()[F
    .registers 2

    .line 1432
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-object v0
.end method

.method public isRelative()Z
    .registers 2

    .line 1440
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V
    .registers 6

    .line 1495
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 1496
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1497
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1498
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1499
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1500
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1501
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1502
    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 1482
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    const-string v0, "highMin"

    .line 1483
    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    const-string v0, "highMax"

    .line 1484
    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    const-string v0, "relative"

    .line 1485
    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    const-string v0, "scalingCount"

    .line 1486
    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1487
    :goto_2c
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v3, v2

    if-ge v1, v3, :cond_4b

    .line 1488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scaling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_4b
    const-string v1, "timelineCount"

    .line 1489
    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1490
    :goto_55
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v1

    if-ge v0, v2, :cond_74

    .line 1491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_74
    return-void
.end method

.method public newHighValue()F
    .registers 4

    .line 1366
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    sub-float/2addr v1, v0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public save(Ljava/io/Writer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1467
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    .line 1468
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-nez v0, :cond_8

    return-void

    .line 1469
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "highMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "highMax: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relative: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scalingCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1473
    :goto_71
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v3, v3

    const-string v4, ": "

    if-ge v2, v3, :cond_9c

    .line 1474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scaling"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 1475
    :cond_9c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelineCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1476
    :goto_b6
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v2

    if-ge v0, v2, :cond_df

    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_df
    return-void
.end method

.method public scale(F)V
    .registers 3

    .line 1396
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->scale(F)V

    .line 1397
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1398
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V
    .registers 3

    .line 1402
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    if-eqz v0, :cond_a

    .line 1403
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    goto :goto_d

    .line 1405
    :cond_a
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    :goto_d
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V
    .registers 7

    .line 1409
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 1410
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1411
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1412
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v1, v0

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v3, v2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1c

    .line 1413
    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    goto :goto_20

    .line 1415
    :cond_1c
    array-length v1, v0

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1416
    :goto_20
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v1, v0

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v3, v2

    if-eq v1, v3, :cond_30

    .line 1417
    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    goto :goto_34

    .line 1419
    :cond_30
    array-length v1, v0

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1420
    :goto_34
    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    return-void
.end method

.method public setHigh(F)V
    .registers 2

    .line 1370
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1371
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return-void
.end method

.method public setHigh(FF)V
    .registers 3

    .line 1375
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1376
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return-void
.end method

.method public setHighMax(F)V
    .registers 2

    .line 1392
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return-void
.end method

.method public setHighMin(F)V
    .registers 2

    .line 1384
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    return-void
.end method

.method public setRelative(Z)V
    .registers 2

    .line 1444
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    return-void
.end method

.method public setScaling([F)V
    .registers 2

    .line 1428
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    return-void
.end method

.method public setTimeline([F)V
    .registers 2

    .line 1436
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-void
.end method
