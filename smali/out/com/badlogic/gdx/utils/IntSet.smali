.class public Lcom/badlogic/gdx/utils/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field hasZeroValue:Z

.field private hashShift:I

.field private iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field keyTable:[I

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const v0, 0x3f4ccccd    # 0.8f

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_96

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-double v0, p1

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_7f

    .line 67
    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-lez p1, :cond_68

    .line 70
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    .line 72
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 73
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x1f

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    const/4 p1, 0x3

    .line 75
    iget p2, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    .line 76
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    div-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->pushIterations:I

    .line 78
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    add-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    return-void

    .line 69
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFactor must be > 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_7f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialCapacity is too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 64
    :cond_96
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialCapacity must be >= 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .registers 6

    .line 83
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 84
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 85
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 87
    iget-boolean p1, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return-void
.end method

.method private addResize(I)V
    .registers 12

    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 171
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return-void

    .line 176
    :cond_6
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v4, p1, v1

    .line 177
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v5, v1, v4

    if-nez v5, :cond_23

    .line 179
    aput p1, v1, v4

    .line 180
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, v1, :cond_22

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_22
    return-void

    .line 184
    :cond_23
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v6

    .line 185
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v7, v1, v6

    if-nez v7, :cond_40

    .line 187
    aput p1, v1, v6

    .line 188
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, v1, :cond_3f

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_3f
    return-void

    .line 192
    :cond_40
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v8

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v9, v1, v8

    if-nez v9, :cond_5d

    .line 195
    aput p1, v1, v8

    .line 196
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, v1, :cond_5c

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_5c
    return-void

    :cond_5d
    move-object v2, p0

    move v3, p1

    .line 200
    invoke-direct/range {v2 .. v9}, Lcom/badlogic/gdx/utils/IntSet;->push(IIIIIII)V

    return-void
.end method

.method private addStash(I)V
    .registers 5

    .line 262
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    if-ne v0, v1, :cond_11

    .line 264
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 265
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->addResize(I)V

    return-void

    .line 269
    :cond_11
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    add-int/2addr v1, v0

    .line 270
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput p1, v2, v1

    add-int/lit8 v0, v0, 0x1

    .line 271
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 272
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return-void
.end method

.method private containsKeyStash(I)Z
    .registers 6

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 383
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v2, v1

    :goto_7
    if-ge v1, v2, :cond_12

    .line 384
    aget v3, v0, v1

    if-ne v3, p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private hash2(I)I
    .registers 3

    const v0, -0x4b47d1c7

    mul-int p1, p1, v0

    .line 431
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private hash3(I)I
    .registers 3

    const v0, -0x312e3dbf

    mul-int p1, p1, v0

    .line 436
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private push(IIIIIII)V
    .registers 14

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 206
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 210
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->pushIterations:I

    const/4 v3, 0x0

    :cond_7
    const/4 v4, 0x2

    .line 213
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_19

    if-eq v4, v5, :cond_15

    .line 224
    aput p1, v0, p6

    move p1, p7

    goto :goto_1c

    .line 220
    :cond_15
    aput p1, v0, p4

    move p1, p5

    goto :goto_1c

    .line 216
    :cond_19
    aput p1, v0, p2

    move p1, p3

    :goto_1c
    and-int p2, p1, v1

    .line 230
    aget p3, v0, p2

    if-nez p3, :cond_35

    .line 232
    aput p1, v0, p2

    .line 233
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, p2, :cond_34

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr p1, v5

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_34
    return-void

    .line 237
    :cond_35
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result p4

    .line 238
    aget p5, v0, p4

    if-nez p5, :cond_50

    .line 240
    aput p1, v0, p4

    .line 241
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, p2, :cond_4f

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr p1, v5

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_4f
    return-void

    .line 245
    :cond_50
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result p6

    .line 246
    aget p7, v0, p6

    if-nez p7, :cond_6b

    .line 248
    aput p1, v0, p6

    .line 249
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, p2, :cond_6a

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr p1, v5

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_6a
    return-void

    :cond_6b
    add-int/2addr v3, v5

    if-ne v3, v2, :cond_7

    .line 258
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->addStash(I)V

    return-void
.end method

.method private resize(I)V
    .registers 7

    .line 405
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v0, v1

    .line 407
    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-float v1, p1

    .line 408
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 409
    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    int-to-double v1, p1

    .line 411
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    const/16 v3, 0x8

    .line 412
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->pushIterations:I

    .line 414
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 416
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    add-int/2addr p1, v2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 418
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 419
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iput v2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    const/4 v2, 0x0

    .line 420
    iput v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    if-lez p1, :cond_60

    :goto_54
    if-ge v2, v0, :cond_60

    .line 423
    aget p1, v1, v2

    if-eqz p1, :cond_5d

    .line 424
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->addResize(I)V

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_60
    return-void
.end method

.method public static varargs with([I)Lcom/badlogic/gdx/utils/IntSet;
    .registers 2

    .line 506
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    .line 507
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/IntSet;->addAll([I)V

    return-object v0
.end method


# virtual methods
.method public add(I)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_11

    .line 93
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz p1, :cond_9

    return v0

    .line 94
    :cond_9
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 95
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1

    .line 99
    :cond_11
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 102
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v6, p1, v3

    .line 103
    aget v7, v2, v6

    if-ne v7, p1, :cond_1c

    return v0

    .line 106
    :cond_1c
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v8

    .line 107
    aget v9, v2, v8

    if-ne v9, p1, :cond_25

    return v0

    .line 110
    :cond_25
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v10

    .line 111
    aget v11, v2, v10

    if-ne v11, p1, :cond_2e

    return v0

    .line 115
    :cond_2e
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v4, v3

    :goto_33
    if-ge v3, v4, :cond_3d

    .line 116
    aget v5, v2, v3

    if-ne v5, p1, :cond_3a

    return v0

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3d
    if-nez v7, :cond_52

    .line 120
    aput p1, v2, v6

    .line 121
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, v0, :cond_51

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_51
    return v1

    :cond_52
    if-nez v9, :cond_67

    .line 126
    aput p1, v2, v8

    .line 127
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, v0, :cond_66

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_66
    return v1

    :cond_67
    if-nez v11, :cond_7c

    .line 132
    aput p1, v2, v10

    .line 133
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, v0, :cond_7b

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_7b
    return v1

    :cond_7c
    move-object v4, p0

    move v5, p1

    .line 137
    invoke-direct/range {v4 .. v11}, Lcom/badlogic/gdx/utils/IntSet;->push(IIIIIII)V

    return v1
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;)V
    .registers 4

    .line 142
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget p1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;II)V
    .registers 7

    add-int v0, p2, p3

    .line 146
    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt v0, v1, :cond_c

    .line 148
    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    return-void

    .line 147
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " <= "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntSet;)V
    .registers 3

    .line 162
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    .line 163
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object p1

    .line 164
    :goto_9
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v0, :cond_15

    .line 165
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    goto :goto_9

    :cond_15
    return-void
