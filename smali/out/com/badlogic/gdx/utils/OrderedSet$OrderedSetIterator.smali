.class public Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
.super Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
.source "OrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    .line 134
    iget-object p1, p1, Lcom/badlogic/gdx/utils/OrderedSet;->items:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    if-eqz v0, :cond_2b

    .line 144
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->valid:Z

    if-eqz v0, :cond_23

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 146
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 147
    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-ge v1, v3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    return-object v0

    .line 144
    :cond_23
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    if-ltz v0, :cond_14

    .line 153
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    check-cast v0, Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->removeIndex(I)Ljava/lang/Object;

    return-void

    .line 152
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->nextIndex:I

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->hasNext:Z

    return-void
.end method
