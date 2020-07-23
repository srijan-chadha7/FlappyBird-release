.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.source "ArraySelection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rangeSelect:Z

.field private rangeStart:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    .line 16
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method protected changed()V
    .registers 2

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    return-void
.end method

.method public choose(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_77

    .line 21
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled:Z

    if-eqz v0, :cond_7

    return-void

    .line 23
    :cond_7
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->multiple:Z

    if-nez v0, :cond_10

    goto :goto_73

    .line 28
    :cond_10
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_6d

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_24

    const/4 v0, -0x1

    goto :goto_2a

    :cond_24
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    :goto_2a
    if-eq v0, v1, :cond_6d

    .line 31
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->snapshot()V

    .line 34
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, p1, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    if-le v0, p1, :cond_3a

    goto :goto_3d

    :cond_3a
    move v4, v0

    move v0, p1

    move p1, v4

    .line 40
    :goto_3d
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v2

    if-nez v2, :cond_4a

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    :cond_4a
    :goto_4a
    if-gt p1, v0, :cond_5a

    .line 42
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_4a

    .line 43
    :cond_5a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->fireChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->revert()V

    goto :goto_67

    .line 46
    :cond_64
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->changed()V

    .line 47
    :goto_67
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->cleanup()V

    return-void

    .line 52
    :cond_6d
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    return-void

    .line 24
    :cond_73
    :goto_73
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_80

    :goto_7f
    throw p1

    :goto_80
    goto :goto_7f
.end method

.method public getRangeSelect()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    return v0
.end method

.method public setRangeSelect(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    return-void
.end method

.method public validate()V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    .line 73
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_a

    .line 74
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    return-void

    .line 77
    :cond_a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 81
    :cond_27
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->required:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v1, :cond_38

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    :cond_38
    return-void
.end method
