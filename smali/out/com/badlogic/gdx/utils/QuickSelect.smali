.class public Lcom/badlogic/gdx/utils/QuickSelect;
.super Ljava/lang/Object;
.source "QuickSelect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private comp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private medianOfThreePivot(II)I
    .registers 8

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int v2, p1, p2

    .line 68
    div-int/lit8 v2, v2, 0x2

    .line 69
    aget-object v3, v0, v2

    .line 70
    aget-object v0, v0, p2

    .line 74
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_27

    .line 75
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1d

    return v2

    .line 77
    :cond_1d
    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v2, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_26

    return p2

    :cond_26
    return p1

    .line 83
    :cond_27
    iget-object v4, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {v4, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_30

    return p1

    .line 85
    :cond_30
    iget-object p1, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    invoke-interface {p1, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_39

    return p2

    :cond_39
    return v2
.end method

.method private partition(III)I
    .registers 7

    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v0, v0, p3

    .line 37
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->swap(II)V

    move p3, p1

    :goto_8
    if-ge p1, p2, :cond_1e

    .line 40
    iget-object v1, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-interface {v1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1b

    .line 41
    invoke-direct {p0, p3, p1}, Lcom/badlogic/gdx/utils/QuickSelect;->swap(II)V

    add-int/lit8 p3, p3, 0x1

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 45
    :cond_1e
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->swap(II)V

    return p3
.end method

.method private recursiveSelect(III)I
    .registers 6

    if-ne p1, p2, :cond_3

    return p1

    .line 51
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/QuickSelect;->medianOfThreePivot(II)I

    move-result v0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/QuickSelect;->partition(III)I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p3, :cond_12

    goto :goto_22

    :cond_12
    if-ge p3, v1, :cond_1b

    add-int/lit8 v0, v0, -0x1

    .line 58
    invoke-direct {p0, p1, v0, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->recursiveSelect(III)I

    move-result v0

    goto :goto_22

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p3, v1

    .line 60
    invoke-direct {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->recursiveSelect(III)I

    move-result v0

    :goto_22
    return v0
.end method

.method private swap(II)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 95
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 96
    aput-object v1, v0, p2

    return-void
.end method


# virtual methods
.method public select([Ljava/lang/Object;Ljava/util/Comparator;II)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)I"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/badlogic/gdx/utils/QuickSelect;->array:[Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/badlogic/gdx/utils/QuickSelect;->comp:Ljava/util/Comparator;

    add-int/lit8 p4, p4, -0x1

    const/4 p1, 0x0

    .line 32
    invoke-direct {p0, p1, p4, p3}, Lcom/badlogic/gdx/utils/QuickSelect;->recursiveSelect(III)I

    move-result p1

    return p1
.end method
