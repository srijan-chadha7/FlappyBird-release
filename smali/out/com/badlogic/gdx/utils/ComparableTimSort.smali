.class Lcom/badlogic/gdx/utils/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;

.field private tmpCount:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 44
    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/16 v0, 0x100

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    const/16 v0, 0x28

    .line 72
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    .line 73
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .registers 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 44
    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 130
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 133
    array-length p1, p1

    const/16 v0, 0x200

    if-ge p1, v0, :cond_13

    ushr-int/lit8 v0, p1, 0x1

    goto :goto_15

    :cond_13
    const/16 v0, 0x100

    .line 134
    :goto_15
    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    const/16 v0, 0x78

    if-ge p1, v0, :cond_1f

    const/4 p1, 0x5

    goto :goto_30

    :cond_1f
    const/16 v0, 0x606

    if-ge p1, v0, :cond_26

    const/16 p1, 0xa

    goto :goto_30

    :cond_26
    const v0, 0x1d16f

    if-ge p1, v0, :cond_2e

    const/16 p1, 0x13

    goto :goto_30

    :cond_2e
    const/16 p1, 0x28

    .line 145
    :goto_30
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    .line 146
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    return-void
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .registers 9

    if-ne p3, p1, :cond_4

    :goto_2
    add-int/lit8 p3, p3, 0x1

    :cond_4
    if-ge p3, p2, :cond_3f

    .line 216
    aget-object v0, p0, p3

    check-cast v0, Ljava/lang/Comparable;

    move v1, p1

    move v2, p3

    :goto_c
    const/4 v3, 0x1

    if-ge v1, v2, :cond_21

    add-int v4, v1, v2

    ushr-int/lit8 v3, v4, 0x1

    .line 227
    aget-object v4, p0, v3

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1d

    move v2, v3

    goto :goto_c

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_c

    :cond_21
    sub-int v2, p3, v1

    if-eq v2, v3, :cond_36

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2e

    add-int/lit8 v3, v1, 0x1

    .line 248
    invoke-static {p0, v1, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3c

    :cond_2e
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    .line 243
    aget-object v3, p0, v3

    aput-object v3, p0, v2

    :cond_36
    add-int/lit8 v2, v1, 0x1

    .line 245
    aget-object v3, p0, v1

    aput-object v3, p0, v2

    .line 250
    :goto_3c
    aput-object v0, p0, v1

    goto :goto_2

    :cond_3f
    return-void
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .registers 6

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 279
    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Comparable;

    aget-object v2, p0, p1

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2b

    :goto_14
    if-ge v1, p2, :cond_27

    .line 280
    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_27

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 282
    :cond_27
    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    goto :goto_3e

    :cond_2b
    :goto_2b
    if-ge v1, p2, :cond_3e

    .line 284
    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3e

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3e
    :goto_3e
    sub-int/2addr v1, p1

    return v1
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .registers 4

    .line 771
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmpCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmpCount:I

    .line 772
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_2e

    shr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_21

    goto :goto_2a

    .line 785
    :cond_21
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length p1, p1

    ushr-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 787
    :goto_2a
    new-array p1, p1, [Ljava/lang/Object;

    .line 788
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 790
    :cond_2e
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object p1
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    add-int v0, p2, p4

    .line 437
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_30

    sub-int/2addr p3, p4

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_f
    if-ge v3, p3, :cond_27

    add-int v4, v0, v3

    .line 440
    aget-object v4, p1, v4

    invoke-interface {p0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_27

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_23

    move v1, v3

    move v3, p3

    goto :goto_f

    :cond_23
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_f

    :cond_27
    if-le v3, p3, :cond_2a

    goto :goto_2b

    :cond_2a
    move p3, v3

    :goto_2b
    add-int/2addr v1, p4

    add-int/2addr p3, p4

    move p4, p3

    move p3, v1

    goto :goto_53

    :cond_30
    add-int/lit8 p3, p4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_34
    if-ge v3, p3, :cond_4c

    sub-int v4, v0, v3

    .line 454
    aget-object v4, p1, v4

    invoke-interface {p0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_4c

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_48

    move v1, v3

    move v3, p3

    goto :goto_34

    :cond_48
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_34

    :cond_4c
    if-le v3, p3, :cond_4f

    goto :goto_50

    :cond_4f
    move p3, v3

    :goto_50
    sub-int p3, p4, p3

    sub-int/2addr p4, v1

    :goto_53
    add-int/2addr p3, v2

    :goto_54
    if-ge p3, p4, :cond_6a

    sub-int v0, p4, p3

    ushr-int/2addr v0, v2

    add-int/2addr v0, p3

    add-int v1, p2, v0

    .line 477
    aget-object v1, p1, v1

    invoke-interface {p0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_68

    add-int/lit8 v0, v0, 0x1

    move p3, v0

    goto :goto_54

    :cond_68
    move p4, v0

    goto :goto_54

    :cond_6a
    return p4
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    add-int v0, p2, p4

    .line 501
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_30

    add-int/lit8 p3, p4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_10
    if-ge v3, p3, :cond_28

    sub-int v4, v0, v3

    .line 504
    aget-object v4, p1, v4

    invoke-interface {p0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_28

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_24

    move v1, v3

    move v3, p3

    goto :goto_10

    :cond_24
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_10

    :cond_28
    if-le v3, p3, :cond_2b

    goto :goto_2c

    :cond_2b
    move p3, v3

    :goto_2c
    sub-int p3, p4, p3

    sub-int/2addr p4, v1

    goto :goto_53

    :cond_30
    sub-int/2addr p3, p4

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_33
    if-ge v3, p3, :cond_4b

    add-int v4, v0, v3

    .line 519
    aget-object v4, p1, v4

    invoke-interface {p0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4b

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_47

    move v1, v3

    move v3, p3

    goto :goto_33

    :cond_47
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_33

    :cond_4b
    if-le v3, p3, :cond_4e

    goto :goto_4f

    :cond_4e
    move p3, v3

    :goto_4f
    add-int v0, v1, p4

    add-int/2addr p4, p3

    move p3, v0

    :goto_53
    add-int/2addr p3, v2

    :goto_54
    if-ge p3, p4, :cond_6a

    sub-int v0, p4, p3

    ushr-int/2addr v0, v2

    add-int/2addr v0, p3

    add-int v1, p2, v0

    .line 541
    aget-object v1, p1, v1

    invoke-interface {p0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_66

    move p4, v0

    goto :goto_54

    :cond_66
    add-int/lit8 v0, v0, 0x1

    move p3, v0

    goto :goto_54

    :cond_6a
    return p4
.end method

.method private mergeAt(I)V
    .registers 10

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    aget v1, v0, p1

    .line 378
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v3, v2, p1

    add-int/lit8 v4, p1, 0x1

    .line 379
    aget v5, v0, v4

    .line 380
    aget v6, v2, v4

    add-int v7, v3, v6

    .line 388
    aput v7, v2, p1

    .line 389
    iget v7, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v7, v7, -0x3

    if-ne p1, v7, :cond_22

    add-int/lit8 p1, p1, 0x2

    .line 390
    aget v7, v0, p1

    aput v7, v0, v4

    .line 391
    aget p1, v2, p1

    aput p1, v2, v4

    .line 393
    :cond_22
    iget p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 399
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Comparable;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v3, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result p1

    add-int/2addr v1, p1

    sub-int/2addr v3, p1

    if-nez v3, :cond_38

    return-void

    .line 409
    :cond_38
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v0, v1, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v6, -0x1

    invoke-static {v0, p1, v5, v6, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result p1

    if-nez p1, :cond_4b

    return-void

    :cond_4b
    if-gt v3, p1, :cond_51

    .line 415
    invoke-direct {p0, v1, v3, v5, p1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_54

    .line 417
    :cond_51
    invoke-direct {p0, v1, v3, v5, p1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeHi(IIII)V

    :goto_54
    return-void
.end method

.method private mergeCollapse()V
    .registers 8

    .line 345
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_32

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_24

    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    aget v4, v1, v0

    add-int/lit8 v5, v0, 0x1

    aget v6, v1, v5

    add-int/2addr v4, v6

    if-gt v3, v4, :cond_24

    .line 348
    aget v2, v1, v2

    aget v1, v1, v5

    if-ge v2, v1, :cond_20

    add-int/lit8 v0, v0, -0x1

    .line 349
    :cond_20
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 350
    :cond_24
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-gt v2, v1, :cond_32

    .line 351
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_32
    return-void
.end method

.method private mergeForceCollapse()V
    .registers 5

    .line 360
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_17

    .line 362
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_17

    add-int/lit8 v0, v0, -0x1

    .line 363
    :cond_17
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1b
    return-void
.end method

.method private mergeHi(IIII)V
    .registers 16

    .line 670
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 671
    invoke-direct {p0, p4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 672
    invoke-static {v0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p1, p2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-int/lit8 v5, p4, -0x1

    add-int/2addr p3, p4

    sub-int/2addr p3, v4

    add-int/lit8 v6, p3, -0x1

    add-int/lit8 v7, v3, -0x1

    .line 679
    aget-object v3, v0, v3

    aput-object v3, v0, p3

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_23

    sub-int/2addr v6, v5

    .line 681
    invoke-static {v1, v2, v0, v6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_23
    if-ne p4, v4, :cond_32

    sub-int/2addr v6, p2

    sub-int/2addr v7, p2

    add-int/2addr v7, v4

    add-int/lit8 p1, v6, 0x1

    .line 687
    invoke-static {v0, v7, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    aget-object p1, v1, v5

    aput-object p1, v0, v6

    return-void

    .line 692
    :cond_32
    iget p3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    :goto_34
    move v8, p2

    const/4 p2, 0x0

    const/4 v3, 0x0

    .line 703
    :cond_37
    aget-object v9, v1, v5

    check-cast v9, Ljava/lang/Comparable;

    aget-object v10, v0, v7

    invoke-interface {v9, v10}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_58

    add-int/lit8 p2, v6, -0x1

    add-int/lit8 v9, v7, -0x1

    .line 704
    aget-object v7, v0, v7

    aput-object v7, v0, v6

    add-int/2addr v3, v4

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_54

    move v3, p2

    move v7, v9

    goto/16 :goto_ca

    :cond_54
    move v6, p2

    move v7, v9

    const/4 p2, 0x0

    goto :goto_6b

    :cond_58
    add-int/lit8 v3, v6, -0x1

    add-int/lit8 v9, v5, -0x1

    .line 709
    aget-object v5, v1, v5

    aput-object v5, v0, v6

    add-int/2addr p2, v4

    add-int/lit8 p4, p4, -0x1

    if-ne p4, v4, :cond_68

    :goto_65
    move v5, v9

    goto/16 :goto_ca

    :cond_68
    move v6, v3

    move v5, v9

    const/4 v3, 0x0

    :goto_6b
    or-int v9, v3, p2

    if-lt v9, p3, :cond_37

    .line 722
    :goto_6f
    aget-object p2, v1, v5

    check-cast p2, Ljava/lang/Comparable;

    add-int/lit8 v3, v8, -0x1

    invoke-static {p2, v0, p1, v8, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result p2

    sub-int p2, v8, p2

    if-eqz p2, :cond_8b

    sub-int v3, v6, p2

    sub-int/2addr v7, p2

    sub-int/2addr v8, p2

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v9, v3, 0x1

    .line 727
    invoke-static {v0, v6, v0, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v8, :cond_8c

    goto :goto_ca

    :cond_8b
    move v3, v6

    :cond_8c
    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v9, v5, -0x1

    .line 730
    aget-object v5, v1, v5

    aput-object v5, v0, v3

    add-int/lit8 p4, p4, -0x1

    if-ne p4, v4, :cond_9a

    move v3, v6

    goto :goto_65

    .line 733
    :cond_9a
    aget-object v3, v0, v7

    check-cast v3, Ljava/lang/Comparable;

    add-int/lit8 v5, p4, -0x1

    invoke-static {v3, v1, v2, p4, v5}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    sub-int v3, p4, v3

    if-eqz v3, :cond_b9

    sub-int v5, v6, v3

    sub-int v6, v9, v3

    sub-int/2addr p4, v3

    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v5, 0x1

    .line 738
    invoke-static {v1, v9, v0, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gt p4, v4, :cond_bb

    move v3, v5

    move v5, v6

    goto :goto_ca

    :cond_b9
    move v5, v6

    move v6, v9

    :cond_bb
    add-int/lit8 v9, v5, -0x1

    add-int/lit8 v10, v7, -0x1

    .line 741
    aget-object v7, v0, v7

    aput-object v7, v0, v5

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_ef

    move v5, v6

    move v3, v9

    move v7, v10

    :goto_ca
    if-ge p3, v4, :cond_cd

    const/4 p3, 0x1

    .line 748
    :cond_cd
    iput p3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    if-ne p4, v4, :cond_de

    sub-int/2addr v3, v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v4

    add-int/lit8 p1, v3, 0x1

    .line 754
    invoke-static {v0, v7, v0, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    aget-object p1, v1, v5

    aput-object p1, v0, v3

    goto :goto_e6

    :cond_de
    if-eqz p4, :cond_e7

    add-int/lit8 p1, p4, -0x1

    sub-int/2addr v3, p1

    .line 761
    invoke-static {v1, v2, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e6
    return-void

    .line 757
    :cond_e7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Comparison method violates its general contract!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ef
    add-int/lit8 p3, p3, -0x1

    const/4 v5, 0x7

    if-lt p2, v5, :cond_f6

    const/4 p2, 0x1

    goto :goto_f7

    :cond_f6
    const/4 p2, 0x0

    :goto_f7
    if-lt v3, v5, :cond_fb

    const/4 v3, 0x1

    goto :goto_fc

    :cond_fb
    const/4 v3, 0x0

    :goto_fc
    or-int/2addr p2, v3

    if-nez p2, :cond_10a

    if-gez p3, :cond_102

    const/4 p3, 0x0

    :cond_102
    add-int/lit8 p3, p3, 0x2

    move v5, v6

    move p2, v8

    move v6, v9

    move v7, v10

    goto/16 :goto_34

    :cond_10a
    move v5, v6

    move v6, v9

    move v7, v10

    goto/16 :goto_6f
.end method

.method private mergeLo(IIII)V
    .registers 16

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 567
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 568
    invoke-static {v0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p3, 0x1

    .line 575
    aget-object p3, v0, p3

    aput-object p3, v0, p1

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_1a

    .line 577
    invoke-static {v1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1a
    const/4 p1, 0x1

    if-ne p2, p1, :cond_26

    .line 581
    invoke-static {v0, v4, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, p4

    .line 582
    aget-object p1, v1, v2

    aput-object p1, v0, v3

    return-void

    .line 586
    :cond_26
    iget p3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    move v5, p2

    const/4 p2, 0x0

    :goto_2a
    move v7, p4

    const/4 p4, 0x0

    const/4 v6, 0x0

    .line 597
    :cond_2d
    aget-object v8, v0, v4

    check-cast v8, Ljava/lang/Comparable;

    aget-object v9, v1, p2

    invoke-interface {v8, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_4e

    add-int/lit8 p4, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    .line 598
    aget-object v4, v0, v4

    aput-object v4, v0, v3

    add-int/2addr v6, p1

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_4a

    move v6, p4

    :goto_47
    move v4, v8

    goto/16 :goto_ae

    :cond_4a
    move v3, p4

    move v4, v8

    const/4 p4, 0x0

    goto :goto_60

    :cond_4e
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v8, p2, 0x1

    .line 603
    aget-object p2, v1, p2

    aput-object p2, v0, v3

    add-int/2addr p4, p1

    add-int/lit8 v5, v5, -0x1

    if-ne v5, p1, :cond_5d

    move p2, v8

    goto :goto_ae

    :cond_5d
    move v3, v6

    move p2, v8

    const/4 v6, 0x0

    :goto_60
    or-int v8, p4, v6

    if-lt v8, p3, :cond_2d

    .line 616
    :goto_64
    aget-object p4, v0, v4

    check-cast p4, Ljava/lang/Comparable;

    invoke-static {p4, v1, p2, v5, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result p4

    if-eqz p4, :cond_78

    .line 618
    invoke-static {v1, p2, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, p4

    add-int/2addr p2, p4

    sub-int/2addr v5, p4

    if-gt v5, p1, :cond_78

    move v6, v3

    goto :goto_ae

    :cond_78
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    .line 625
    aget-object v4, v0, v4

    aput-object v4, v0, v3

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_85

    goto :goto_47

    .line 628
    :cond_85
    aget-object v3, v1, p2

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v3, v0, v8, v7, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    if-eqz v3, :cond_9d

    .line 630
    invoke-static {v0, v8, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, v6, v3

    add-int v6, v8, v3

    sub-int/2addr v7, v3

    if-nez v7, :cond_9f

    move v10, v6

    move v6, v4

    move v4, v10

    goto :goto_ae

    :cond_9d
    move v4, v6

    move v6, v8

    :cond_9f
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, p2, 0x1

    .line 636
    aget-object p2, v1, p2

    aput-object p2, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v5, p1, :cond_cc

    move v4, v6

    move v6, v8

    move p2, v9

    :goto_ae
    if-ge p3, p1, :cond_b1

    const/4 p3, 0x1

    .line 643
    :cond_b1
    iput p3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    if-ne v5, p1, :cond_be

    .line 647
    invoke-static {v0, v4, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v7

    .line 648
    aget-object p1, v1, p2

    aput-object p1, v0, v6

    goto :goto_c3

    :cond_be
    if-eqz v5, :cond_c4

    .line 654
    invoke-static {v1, p2, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_c3
    return-void

    .line 650
    :cond_c4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Comparison method violates its general contract!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cc
    add-int/lit8 p3, p3, -0x1

    const/4 p2, 0x7

    if-lt p4, p2, :cond_d3

    const/4 p4, 0x1

    goto :goto_d4

    :cond_d3
    const/4 p4, 0x0

    :goto_d4
    if-lt v3, p2, :cond_d8

    const/4 p2, 0x1

    goto :goto_d9

    :cond_d8
    const/4 p2, 0x0

    :goto_d9
    or-int/2addr p2, p4

    if-nez p2, :cond_e7

    if-gez p3, :cond_df

    const/4 p3, 0x0

    :cond_df
    add-int/lit8 p3, p3, 0x2

    move v4, v6

    move p4, v7

    move v3, v8

    move p2, v9

    goto/16 :goto_2a

    :cond_e7
    move v4, v6

    move v3, v8

    move p2, v9

    goto/16 :goto_64
.end method

.method private static minRunLength(I)I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x20

    if-lt p0, v1, :cond_b

    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_b
    add-int/2addr p0, v0

    return p0
.end method

.method private pushRun(II)V
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 334
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 335
    iput v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    return-void
.end method

.method private static rangeCheck(III)V
    .registers 5

    if-gt p1, p2, :cond_13

    if-ltz p1, :cond_d

    if-gt p2, p0, :cond_7

    return-void

    .line 803
    :cond_7
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 802
    :cond_d
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 801
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > toIndex("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .registers 6

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ge p1, p2, :cond_13

    .line 299
    aget-object v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 300
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    add-int/lit8 p1, p2, -0x1

    .line 301
    aput-object v0, p0, p2

    move p2, p1

    move p1, v1

    goto :goto_2

    :cond_13
    return-void
.end method

.method static sort([Ljava/lang/Object;)V
    .registers 3

    .line 155
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .registers 9

    .line 159
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    const/16 v1, 0x20

    if-ge v0, v1, :cond_17

    .line 165
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v0

    add-int/2addr v0, p1

    .line 166
    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    return-void

    .line 172
    :cond_17
    new-instance v1, Lcom/badlogic/gdx/utils/ComparableTimSort;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    .line 173
    invoke-static {v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 176
    :cond_20
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v3

    if-ge v3, v2, :cond_32

    if-gt v0, v2, :cond_2a

    move v4, v0

    goto :goto_2b

    :cond_2a
    move v4, v2

    :goto_2b
    add-int v5, p1, v4

    add-int/2addr v3, p1

    .line 181
    invoke-static {p0, p1, v5, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    move v3, v4

    .line 186
    :cond_32
    invoke-direct {v1, p1, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    .line 187
    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    add-int/2addr p1, v3

    sub-int/2addr v0, v3

    if-nez v0, :cond_20

    .line 196
    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    return-void
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;II)V
    .registers 10

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 78
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    sub-int v1, p3, p2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    return-void

    :cond_d
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1a

    .line 84
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v0

    add-int/2addr v0, p2

    .line 85
    invoke-static {p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    return-void

    .line 89
    :cond_1a
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 90
    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmpCount:I

    .line 94
    invoke-static {v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 97
    :cond_22
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v3

    if-ge v3, v2, :cond_34

    if-gt v1, v2, :cond_2c

    move v4, v1

    goto :goto_2d

    :cond_2c
    move v4, v2

    :goto_2d
    add-int v5, p2, v4

    add-int/2addr v3, p2

    .line 102
    invoke-static {p1, p2, v5, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    move v3, v4

    .line 107
    :cond_34
    invoke-direct {p0, p2, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    .line 108
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    add-int/2addr p2, v3

    sub-int/2addr v1, v3

    if-nez v1, :cond_22

    .line 117
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 121
    iget-object p2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 122
    iget p3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmpCount:I

    :goto_48
    if-ge v0, p3, :cond_4f

    .line 123
    aput-object p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_4f
    return-void
.end method
