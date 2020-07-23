.class public final Lcom/badlogic/gdx/graphics/VertexAttributes;
.super Ljava/lang/Object;
.source "VertexAttributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;,
        Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;,
        Lcom/badlogic/gdx/graphics/VertexAttributes$Usage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/graphics/VertexAttribute;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/badlogic/gdx/graphics/VertexAttributes;",
        ">;"
    }
.end annotation


# instance fields
.field private final attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

.field private iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable<",
            "Lcom/badlogic/gdx/graphics/VertexAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mask:J

.field public final vertexSize:I


# direct methods
.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 53
    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    .line 59
    array-length v0, p1

    if-eqz v0, :cond_21

    .line 61
    array-length v0, p1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x0

    .line 62
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 63
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 65
    :cond_18
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 66
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->calculateOffsets()I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    return-void

    .line 59
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attributes must be >= 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method

.method private calculateOffsets()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    :goto_2
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v2

    if-ge v0, v3, :cond_13

    .line 95
    aget-object v2, v2, v0

    .line 96
    iput v1, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    .line 97
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;->getSizeInBytes()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return v1
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/VertexAttributes;)I
    .registers 9

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v1, v0

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v2

    if-eq v1, v3, :cond_c

    array-length p1, v0

    array-length v0, v2

    :goto_a
    sub-int/2addr p1, v0

    return p1

    .line 176
    :cond_c
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v0

    .line 177
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_21

    cmp-long p1, v0, v2

    if-gez p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v4, 0x1

    :goto_20
    return v4

    .line 179
    :cond_21
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    sub-int/2addr v0, v5

    :goto_25
    if-ltz v0, :cond_6a

    .line 180
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v1, v1, v0

    .line 181
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v0

    .line 182
    iget v3, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v6, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-eq v3, v6, :cond_3a

    iget p1, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v0, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    goto :goto_a

    .line 183
    :cond_3a
    iget v3, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    iget v6, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    if-eq v3, v6, :cond_45

    iget p1, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    iget v0, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    goto :goto_a

    .line 184
    :cond_45
    iget v3, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v6, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    if-eq v3, v6, :cond_50

    iget p1, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v0, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    goto :goto_a

    .line 185
    :cond_50
    iget-boolean v3, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-boolean v6, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    if-eq v3, v6, :cond_5c

    iget-boolean p1, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    if-eqz p1, :cond_5b

    const/4 v4, 0x1

    :cond_5b
    return v4

    .line 186
    :cond_5c
    iget v3, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget v6, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    if-eq v3, v6, :cond_67

    iget p1, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget v0, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    goto :goto_a

    :cond_67
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_6a
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 30
    check-cast p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->compareTo(Lcom/badlogic/gdx/graphics/VertexAttributes;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 136
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 137
    :cond_a
    check-cast p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 138
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v1, v1

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    const/4 v1, 0x0

    .line 139
    :goto_16
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v3

    if-ge v1, v4, :cond_2b

    .line 140
    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;->equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z

    move-result v3

    if-nez v3, :cond_28

    return v2

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2b
    return v0
.end method

.method public findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 5

    .line 86
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    .line 88
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v2, p1, :cond_14

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    return-object p1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMask()J
    .registers 6

    .line 157
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 159
    :goto_b
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 160
    aget-object v3, v3, v2

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 162
    :cond_19
    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    .line 164
    :cond_1b
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    return-wide v0
.end method

.method public getMaskWithSizePacked()J
    .registers 6

    .line 170
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v2, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getOffset(I)I
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getOffset(II)I

    move-result p1

    return p1
.end method

.method public getOffset(II)I
    .registers 3

    .line 72
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    if-nez p1, :cond_7

    return p2

    .line 74
    :cond_7
    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public hashCode()I
    .registers 7

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3d

    int-to-long v0, v0

    const/4 v2, 0x0

    .line 148
    :goto_7
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v4, v3

    if-ge v2, v4, :cond_1b

    const-wide/16 v4, 0x3d

    mul-long v0, v0, v4

    .line 149
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;->hashCode()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/graphics/VertexAttribute;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    if-nez v0, :cond_d

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    .line 195
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 117
    :goto_b
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v2, v2

    if-ge v1, v2, :cond_51

    const-string v2, "("

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_51
    const-string v1, "]"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
