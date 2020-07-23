.class public Lcom/badlogic/gdx/utils/BinaryHeap;
.super Ljava/lang/Object;
.source "BinaryHeap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/utils/BinaryHeap$Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isMaxHeap:Z

.field private nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    .line 34
    new-array p1, p1, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    return-void
.end method

.method private down(I)V
    .registers 16

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 145
    iget v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .line 147
    aget-object v2, v0, p1

    .line 148
    iget v3, v2, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    :goto_8
    shl-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    add-int/2addr v4, v5

    if-lt v4, v1, :cond_f

    goto :goto_61

    :cond_f
    add-int/lit8 v6, v4, 0x1

    .line 156
    aget-object v7, v0, v4

    .line 157
    iget v8, v7, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    if-lt v6, v1, :cond_24

    const/4 v9, 0x0

    .line 164
    iget-boolean v10, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    if-eqz v10, :cond_20

    const v10, -0x800001

    goto :goto_28

    :cond_20
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_28

    .line 166
    :cond_24
    aget-object v9, v0, v6

    .line 167
    iget v10, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    :goto_28
    const/4 v11, 0x0

    cmpg-float v12, v8, v10

    if-gez v12, :cond_2f

    const/4 v12, 0x1

    goto :goto_30

    :cond_2f
    const/4 v12, 0x0

    .line 171
    :goto_30
    iget-boolean v13, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v12, v13

    if-eqz v12, :cond_4b

    cmpl-float v6, v8, v3

    if-eqz v6, :cond_61

    cmpl-float v6, v8, v3

    if-lez v6, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v5, 0x0

    .line 172
    :goto_3f
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v5, v6

    if-eqz v5, :cond_45

    goto :goto_61

    .line 173
    :cond_45
    aput-object v7, v0, p1

    .line 174
    iput p1, v7, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    move p1, v4

    goto :goto_8

    :cond_4b
    cmpl-float v4, v10, v3

    if-eqz v4, :cond_61

    cmpl-float v4, v10, v3

    if-lez v4, :cond_54

    goto :goto_55

    :cond_54
    const/4 v5, 0x0

    .line 177
    :goto_55
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v4, v5

    if-eqz v4, :cond_5b

    goto :goto_61

    .line 178
    :cond_5b
    aput-object v9, v0, p1

    .line 179
    iput p1, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    move p1, v6

    goto :goto_8

    .line 184
    :cond_61
    :goto_61
    aput-object v2, v0, p1

    .line 185
    iput p1, v2, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    return-void
.end method

.method private remove(I)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 91
    aget-object v1, v0, p1

    .line 92
    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aget-object v2, v0, v2

    aput-object v2, v0, p1

    .line 93
    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    if-lez v2, :cond_1a

    if-ge p1, v2, :cond_1a

    .line 94
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    :cond_1a
    return-object v1
.end method

.method private up(I)V
    .registers 9

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 127
    aget-object v1, v0, p1

    .line 128
    iget v2, v1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    :goto_6
    if-lez p1, :cond_21

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    .line 131
    aget-object v5, v0, v3

    .line 132
    iget v6, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpg-float v6, v2, v6

    if-gez v6, :cond_15

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :goto_16
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v4, v6

    if-eqz v4, :cond_21

    .line 133
    aput-object v5, v0, p1

    .line 134
    iput p1, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    move p1, v3

    goto :goto_6

    .line 139
    :cond_21
    aput-object v1, v0, p1

    .line 140
    iput p1, v1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 40
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v2, v1

    if-ne v0, v2, :cond_11

    shl-int/lit8 v2, v0, 0x1

    .line 41
    new-array v2, v2, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    const/4 v3, 0x0

    .line 42
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 46
    :cond_11
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iput v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 47
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    aput-object p1, v1, v0

    add-int/lit8 v1, v0, 0x1

    .line 48
    iput v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    return-object p1
.end method

.method public add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;F)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .line 54
    iput p2, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 55
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/BinaryHeap;->add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 110
    iget v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_e

    const/4 v4, 0x0

    .line 111
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 112
    :cond_e
    iput v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    return-void
.end method

.method public contains(Lcom/badlogic/gdx/utils/BinaryHeap$Node;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_27

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_14

    .line 63
    iget-object p2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v2, p2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_26

    aget-object v4, p2, v3

    if-ne v4, p1, :cond_11

    return v1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 66
    :cond_14
    iget-object p2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v2, p2

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_26

    aget-object v4, p2, v3

    .line 67
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    return v1

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_26
    return v0

    .line 61
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "node cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 190
    instance-of v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 191
    :cond_6
    check-cast p1, Lcom/badlogic/gdx/utils/BinaryHeap;

    .line 192
    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-eq v0, v2, :cond_f

    return v1

    .line 193
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_26

    .line 195
    aget-object v4, v0, v3

    iget v4, v4, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    aget-object v5, p1, v3

    iget v5, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_23

    return v1

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_26
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 5

    .line 201
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_16

    mul-int/lit8 v1, v1, 0x1f

    .line 202
    iget-object v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 105
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

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

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-eqz v0, :cond_a

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 75
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The heap is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->remove(I)Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 86
    iget p1, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/BinaryHeap;->remove(I)Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/badlogic/gdx/utils/BinaryHeap$Node;F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 117
    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 118
    iput p2, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    .line 119
    :goto_b
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr p2, v0

    if-eqz p2, :cond_16

    .line 120
    iget p1, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    goto :goto_1b

    .line 122
    :cond_16
    iget p1, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    :goto_1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 208
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 209
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 210
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x0

    .line 211
    aget-object v2, v0, v2

    iget v2, v2, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 212
    :goto_1e
    iget v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-ge v2, v3, :cond_31

    const-string v3, ", "

    .line 213
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 214
    aget-object v3, v0, v2

    iget v3, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    const/16 v0, 0x5d

    .line 216
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 217
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
