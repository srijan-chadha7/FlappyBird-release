.class public Lcom/badlogic/gdx/utils/IntFloatMap$Values;
.super Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;
.source "IntFloatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .registers 2

    .line 799
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 803
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    if-eqz v0, :cond_7

    .line 804
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->hasNext:Z

    return v0

    .line 803
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()F
    .registers 3

    .line 808
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->hasNext:Z

    if-eqz v0, :cond_2a

    .line 809
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    if-eqz v0, :cond_22

    .line 811
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 812
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    goto :goto_1a

    .line 814
    :cond_12
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->nextIndex:I

    aget v0, v0, v1

    .line 815
    :goto_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->currentIndex:I

    .line 816
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->findNextIndex()V

    return v0

    .line 809
    :cond_22
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_2a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 797
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 797
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/FloatArray;
    .registers 4

    .line 822
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(ZI)V

    .line 823
    :goto_a
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->hasNext:Z

    if-eqz v1, :cond_16

    .line 824
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->next()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_a

    :cond_16
    return-object v0
.end method
