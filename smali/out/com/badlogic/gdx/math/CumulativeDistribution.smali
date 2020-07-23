.class public Lcom/badlogic/gdx/math/CumulativeDistribution;
.super Ljava/lang/Object;
.source "CumulativeDistribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private values:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/CumulativeDistribution<",
            "TT;>.CumulativeValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v2}, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;-><init>(Lcom/badlogic/gdx/math/CumulativeDistribution;Ljava/lang/Object;FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;-><init>(Lcom/badlogic/gdx/math/CumulativeDistribution;Ljava/lang/Object;FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public generate()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    :goto_2
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_20

    .line 45
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    add-float/2addr v0, v2

    .line 46
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v1

    iput v0, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    return-void
.end method

.method public generateNormalized()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 53
    :goto_4
    iget-object v4, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_18

    .line 54
    iget-object v4, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 57
    :cond_18
    :goto_18
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_37

    .line 58
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 59
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v0

    iput v1, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_37
    return-void
.end method

.method public generateUniform()V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    const/4 v0, 0x0

    .line 66
    :goto_9
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_29

    .line 68
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v0

    iput v1, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v2, v2, v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    mul-float v3, v3, v1

    iput v3, v2, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    goto :goto_9

    :cond_29
    return-void
.end method

.method public getInterval(I)F
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    return p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public setInterval(IF)V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object p1, v0, p1

    iput p2, p1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    return-void
.end method

.method public setInterval(Ljava/lang/Object;F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    .line 118
    iget-object v2, v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->value:Ljava/lang/Object;

    if-ne v2, p1, :cond_6

    .line 119
    iput p2, v1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    :cond_18
    return-void
.end method

.method public size()I
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/CumulativeDistribution;->value(F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public value(F)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_7
    if-gt v1, v0, :cond_28

    sub-int v2, v0, v1

    .line 82
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 83
    iget-object v3, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object v3, v3, v2

    .line 84
    iget v4, v3, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1f

    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    .line 86
    :cond_1f
    iget v3, v3, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_28

    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    .line 91
    :cond_28
    iget-object p1, p0, Lcom/badlogic/gdx/math/CumulativeDistribution;->values:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->value:Ljava/lang/Object;

    return-object p1
.end method
