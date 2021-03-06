.class public Lcom/badlogic/gdx/utils/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ArrayMap$Keys;,
        Lcom/badlogic/gdx/utils/ArrayMap$Values;,
        Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field public keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field public ordered:Z

.field public size:I

.field public values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .registers 6

    .line 80
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    .line 81
    iget v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 82
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object p1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 73
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 57
    new-array p1, p2, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 58
    new-array p1, p2, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;Ljava/lang/Class;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 67
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 68
    invoke-static {p4, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 348
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 349
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_12

    const/4 v5, 0x0

    .line 350
    aput-object v5, v0, v4

    .line 351
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 353
    :cond_12
    iput v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    return-void
.end method

.method public clear(I)V
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_9

    .line 339
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 343
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 209
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez p1, :cond_13

    :goto_8
    if-ltz v1, :cond_22

    add-int/lit8 v3, v1, -0x1

    .line 212
    aget-object v1, v0, v1

    if-ne v1, p1, :cond_11

    return v2

    :cond_11
    move v1, v3

    goto :goto_8

    :cond_13
    :goto_13
    if-ltz v1, :cond_22

    add-int/lit8 v3, v1, -0x1

    .line 215
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v2

    :cond_20
    move v1, v3

    goto :goto_13

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 223
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez p2, :cond_1a

    if-nez p1, :cond_b

    goto :goto_1a

    :cond_b
    :goto_b
    if-ltz v1, :cond_25

    add-int/lit8 p2, v1, -0x1

    .line 229
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    move v1, p2

    goto :goto_b

    :cond_1a
    :goto_1a
    if-ltz v1, :cond_25

    add-int/lit8 p2, v1, -0x1

    .line 226
    aget-object v1, v0, v1

    if-ne v1, p1, :cond_23

    return v2

    :cond_23
    move v1, p2

    goto :goto_1a

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)V
    .registers 5

    if-ltz p1, :cond_14

    .line 367
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p1

    .line 368
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length p1, p1

    if-lt v0, p1, :cond_13

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    :cond_13
    return-void

    .line 366
    :cond_14
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

.method public entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 492
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    .line 493
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    if-nez v0, :cond_1c

    .line 494
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 495
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 497
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->index:I

    .line 499
    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 500
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    return-object v0

    .line 503
    :cond_2f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->index:I

    .line 504
    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 505
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 433
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 434
    :cond_a
    check-cast p1, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 435
    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq v1, v3, :cond_13

    return v2

    .line 436
    :cond_13
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 437
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v3, :cond_37

    .line 439
    aget-object v6, v1, v5

    .line 440
    aget-object v7, v4, v5

    if-nez v7, :cond_29

    .line 442
    sget-object v7, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_34

    return v2

    .line 444
    :cond_29
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    return v2

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_37
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 453
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 454
    :cond_a
    check-cast p1, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 455
    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq v1, v3, :cond_13

    return v2

    .line 456
    :cond_13
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 457
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v3, :cond_2a

    .line 459
    aget-object v6, v4, v5

    aget-object v7, v1, v5

    sget-object v8, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {p1, v7, v8}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_27

    return v2

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2a
    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 173
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eqz v0, :cond_a

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 173
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public firstValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eqz v0, :cond_a

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 178
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 135
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    if-nez p1, :cond_16

    :goto_8
    if-ltz v1, :cond_28

    .line 138
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_13

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_16
    :goto_16
    if-ltz v1, :cond_28

    .line 141
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :cond_28
    return-object p2
.end method

.method public getKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)TK;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 151
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    if-nez p2, :cond_1d

    if-nez p1, :cond_b

    goto :goto_1d

    :cond_b
    :goto_b
    if-ltz v1, :cond_2b

    .line 157
    aget-object p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1d
    :goto_1d
    if-ltz v1, :cond_2b

    .line 154
    aget-object p2, v0, v1

    if-ne p2, p1, :cond_28

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_9

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 163
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 168
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 8

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 422
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v3, v2, :cond_21

    .line 423
    aget-object v5, v0, v3

    .line 424
    aget-object v6, v1, v3

    if-eqz v5, :cond_17

    .line 425
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v4, v5

    :cond_17
    if-eqz v6, :cond_1e

    .line 426
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_21
    return v4
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_11

    .line 237
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_7
    if-ge v1, v2, :cond_21

    .line 238
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 240
    :cond_11
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_13
    if-ge v1, v2, :cond_21

    .line 241
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    const/4 p1, -0x1

    return p1
.end method

.method public indexOfValue(Ljava/lang/Object;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)I"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p2, :cond_18

    if-nez p1, :cond_8

    goto :goto_18

    .line 252
    :cond_8
    iget p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_a
    if-ge v1, p2, :cond_24

    .line 253
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 249
    :cond_18
    :goto_18
    iget p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_1a
    if-ge v1, p2, :cond_24

    .line 250
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_21

    return v1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_24
    const/4 p1, -0x1

    return p1