.end method

.method public varargs addAll([I)V
    .registers 4

    .line 152
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    return-void
.end method

.method public addAll([III)V
    .registers 5

    .line 156
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    add-int/2addr p3, p2

    :goto_4
    if-ge p2, p3, :cond_e

    .line 158
    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public clear()V
    .registers 5

    .line 359
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_5

    return-void

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 361
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v1, v2

    :goto_c
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-lez v1, :cond_15

    .line 362
    aput v3, v0, v2

    move v1, v2

    goto :goto_c

    .line 363
    :cond_15
    iput v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 364
    iput v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 365
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return-void
.end method

.method public clear(I)V
    .registers 3

    .line 349
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    if-gt v0, p1, :cond_8

    .line 350
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 354
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 355
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    return-void
.end method

.method public contains(I)Z
    .registers 4

    if-nez p1, :cond_5

    .line 369
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return p1

    .line 370
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v0, p1

    .line 371
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v0, v1, v0

    if-eq v0, p1, :cond_27

    .line 372
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v0, v1, v0

    if-eq v0, p1, :cond_27

    .line 374
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v0, v1, v0

    if-eq v0, p1, :cond_27

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->containsKeyStash(I)Z

    move-result p1

    return p1

    :cond_27
    const/4 p1, 0x1

    return p1
.end method

.method public ensureCapacity(I)V
    .registers 5

    if-ltz p1, :cond_1b

    .line 400
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr v0, p1

    .line 401
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, p1, :cond_1a

    int-to-float p1, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_1a
    return-void

    .line 399
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 447
    instance-of v0, p1, Lcom/badlogic/gdx/utils/IntSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 448
    :cond_6
    check-cast p1, Lcom/badlogic/gdx/utils/IntSet;

    .line 449
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-eq v0, v2, :cond_f

    return v1

    .line 450
    :cond_f
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eq v0, v2, :cond_16

    return v1

    .line 451
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 452
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_30

    .line 453
    aget v4, v0, v3

    if-eqz v4, :cond_2d

    aget v4, v0, v3

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_30
    const/4 p1, 0x1

    return p1
.end method

.method public first()I
    .registers 5

    .line 389
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 390
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 391
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v2, v3

    :goto_d
    if-ge v1, v2, :cond_19

    .line 392
    aget v3, v0, v1

    if-eqz v3, :cond_16

    aget v0, v0, v1

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 393
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IntSet is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw v0

    :goto_22
    goto :goto_21
.end method

.method public hashCode()I
    .registers 6

    .line 441
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 442
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v4, v3, v1

    if-eqz v4, :cond_12

    aget v3, v3, v1

    add-int/2addr v2, v3

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return v2
.end method

.method public isEmpty()Z
    .registers 2

    .line 334
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    .registers 4

    .line 488
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    return-object v0

    .line 489
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    if-nez v0, :cond_1c

    .line 490
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 491
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 493
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_32

    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 495
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 496
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v2, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    return-object v0

    .line 499
    :cond_32
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 500
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 501
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v2, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public remove(I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_11

    .line 278
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-nez p1, :cond_9

    return v0

    .line 279
    :cond_9
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 280
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1

    .line 284
    :cond_11
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v2, p1

    .line 285
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_22

    .line 286
    aput v0, v3, v2

    .line 287
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1

    .line 291
    :cond_22
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v2

    .line 292
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_34

    .line 293
    aput v0, v3, v2

    .line 294
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1

    .line 298
    :cond_34
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v2

    .line 299
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_46

    .line 300
    aput v0, v3, v2

    .line 301
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1

    .line 305
    :cond_46
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->removeStash(I)Z

    move-result p1

    return p1
.end method

.method removeStash(I)Z
    .registers 6

    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 310
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v2, v1

    :goto_7
    if-ge v1, v2, :cond_1a

    .line 311
    aget v3, v0, v1

    if-ne v3, p1, :cond_17

    .line 312
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->removeStashIndex(I)V

    .line 313
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method removeStashIndex(I)V
    .registers 4

    .line 322
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 323
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_13

    .line 324
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v0, v1, v0

    aput v0, v1, p1

    :cond_13
    return-void
.end method

.method public shrink(I)V
    .registers 5

    if-ltz p1, :cond_14

    .line 341
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-le v0, p1, :cond_7

    move p1, v0

    .line 342
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    if-gt v0, p1, :cond_c

    return-void

    .line 343
    :cond_c
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 344
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    return-void

    .line 340
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 458
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 459
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 460
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 461
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 462
    array-length v2, v1

    .line 463
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v3, :cond_20

    const-string v3, "0"

    .line 464
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2e

    :cond_20
    :goto_20
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_2d

    .line 467
    aget v2, v1, v3

    if-nez v2, :cond_2a

    move v2, v3

    goto :goto_20

    .line 469
    :cond_2a
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2d
    :goto_2d
    move v2, v3

    :goto_2e
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_40

    .line 474
    aget v2, v1, v3

    if-nez v2, :cond_37

    goto :goto_2d

    :cond_37
    const-string v4, ", "

    .line 476
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 477
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2d

    :cond_40
    const/16 v1, 0x5d

    .line 479
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 480
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
