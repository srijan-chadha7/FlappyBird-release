.class public Lcom/badlogic/gdx/utils/BooleanArray;
.super Ljava/lang/Object;
.source "BooleanArray.java"


# instance fields
.field public items:[Z

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 58
    iget-object p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 48
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-void
.end method

.method public constructor <init>(Z[ZII)V
    .registers 6

    .line 72
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 73
    iput p4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 74
    iget-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Z)V
    .registers 5

    .line 64
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(Z[ZII)V

    return-void
.end method

.method public static varargs with([Z)Lcom/badlogic/gdx/utils/BooleanArray;
    .registers 2

    .line 365
    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>([Z)V

    return-object v0
.end method


# virtual methods
.method public add(Z)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 79
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_17

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 80
    :cond_17
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    return-void
.end method

.method public add(ZZ)V
    .registers 7

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 85
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 86
    :cond_19
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 87
    aput-boolean p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    .line 88
    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public add(ZZZ)V
    .registers 8

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 93
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 94
    :cond_19
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 95
    aput-boolean p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 96
    aput-boolean p3, v0, p1

    add-int/lit8 v1, v1, 0x3

    .line 97
    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public add(ZZZZ)V
    .registers 9

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 102
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 103
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 104
    aput-boolean p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 105
    aput-boolean p3, v0, p1

    add-int/lit8 p1, v1, 0x3

    .line 106
    aput-boolean p4, v0, p1

    add-int/lit8 v1, v1, 0x4

    .line 107
    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .registers 4

    .line 111
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;II)V
    .registers 7

    add-int v0, p2, p3

    .line 115
    iget v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt v0, v1, :cond_c

    .line 117
    iget-object p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    return-void

    .line 116
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

    iget p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([Z)V
    .registers 4

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    return-void
.end method

.method public addAll([ZII)V
    .registers 7

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 126
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v1, p3

    .line 127
    array-length v2, v0

    if-le v1, v2, :cond_18

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 128
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 237
    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void
.end method

.method public ensureCapacity(I)[Z
    .registers 5

    if-ltz p1, :cond_16

    .line 253
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v0, p1

    .line 254
    iget-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length p1, p1

    if-le v0, p1, :cond_13

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 255
    :cond_13
    iget-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object p1

    .line 252
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

    .line 325
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 326
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;

    if-nez v1, :cond_f

    return v2

    .line 327
    :cond_f
    check-cast p1, Lcom/badlogic/gdx/utils/BooleanArray;

    .line 328
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-nez v1, :cond_16

    return v2

    .line 329
    :cond_16
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 330
    iget v3, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v1, v3, :cond_1d

    return v2

    .line 331
    :cond_1d
    iget-object v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object p1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v1, :cond_2e

    .line 333
    aget-boolean v5, v3, v4

    aget-boolean v6, p1, v4

    if-eq v5, v6, :cond_2b

    return v2

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_2e
    return v0
.end method

.method public first()Z
    .registers 3

    .line 222
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eqz v0, :cond_a

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0

    .line 222
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Z
    .registers 5

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_9

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean p1, v0, p1

    return p1

    .line 133
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 6

    .line 314
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 315
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    .line 317
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v3, 0x1

    :goto_f
    if-ge v1, v2, :cond_20

    mul-int/lit8 v3, v3, 0x1f

    .line 318
    aget-boolean v4, v0, v1

    if-eqz v4, :cond_1a

    const/16 v4, 0x4cf

    goto :goto_1c

    :cond_1a
    const/16 v4, 0x4d5

    :goto_1c
    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    return v3
.end method

.method public insert(IZ)V
    .registers 6

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt p1, v0, :cond_35

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 145
    array-length v2, v1

    if-ne v0, v2, :cond_19

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v1

    .line 146
    :cond_19
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v0, :cond_26

    add-int/lit8 v0, p1, 0x1

    .line 147
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2c

    .line 149
    :cond_26
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v2, v1, p1

    aput-boolean v2, v1, v0

    .line 150
    :goto_2c
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 151
    aput-boolean p2, v1, p1

    return-void

    .line 143
    :cond_35
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isEmpty()Z
    .registers 2

    .line 233
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()Z
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public pop()Z
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public random()Z
    .registers 4

    .line 303
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 304
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-boolean v0, v2, v0

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/BooleanArray;)Z
    .registers 11

    .line 194
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 196
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 197
    iget v2, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v3, 0x0

    move v5, v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_22

    .line 198
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/BooleanArray;->get(I)Z

    move-result v6

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v5, :cond_1f

    .line 200
    aget-boolean v8, v1, v7

    if-ne v6, v8, :cond_1c

    .line 201
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/utils/BooleanArray;->removeIndex(I)Z

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

.method public removeIndex(I)Z
    .registers 6

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_20

    .line 166
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 167
    aget-boolean v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    .line 168
    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 169
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v0, :cond_19

    add-int/lit8 v0, p1, 0x1

    .line 170
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, v0, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    .line 172
    :cond_19
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v0, v1, v0

    aput-boolean v0, v1, p1

    :goto_1f
    return v2

    .line 165
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .registers 7

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p2, v0, :cond_46

    if-gt p1, p2, :cond_27

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v2, v0, v1

    .line 182
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v3, :cond_18

    .line 183
    iget-object p2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    :cond_18
    add-int/lit8 p2, p2, 0x1

    .line 185
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 186
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    :goto_24
    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    return-void

    .line 180
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

    .line 179
    :cond_46
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected resize(I)[Z
    .registers 5

    .line 268
    new-array p1, p1, [Z

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 270
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iput-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object p1
.end method

.method public reverse()V
    .registers 8

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 277
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_18

    sub-int v4, v2, v3

    .line 279
    aget-boolean v5, v0, v3

    .line 280
    aget-boolean v6, v0, v4

    aput-boolean v6, v0, v3

    .line 281
    aput-boolean v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    return-void
.end method

.method public set(IZ)V
    .registers 5

    .line 138
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aput-boolean p2, v0, p1

    return-void

    .line 138
    :cond_9
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setSize(I)[Z
    .registers 5

    if-ltz p1, :cond_15

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v0, v0

    if-le p1, v0, :cond_10

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 263
    :cond_10
    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 264
    iget-object p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object p1

    .line 261
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

.method public shrink()[Z
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v0, v1, :cond_a

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 245
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v0
.end method

.method public shuffle()V
    .registers 6

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 287
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_17

    .line 288
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 289
    aget-boolean v3, v0, v1

    .line 290
    aget-boolean v4, v0, v2

    aput-boolean v4, v0, v1

    .line 291
    aput-boolean v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method public swap(II)V
    .registers 6

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_32

    if-ge p2, v0, :cond_13

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 158
    aget-boolean v1, v0, p1

    .line 159
    aget-boolean v2, v0, p2

    aput-boolean v2, v0, p1

    .line 160
    aput-boolean v1, v0, p2

    return-void

    .line 156
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_32
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toArray()[Z
    .registers 5

    .line 308
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v1, v0, [Z

    .line 309
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 338
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 339
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 340
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 341
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x0

    .line 342
    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 343
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v2, v3, :cond_2d

    const-string v3, ", "

    .line 344
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 345
    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2d
    const/16 v0, 0x5d

    .line 347
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 348
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 352
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_7

    const-string p1, ""

    return-object p1

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 354
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 355
    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 356
    :goto_17
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v2, v3, :cond_26

    .line 357
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 358
    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 360
    :cond_26
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public truncate(I)V
    .registers 3

    .line 298
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    :cond_6
    return-void
.end method