.end method

.method public insert(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .line 193
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt p1, v0, :cond_4c

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_18

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 195
    :cond_18
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v0, :cond_2f

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3d

    .line 199
    :cond_2f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v2, v0, p1

    aput-object v2, v0, v1

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v0, p1

    aput-object v2, v0, v1

    .line 202
    :goto_3d
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 204
    iget-object p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p3, p2, p1

    return-void

    .line 193
    :cond_4c
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isEmpty()Z
    .registers 2

    .line 323
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ArrayMap$Keys;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 538
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    .line 539
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    if-nez v0, :cond_1c

    .line 540
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 541
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 543
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->index:I

    .line 545
    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 546
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    return-object v0

    .line 549
    :cond_2f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->index:I

    .line 550
    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 551
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 318
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peekKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1d

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 90
    :cond_1d
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 92
    :cond_23
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 93
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)I"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 100
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    goto :goto_21

    .line 101
    :cond_b
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_21

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 102
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 103
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v1, p3, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p3

    invoke-static {v0, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p3

    invoke-static {v0, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v0, p3

    .line 106
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, p1, p3

    .line 107
    iget p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    return p3
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 112
    iget v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V

    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "+TK;+TV;>;II)V"
        }
    .end annotation

    add-int v0, p2, p3

    .line 116
    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v0, v1, :cond_36

    .line 118
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    .line 119
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 120
    :cond_1e
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object p1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    return-void

    .line 117
    :cond_36
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

    iget p1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)V
    .registers 6

    .line 302
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_35

    .line 303
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 304
    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 305
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v0, :cond_1f

    add-int/lit8 v0, p1, 0x1

    .line 306
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p1

    invoke-static {v2, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    .line 309
    :cond_1f
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v2, v1, v0

    aput-object v2, v1, p1

    .line 310
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v2, v0

    aput-object v0, v2, p1

    .line 312
    :goto_2b
    iget p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v0, 0x0

    aput-object v0, v1, p1

    .line 313
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void

    .line 302
    :cond_35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_18

    .line 261
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_7
    if-ge v1, v2, :cond_2f

    .line 262
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_15

    .line 263
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    .line 264
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return-object p1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 269
    :cond_18
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_1a
    if-ge v1, v2, :cond_2f

    .line 270
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 271
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    .line 272
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return-object p1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1d

    if-nez p1, :cond_9

    goto :goto_1d

    .line 290
    :cond_9
    iget p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p2, :cond_2d

    .line 291
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 292
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return v2

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 283
    :cond_1d
    :goto_1d
    iget p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    :goto_20
    if-ge v3, p2, :cond_2d

    .line 284
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_2a

    .line 285
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return v2

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2d
    return v1
.end method

.method protected resize(I)V
    .registers 6

    .line 372
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public reverse()V
    .registers 8

    .line 382
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_22

    sub-int v3, v1, v2

    .line 384
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v5, v4, v2

    .line 385
    aget-object v6, v4, v3

    aput-object v6, v4, v2

    .line 386
    aput-object v5, v4, v3

    .line 388
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v5, v4, v2

    .line 389
    aget-object v6, v4, v3

    aput-object v6, v4, v2

    .line 390
    aput-object v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method

.method public setKey(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_9

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void

    .line 183
    :cond_9
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setValue(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 188
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_9

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void

    .line 188
    :cond_9
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public shrink()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ne v0, v1, :cond_8

    return-void

    .line 360
    :cond_8
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    return-void
.end method

.method public shuffle()V
    .registers 6

    .line 395
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_21

    .line 396
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 397
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 398
    aget-object v4, v2, v1

    aput-object v4, v2, v0

    .line 399
    aput-object v3, v2, v1

    .line 401
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 402
    aget-object v4, v2, v1

    aput-object v4, v2, v0

    .line 403
    aput-object v3, v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 464
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_7

    const-string v0, "{}"

    return-object v0

    .line 465
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 466
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 467
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v3, 0x7b

    .line 468
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x0

    .line 469
    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x3d

    .line 470
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 471
    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x1

    .line 472
    :goto_28
    iget v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v3, v5, :cond_41

    const-string v5, ", "

    .line 473
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 474
    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 475
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 476
    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_41
    const/16 v0, 0x7d

    .line 478
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 479
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(I)V
    .registers 5

    .line 410
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v0, p1, :cond_5

    return-void

    :cond_5
    move v0, p1

    .line 411
    :goto_6
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v1, :cond_16

    .line 412
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 413
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 415
    :cond_16
    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    return-void
.end method

.method public values()Lcom/badlogic/gdx/utils/ArrayMap$Values;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 515
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    .line 516
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    if-nez v0, :cond_1c

    .line 517
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 518
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 520
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    .line 521
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 522
    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 523
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    return-object v0

    .line 526
    :cond_2f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 527
    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 528
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    return-object v0
.end method
