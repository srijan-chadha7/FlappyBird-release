.class public Lcom/badlogic/gdx/utils/Array;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Array$ArrayIterable;,
        Lcom/badlogic/gdx/utils/Array$ArrayIterator;
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


# instance fields
.field public items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

.field public ordered:Z

.field private predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Predicate$PredicateIterable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;)V"
        }
    .end annotation

    .line 76
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 77
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 78
    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 69
    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    .line 55
    new-array p1, p2, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    .line 64
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 94
    iput p4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 95
    iget-object p1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget p4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 85
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    return-void
.end method

.method public static of(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 596
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static of(ZILjava/lang/Class;)Lcom/badlogic/gdx/utils/Array;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 601
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    return-object v0
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 606
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 100
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_17

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 101
    :cond_17
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 106
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

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

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 107
    :cond_19
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 108
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    .line 109
    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    return-void
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 114
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

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

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 115
    :cond_19
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 116
    aput-object p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 117
    aput-object p3, v0, p1

    add-int/lit8 v1, v1, 0x3

    .line 118
    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    return-void
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 123
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

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

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 124
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 125
    aput-object p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    .line 126
    aput-object p3, v0, p1

    add-int/lit8 p1, v1, 0x3

    .line 127
    aput-object p4, v0, p1

    add-int/lit8 v1, v1, 0x4

    .line 128
    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    return-void
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

    .line 132
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

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

    .line 136
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v0, v1, :cond_e

    .line 138
    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    return-void

    .line 137
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start + count must be <= size: "

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

.method public varargs addAll([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 142
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    return-void
.end method

.method public addAll([Ljava/lang/Object;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 147
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v1, p3

    .line 148
    array-length v2, v0

    if-le v1, v2, :cond_18

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 149
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    return-void
.end method

.method public clear()V
    .registers 6

    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 375
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_e

    const/4 v4, 0x0

    .line 376
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 377
    :cond_e
    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 189
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez p2, :cond_1a

    if-nez p1, :cond_b

    goto :goto_1a

    :cond_b
    :goto_b
    if-ltz v1, :cond_25

    add-int/lit8 p2, v1, -0x1

    .line 195
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

    .line 192
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

.method public containsAll(Lcom/badlogic/gdx/utils/Array;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;Z)Z"
        }
    .end annotation

    .line 204
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 205
    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, p1, :cond_14

    .line 206
    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_11

    return v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p1, 0x1

    return p1
.end method

.method public containsAny(Lcom/badlogic/gdx/utils/Array;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;Z)Z"
        }
    .end annotation

    .line 214
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 215
    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, p1, :cond_15

    .line 216
    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return v1
.end method

.method public ensureCapacity(I)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    if-ltz p1, :cond_16

    .line 393
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v0, p1

    .line 394
    iget-object p1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length p1, p1

    if-le v0, p1, :cond_13

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 395
    :cond_13
    iget-object p1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object p1

    .line 392
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

    .line 539
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 540
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_f

    return v2

    .line 541
    :cond_f
    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    .line 542
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-nez v1, :cond_16

    return v2

    .line 543
    :cond_16
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 544
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v1, v3, :cond_1d

    return v2

    .line 545
    :cond_1d
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v1, :cond_37

    .line 547
    aget-object v5, v3, v4

    aget-object v6, p1, v4

    if-nez v5, :cond_2d

    if-nez v6, :cond_33

    goto :goto_34

    .line 548
    :cond_2d
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    :cond_33
    return v2

    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_37
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 556
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 557
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_f

    return v2

    .line 558
    :cond_f
    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    .line 559
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-nez v1, :cond_16

    return v2

    .line 560
    :cond_16
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 561
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v1, v3, :cond_1d

    return v2

    .line 562
    :cond_1d
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v1, :cond_2e

    .line 564
    aget-object v5, v3, v4

    aget-object v6, p1, v4

    if-eq v5, v6, :cond_2b

    return v2

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_2e
    return v0
.end method

.method public first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 359
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_a

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 359
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 154
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 154
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 6

    .line 525
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 526
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 528
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    :goto_f
    if-ge v1, v2, :cond_1f

    mul-int/lit8 v3, v3, 0x1f

    .line 530
    aget-object v4, v0, v1

    if-eqz v4, :cond_1c

    .line 531
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    return v3
.end method

.method public indexOf(Ljava/lang/Object;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p2, :cond_18

    if-nez p1, :cond_8

    goto :goto_18

    .line 230
    :cond_8
    iget p2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_a
    if-ge v1, p2, :cond_24

    .line 231
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 227
    :cond_18
    :goto_18
    iget p2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1a
    if-ge v1, p2, :cond_24

    .line 228
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

.method public insert(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 164
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt p1, v0, :cond_35

    .line 165
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 166
    array-length v2, v1

    if-ne v0, v2, :cond_19

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v1

    .line 167
    :cond_19
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v0, :cond_26

    add-int/lit8 v0, p1, 0x1

    .line 168
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2c

    .line 170
    :cond_26
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v2, v1, p1

    aput-object v2, v1, v0

    .line 171
    :goto_2c
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 172
    aput-object p2, v1, p1

    return-void

    .line 164
    :cond_35
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isEmpty()Z
    .registers 2

    .line 370
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 478
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_b

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    return-object v0

    .line 479
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    if-nez v0, :cond_16

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    .line 480
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    if-nez p2, :cond_19

    if-nez p1, :cond_7

    goto :goto_19

    .line 247
    :cond_7
    iget p2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 p2, p2, -0x1

    :goto_b
    if-ltz p2, :cond_27

    .line 248
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return p2

    :cond_16
    add-int/lit8 p2, p2, -0x1

    goto :goto_b

    .line 244
    :cond_19
    :goto_19
    iget p2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 p2, p2, -0x1

    :goto_1d
    if-ltz p2, :cond_27

    .line 245
    aget-object v1, v0, p2

    if-ne v1, p1, :cond_24

    return p2

    :cond_24
    add-int/lit8 p2, p2, -0x1

    goto :goto_1d

    :cond_27
    const/4 p1, -0x1

    return p1
.end method

.method public notEmpty()Z
    .registers 2

    .line 365
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 353
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_b

    .line 354
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    .line 353
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 344
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_12

    add-int/lit8 v0, v0, -0x1

    .line 345
    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 347
    aput-object v3, v0, v1

    return-object v2

    .line 344
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public random()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 508
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 509
    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;Z)Z"
        }
    .end annotation

    .line 313
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 315
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p2, :cond_24

    .line 317
    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v4, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, p2, :cond_45

    .line 318
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v4, :cond_21

    .line 320
    aget-object v7, v1, v6

    if-ne v5, v7, :cond_1e

    .line 321
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 328
    :cond_24
    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v4, v0

    const/4 v3, 0x0

    :goto_28
    if-ge v3, p2, :cond_45

    .line 329
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2f
    if-ge v6, v4, :cond_42

    .line 331
    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 332
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_42

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_45
    if-eq v4, v0, :cond_48

    const/4 v2, 0x1

    :cond_48
    return v2
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 279
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_25

    .line 280
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 281
    aget-object v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    .line 282
    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 283
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v0, :cond_19

    add-int/lit8 v0, p1, 0x1

    .line 284
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, v0, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    .line 286
    :cond_19
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v0, v1, v0

    aput-object v0, v1, p1

    .line 287
    :goto_1f
    iget p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x0

    aput-object v0, v1, p1

    return-object v2

    .line 279
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .registers 8

    .line 293
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v0, :cond_4f

    if-gt p1, p2, :cond_30

    .line 296
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v0, v2

    .line 298
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v4, :cond_19

    add-int/2addr v2, p1

    sub-int p2, v0, v2

    .line 299
    invoke-static {v1, v2, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    :cond_19
    add-int/lit8 p2, p2, 0x1

    .line 301
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int v2, v0, p2

    .line 302
    invoke-static {v1, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_24
    move p1, v3

    :goto_25
    if-ge p1, v0, :cond_2d

    const/4 p2, 0x0

    .line 305
    aput-object p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    .line 306
    :cond_2d
    iput v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    return-void

    .line 295
    :cond_30
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

    .line 294
    :cond_4f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_71

    :goto_70
    throw p1

    :goto_71
    goto :goto_70
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1d

    if-nez p1, :cond_9

    goto :goto_1d

    .line 267
    :cond_9
    iget p2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p2, :cond_2d

    .line 268
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 269
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    return v2

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 260
    :cond_1d
    :goto_1d
    iget p2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_20
    if-ge v3, p2, :cond_2d

    .line 261
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_2a

    .line 262
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    return v2

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2d
    return v1
.end method

.method protected resize(I)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 410
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 411
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object p1
.end method

.method public reverse()V
    .registers 8

    .line 454
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 455
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_18

    sub-int v4, v2, v3

    .line 457
    aget-object v5, v0, v3

    .line 458
    aget-object v6, v0, v4

    aput-object v6, v0, v3

    .line 459
    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    return-void
.end method

.method public select(Lcom/badlogic/gdx/utils/Predicate;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 488
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;-><init>(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V

    .line 489
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    if-nez v0, :cond_15

    .line 490
    new-instance v0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;-><init>(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    goto :goto_18

    .line 492
    :cond_15
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;->set(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V

    .line 493
    :goto_18
    iget-object p1, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    return-object p1
.end method

.method public selectRanked(Ljava/util/Comparator;I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_10

    .line 438
    invoke-static {}, Lcom/badlogic/gdx/utils/Select;->instance()Lcom/badlogic/gdx/utils/Select;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/Select;->select([Ljava/lang/Object;Ljava/util/Comparator;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 436
    :cond_10
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "nth_lowest must be greater than 0, 1 = first, 2 = second..."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selectRankedIndex(Ljava/util/Comparator;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_10

    .line 450
    invoke-static {}, Lcom/badlogic/gdx/utils/Select;->instance()Lcom/badlogic/gdx/utils/Select;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/Select;->selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result p1

    return p1

    .line 448
    :cond_10
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "nth_lowest must be greater than 0, 1 = first, 2 = second..."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void

    .line 159
    :cond_9
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setSize(I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 401
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 402
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_11

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 403
    :cond_11
    iput p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 404
    iget-object p1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object p1
.end method

.method public shrink()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v0, v1, :cond_a

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 385
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method public shuffle()V
    .registers 6

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 465
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_17

    .line 466
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 467
    aget-object v3, v0, v1

    .line 468
    aget-object v4, v0, v2

    aput-object v4, v0, v1

    .line 469
    aput-object v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method public sort()V
    .registers 5

    .line 419
    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/badlogic/gdx/utils/Sort;->sort([Ljava/lang/Object;II)V

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 424
    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/badlogic/gdx/utils/Sort;->sort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method

.method public swap(II)V
    .registers 6

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_32

    if-ge p2, v0, :cond_13

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 179
    aget-object v1, v0, p1

    .line 180
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 181
    aput-object v1, v0, p2

    return-void

    .line 177
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_32
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)[TV;"
        }
    .end annotation

    .line 519
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 569
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 570
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 571
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 572
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x0

    .line 573
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 574
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2d

    const-string v3, ", "

    .line 575
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 576
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2d
    const/16 v0, 0x5d

    .line 578
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 579
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 583
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_7

    const-string p1, ""

    return-object p1

    .line 584
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 585
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 586
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    .line 587
    :goto_17
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_26

    .line 588
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 589
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 591
    :cond_26
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public truncate(I)V
    .registers 5

    if-ltz p1, :cond_17

    .line 500
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v0, p1, :cond_7

    return-void

    :cond_7
    move v0, p1

    .line 501
    :goto_8
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_14

    .line 502
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 503
    :cond_14
    iput p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    return-void

    .line 499
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    :goto_2e
    throw v0

    :goto_2f
    goto :goto_2e
.end method
