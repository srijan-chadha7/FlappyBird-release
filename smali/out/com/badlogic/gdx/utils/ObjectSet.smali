.class public Lcom/badlogic/gdx/utils/ObjectSet;
.super Ljava/lang/Object;
.source "ObjectSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private hashShift:I

.field private iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

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

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const v0, 0x3f4ccccd    # 0.8f

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_98

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-double v0, p1

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_81

    .line 69
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-lez p1, :cond_6a

    .line 72
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    .line 74
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 75
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x1f

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    const/4 p1, 0x3

    .line 77
    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    .line 78
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    div-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->pushIterations:I

    .line 80
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    add-int/2addr p1, p2

    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    return-void

    .line 71
    :cond_6a
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

    .line 68
    :cond_81
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

    .line 66
    :cond_98
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "+TT;>;)V"
        }
    .end annotation

    .line 85
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 87
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget p1, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    return-void
.end method

.method private addResize(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 168
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int v4, v0, v1

    .line 169
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v5, v1, v4

    if-nez v5, :cond_22

    .line 171
    aput-object p1, v1, v4

    .line 172
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, v0, :cond_21

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_21
    return-void

    .line 176
    :cond_22
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v6

    .line 177
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v7, v1, v6

    if-nez v7, :cond_40

    .line 179
    aput-object p1, v1, v6

    .line 180
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, v0, :cond_3f

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_3f
    return-void

    .line 184
    :cond_40
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v8

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v9, v0, v8

    if-nez v9, :cond_5e

    .line 187
    aput-object p1, v0, v8

    .line 188
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, v0, :cond_5d

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_5d
    return-void

    :cond_5e
    move-object v2, p0

    move-object v3, p1

    .line 192
    invoke-direct/range {v2 .. v9}, Lcom/badlogic/gdx/utils/ObjectSet;->push(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private addStash(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 254
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    if-ne v0, v1, :cond_11

    .line 256
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 257
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->addResize(Ljava/lang/Object;)V

    return-void

    .line 261
    :cond_11
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    add-int/2addr v1, v0

    .line 262
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object p1, v2, v1

    add-int/lit8 v0, v0, 0x1

    .line 263
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 264
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    return-void
.end method

.method private getKeyStash(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 390
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v2, v1

    :goto_7
    if-ge v1, v2, :cond_17

    .line 391
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    aget-object p1, v0, v1

    return-object p1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method private hash2(I)I
    .registers 3

    const v0, -0x4b47d1c7

    mul-int p1, p1, v0

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private hash3(I)I
    .registers 3

    const v0, -0x312e3dbf

    mul-int p1, p1, v0

    .line 442
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private push(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITT;ITT;ITT;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 197
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .line 201
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->pushIterations:I

    const/4 v3, 0x0

    :goto_7
    const/4 v4, 0x2

    .line 204
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_19

    if-eq v4, v5, :cond_15

    .line 215
    aput-object p1, v0, p6

    move-object p1, p7

    goto :goto_1c

    .line 211
    :cond_15
    aput-object p1, v0, p4

    move-object p1, p5

    goto :goto_1c

    .line 207
    :cond_19
    aput-object p1, v0, p2

    move-object p1, p3

    .line 220
    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    and-int p3, p2, v1

    .line 222
    aget-object p4, v0, p3

    if-nez p4, :cond_39

    .line 224
    aput-object p1, v0, p3

    .line 225
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, p2, :cond_38

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/2addr p1, v5

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_38
    return-void

    .line 229
    :cond_39
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result p5

    .line 230
    aget-object p6, v0, p5

    if-nez p6, :cond_54

    .line 232
    aput-object p1, v0, p5

    .line 233
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, p2, :cond_53

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/2addr p1, v5

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_53
    return-void

    .line 237
    :cond_54
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result p2

    .line 238
    aget-object p7, v0, p2

    if-nez p7, :cond_6f

    .line 240
    aput-object p1, v0, p2

    .line 241
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, p2, :cond_6e

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/2addr p1, v5

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_6e
    return-void

    :cond_6f
    add-int/2addr v3, v5

    if-ne v3, v2, :cond_76

    .line 250
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->addStash(Ljava/lang/Object;)V

    return-void

    :cond_76
    move-object v6, p6

    move p6, p2

    move p2, p3

    move-object p3, p4

    move p4, p5

    move-object p5, v6

    goto :goto_7
.end method

.method private resize(I)V
    .registers 7

    .line 411
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v0, v1

    .line 413
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-float v1, p1

    .line 414
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 415
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    int-to-double v1, p1

    .line 417
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    const/16 v3, 0x8

    .line 418
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->pushIterations:I

    .line 420
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 422
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    add-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 424
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 v2, 0x0

    .line 425
    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 426
    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    if-lez p1, :cond_60

    :goto_54
    if-ge v2, v0, :cond_60

    .line 429
    aget-object p1, v1, v2

    if-eqz p1, :cond_5d

    .line 430
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->addResize(Ljava/lang/Object;)V

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_60
    return-void
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/ObjectSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;"
        }
    .end annotation

    .line 509
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    .line 510
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_89

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 99
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int v5, v1, v2

    .line 100
    aget-object v6, v0, v5

    .line 101
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    return v3

    .line 103
    :cond_16
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v7

    .line 104
    aget-object v8, v0, v7

    .line 105
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    return v3

    .line 107
    :cond_23
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v9

    .line 108
    aget-object v10, v0, v9

    .line 109
    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    return v3

    .line 112
    :cond_30
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v2, v1

    :goto_35
    if-ge v1, v2, :cond_43

    .line 113
    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    return v3

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_43
    const/4 v1, 0x1

    if-nez v6, :cond_59

    .line 117
    aput-object p1, v0, v5

    .line 118
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, v0, :cond_58

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_58
    return v1

    :cond_59
    if-nez v8, :cond_6e

    .line 123
    aput-object p1, v0, v7

    .line 124
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, v0, :cond_6d

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_6d
    return v1

    :cond_6e
    if-nez v10, :cond_83

    .line 129
    aput-object p1, v0, v9

    .line 130
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt p1, v0, :cond_82

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_82
    return v1

    :cond_83
    move-object v3, p0

    move-object v4, p1

    .line 134
    invoke-direct/range {v3 .. v10}, Lcom/badlogic/gdx/utils/ObjectSet;->push(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    return v1

    .line 94
    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_92

    :goto_91
    throw p1

    :goto_92
    goto :goto_91
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;II)V"
        }
    .end annotation

    add-int v0, p2, p3

    .line 143
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v0, v1, :cond_e

    .line 145
    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)V

    return-void

    .line 144
    :cond_e
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

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 159
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->ensureCapacity(I)V

    .line 160
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_17
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 149
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)V

    return-void
.end method

.method public addAll([Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->ensureCapacity(I)V

    add-int/2addr p3, p2

    :goto_4
    if-ge p2, p3, :cond_e

    .line 155
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public clear()V
    .registers 4

    .line 350
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_5

    return-void

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 352
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v1, v2

    :goto_c
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_15

    const/4 v1, 0x0

    .line 353
    aput-object v1, v0, v2

    move v1, v2

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    .line 354
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 355
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    return-void
.end method

.method public clear(I)V
    .registers 3

    .line 339
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    if-gt v0, p1, :cond_8

    .line 340
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 343
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 344
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 360
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v1, v0

    .line 361
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_36

    .line 362
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v1

    .line 363
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 364
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v0

    .line 365
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->getKeyStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :cond_36
    :goto_36
    return v2
.end method

.method public ensureCapacity(I)V
    .registers 5

    if-ltz p1, :cond_1b

    .line 406
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/2addr v0, p1

    .line 407
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, p1, :cond_1a

    int-to-float p1, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    :cond_1a
    return-void

    .line 405
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

    .line 453
    instance-of v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 454
    :cond_6
    check-cast p1, Lcom/badlogic/gdx/utils/ObjectSet;

    .line 455
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-eq v0, v2, :cond_f

    return v1

    .line 456
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 457
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_29

    .line 458
    aget-object v4, v0, v3

    if-eqz v4, :cond_26

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    return v1

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public first()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 397
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    .line 398
    aget-object v3, v0, v2

    if-eqz v3, :cond_11

    aget-object v0, v0, v2

    return-object v0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 399
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ObjectSet is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :goto_1c
    throw v0

    :goto_1d
    goto :goto_1c
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 374
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v1, v0

    .line 375
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v1, v2, v1

    .line 376
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 377
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v1

    .line 378
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v1, v2, v1

    .line 379
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 380
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 382
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->getKeyStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_32
    return-object v1
.end method

.method public hashCode()I
    .registers 6

    .line 447
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 448
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v4, v3, v1

    if-eqz v4, :cond_16

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return v2
.end method

.method public isEmpty()Z
    .registers 2

    .line 323
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<",
            "TT;>;"
        }
    .end annotation

    .line 491
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-object v0

    .line 492
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    if-nez v0, :cond_1c

    .line 493
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    .line 494
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    .line 496
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_32

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 499
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v1, v2, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    return-object v0

    .line 502
    :cond_32
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 504
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v1, v2, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 318
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 270
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v1, v0

    .line 271
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1d

    .line 272
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 273
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    return v4

    .line 277
    :cond_1d
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v1

    .line 278
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 279
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 280
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    return v4

    .line 284
    :cond_35
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 286
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 287
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    return v4

    .line 291
    :cond_4d
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->removeStash(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method removeStash(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 296
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v2, v1

    :goto_7
    if-ge v1, v2, :cond_1e

    .line 297
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 298
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->removeStashIndex(I)V

    .line 299
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    return v0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method removeStashIndex(I)V
    .registers 5

    .line 308
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 309
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_16

    .line 311
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object v2, v1, p1

    const/4 p1, 0x0

    .line 312
    aput-object p1, v1, v0

    :cond_16
    return-void
.end method

.method public shrink(I)V
    .registers 5

    if-ltz p1, :cond_14

    .line 330
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-le v0, p1, :cond_7

    move p1, v0

    .line 331
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    if-gt v0, p1, :cond_c

    return-void

    .line 332
    :cond_c
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 333
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    return-void

    .line 329
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
    .registers 3

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 467
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_7

    const-string p1, ""

    return-object p1

    .line 468
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 469
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 470
    array-length v2, v1

    :goto_11
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1e

    .line 472
    aget-object v2, v1, v3

    if-nez v2, :cond_1b

    move v2, v3

    goto :goto_11

    .line 474
    :cond_1b
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_2f

    .line 478
    aget-object v3, v1, v2

    if-nez v3, :cond_27

    goto :goto_2d

    .line 480
    :cond_27
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 481
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_2d
    move v3, v2

    goto :goto_1e

    .line 483
    :cond_2f
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
