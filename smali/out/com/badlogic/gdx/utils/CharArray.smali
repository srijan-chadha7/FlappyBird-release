.class public Lcom/badlogic/gdx/utils/CharArray;
.super Ljava/lang/Object;
.source "CharArray.java"


# instance fields
.field public items:[C

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/CharArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/CharArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/CharArray;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 56
    iget-object p1, p1, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    .line 46
    new-array p1, p2, [C

    iput-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-void
.end method

.method public constructor <init>(Z[CII)V
    .registers 6

    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/CharArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    .line 72
    iget-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([C)V
    .registers 5

    .line 62
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/CharArray;-><init>(Z[CII)V

    return-void
.end method

.method public static varargs with([C)Lcom/badlogic/gdx/utils/CharArray;
    .registers 2

    .line 410
    new-instance v0, Lcom/badlogic/gdx/utils/CharArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/CharArray;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public add(C)V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 77
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_17

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    .line 78
    :cond_17
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aput-char p1, v0, v1

    return-void
.end method

.method public add(CC)V
    .registers 7

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 83
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_19

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    .line 84
    :cond_19
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aput-char p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 85
    aput-char p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    .line 86
    iput v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void
.end method

.method public add(CCC)V
    .registers 8

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 91
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-lt v2, v3, :cond_19

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    .line 92
    :cond_19
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aput-char p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 93
    aput-char p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 94
    aput-char p3, v0, p1

    add-int/lit8 v1, v1, 0x3

    .line 95
    iput v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void
.end method

.method public add(CCCC)V
    .registers 9

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 100
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    if-lt v2, v3, :cond_1a

    const/16 v0, 0x8

    int-to-float v1, v1

    const v2, 0x3fe66666    # 1.8f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    .line 101
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aput-char p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 102
    aput-char p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 103
    aput-char p3, v0, p1

    add-int/lit8 p1, v1, 0x3

    .line 104
    aput-char p4, v0, p1

    add-int/lit8 v1, v1, 0x4

    .line 105
    iput v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/CharArray;)V
    .registers 4

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget p1, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/CharArray;->addAll([CII)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/CharArray;II)V
    .registers 7

    add-int v0, p2, p3

    .line 113
    iget v1, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-gt v0, v1, :cond_c

    .line 115
    iget-object p1, p1, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/CharArray;->addAll([CII)V

    return-void

    .line 114
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

    iget p1, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([C)V
    .registers 4

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/CharArray;->addAll([CII)V

    return-void
.end method

.method public addAll([CII)V
    .registers 7

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 124
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/2addr v1, p3

    .line 125
    array-length v2, v0

    if-le v1, v2, :cond_18

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    .line 126
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 278
    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void
.end method

.method public contains(C)Z
    .registers 6

    .line 172
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 173
    iget-object v2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    :goto_6
    if-ltz v0, :cond_11

    add-int/lit8 v3, v0, -0x1

    .line 175
    aget-char v0, v2, v0

    if-ne v0, p1, :cond_f

    return v1

    :cond_f
    move v0, v3

    goto :goto_6

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)[C
    .registers 5

    if-ltz p1, :cond_16

    .line 294
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/2addr v0, p1

    .line 295
    iget-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    array-length p1, p1

    if-le v0, p1, :cond_13

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    .line 296
    :cond_13
    iget-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-object p1

    .line 293
    :cond_16
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
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 370
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 371
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/CharArray;

    if-nez v1, :cond_f

    return v2

    .line 372
    :cond_f
    check-cast p1, Lcom/badlogic/gdx/utils/CharArray;

    .line 373
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-nez v1, :cond_16

    return v2

    .line 374
    :cond_16
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    .line 375
    iget v3, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-eq v1, v3, :cond_1d

    return v2

    .line 376
    :cond_1d
    iget-object v3, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget-object p1, p1, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v1, :cond_2e

    .line 378
    aget-char v5, v3, v4

    aget-char v6, p1, v4

    if-eq v5, v6, :cond_2b

    return v2

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_2e
    return v0
.end method

.method public first()C
    .registers 3

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-eqz v0, :cond_a

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    return v0

    .line 263
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)C
    .registers 5

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char p1, v0, p1

    return p1

    .line 131
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 6

    .line 359
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 360
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v1, 0x0

    .line 362
    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v3, 0x1

    :goto_f
    if-ge v1, v2, :cond_19

    mul-int/lit8 v3, v3, 0x1f

    .line 363
    aget-char v4, v0, v1

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_19
    return v3
.end method

.method public incr(IC)V
    .registers 5

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_d

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v1, v0, p1

    add-int/2addr v1, p2

    int-to-char p2, v1

    aput-char p2, v0, p1

    return-void

    .line 141
    :cond_d
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public indexOf(C)I
    .registers 6

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 181
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_f

    .line 182
    aget-char v3, v0, v2

    if-ne v3, p1, :cond_c

    return v2

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public insert(IC)V
    .registers 6

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-gt p1, v0, :cond_35

    .line 152
    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 153
    array-length v2, v1

    if-ne v0, v2, :cond_19

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v1

    .line 154
    :cond_19
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-eqz v0, :cond_26

    add-int/lit8 v0, p1, 0x1

    .line 155
    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2c

    .line 157
    :cond_26
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aget-char v2, v1, p1

    aput-char v2, v1, v0

    .line 158
    :goto_2c
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    .line 159
    aput-char p2, v1, p1

    return-void

    .line 151
    :cond_35
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isEmpty()Z
    .registers 2

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public lastIndexOf(C)I
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 188
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_10

    .line 189
    aget-char v2, v0, v1

    if-ne v2, p1, :cond_d

    return v1

    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_10
    const/4 p1, -0x1

    return p1
.end method

.method public mul(IC)V
    .registers 5

    .line 146
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_e

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v1, v0, p1

    mul-int v1, v1, p2

    int-to-char p2, v1

    aput-char p2, v0, p1

    return-void

    .line 146
    :cond_e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public notEmpty()Z
    .registers 2

    .line 269
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()C
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    return v0
.end method

.method public pop()C
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aget-char v0, v0, v1

    return v0
.end method

.method public random()C
    .registers 4

    .line 348
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 349
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-char v0, v2, v0

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/CharArray;)Z
    .registers 11

    .line 235
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    .line 237
    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 238
    iget v2, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v3, 0x0

    move v5, v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_22

    .line 239
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/CharArray;->get(I)C

    move-result v6

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v5, :cond_1f

    .line 241
    aget-char v8, v1, v7

    if-ne v6, v8, :cond_1c

    .line 242
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/utils/CharArray;->removeIndex(I)C

    add-int/lit8 v5, v5, -0x1

    goto :goto_1f

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_1f
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_22
    if-eq v5, v0, :cond_25

    const/4 v3, 0x1

    :cond_25
    return v3
.end method

.method public removeIndex(I)C
    .registers 6

    .line 206
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_20

    .line 207
    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 208
    aget-char v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    .line 209
    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    .line 210
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-eqz v0, :cond_19

    add-int/lit8 v0, p1, 0x1

    .line 211
    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, v0, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    .line 213
    :cond_19
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aget-char v0, v1, v0

    aput-char v0, v1, p1

    :goto_1f
    return v2

    .line 206
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .registers 7

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p2, v0, :cond_46

    if-gt p1, p2, :cond_27

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v2, v0, v1

    .line 223
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-eqz v3, :cond_18

    .line 224
    iget-object p2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    :cond_18
    add-int/lit8 p2, p2, 0x1

    .line 226
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 227
    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :goto_24
    iput v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void

    .line 221
    :cond_27
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start can\'t be > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_46
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeValue(C)Z
    .registers 7

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 195
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_14

    .line 196
    aget-char v4, v0, v3

    if-ne v4, p1, :cond_11

    .line 197
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/CharArray;->removeIndex(I)C

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    return v2
.end method

.method protected resize(I)[C
    .registers 5

    .line 309
    new-array p1, p1, [C

    .line 310
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 311
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iput-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-object p1
.end method

.method public reverse()V
    .registers 8

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 322
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_18

    sub-int v4, v2, v3

    .line 324
    aget-char v5, v0, v3

    .line 325
    aget-char v6, v0, v4

    aput-char v6, v0, v3

    .line 326
    aput-char v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    return-void
.end method

.method public set(IC)V
    .registers 5

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aput-char p2, v0, p1

    return-void

    .line 136
    :cond_9
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setSize(I)[C
    .registers 5

    if-ltz p1, :cond_15

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    array-length v0, v0

    if-le p1, v0, :cond_10

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    .line 304
    :cond_10
    iput p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    .line 305
    iget-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-object p1

    .line 302
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink()[C
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-eq v0, v1, :cond_a

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    .line 286
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-object v0
.end method

.method public shuffle()V
    .registers 6

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 332
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_17

    .line 333
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 334
    aget-char v3, v0, v1

    .line 335
    aget-char v4, v0, v2

    aput-char v4, v0, v1

    .line 336
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method public sort()V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([CII)V

    return-void
.end method

.method public swap(II)V
    .registers 6

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_32

    if-ge p2, v0, :cond_13

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 166
    aget-char v1, v0, p1

    .line 167
    aget-char v2, v0, p2

    aput-char v2, v0, p1

    .line 168
    aput-char v1, v0, p2

    return-void

    .line 164
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_32
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toArray()[C
    .registers 5

    .line 353
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    new-array v1, v0, [C

    .line 354
    iget-object v2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 383
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 385
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 386
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x0

    .line 387
    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 388
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge v2, v3, :cond_2d

    const-string v3, ", "

    .line 389
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 390
    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2d
    const/16 v0, 0x5d

    .line 392
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 393
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 397
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-nez v0, :cond_7

    const-string p1, ""

    return-object p1

    .line 398
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    .line 399
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 400
    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 401
    :goto_17
    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge v2, v3, :cond_26

    .line 402
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 403
    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 405
    :cond_26
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public truncate(I)V
    .registers 3

    .line 343
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    :cond_6
    return-void
.end method
