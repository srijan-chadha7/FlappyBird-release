.class public Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field isDisabled:Z

.field lastSelected:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field multiple:Z

.field private final old:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field private programmaticChangeEvents:Z

.field required:Z

.field final selected:Lcom/badlogic/gdx/utils/OrderedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field private toggle:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    .line 18
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 143
    :cond_b
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 146
    :cond_1b
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    :goto_20
    return-void

    .line 141
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 154
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    .line 155
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 157
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 156
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    if-eqz v2, :cond_3c

    .line 160
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 161
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_3c

    .line 163
    :cond_33
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 167
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void
.end method

.method protected changed()V
    .registers 1

    return-void
.end method

.method public choose(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_93

    .line 35
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    if-eqz v0, :cond_7

    return-void

    .line 36
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 38
    :try_start_a
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-eq v0, v1, :cond_1f

    :cond_19
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_1f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 39
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_8e

    if-ne v0, v1, :cond_35

    .line 57
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    .line 40
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    goto :goto_7d

    .line 44
    :cond_3e
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    if-nez v0, :cond_6d

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 45
    :cond_4d
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-ne v0, v1, :cond_5f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_59
    .catchall {:try_start_35 .. :try_end_59} :catchall_8e

    if-eqz v0, :cond_5f

    .line 57
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    .line 46
    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_66

    const/4 v2, 0x1

    .line 47
    :cond_66
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 49
    :cond_6d
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_73
    .catchall {:try_start_5f .. :try_end_73} :catchall_8e

    if-nez v0, :cond_7b

    if-nez v2, :cond_7b

    .line 57
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    .line 50
    :cond_7b
    :try_start_7b
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 52
    :goto_7d
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 53
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_8a

    .line 55
    :cond_87
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V
    :try_end_8a
    .catchall {:try_start_7b .. :try_end_8a} :catchall_8e

    .line 57
    :goto_8a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    :catchall_8e
    move-exception p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    throw p1

    .line 34
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method cleanup()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_7

    return-void

    .line 202
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 204
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 205
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_25

    :cond_1f
    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 208
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 210
    :goto_25
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fireChangeEvent()Z
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 222
    :cond_6
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 224
    :try_start_e
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 226
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return v1

    :catchall_18
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public getLastSelected()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_12

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiple()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    return v0
.end method

.method public getRequired()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    return v0
.end method

.method public getToggle()Z
    .registers 2

    .line 268
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    return v0
.end method

.method public hasItems()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDisabled()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public items()Lcom/badlogic/gdx/utils/OrderedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 173
    :cond_b
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_1b
    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    :goto_21
    return-void

    .line 171
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 184
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    .line 185
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 187
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 186
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    if-eqz v2, :cond_39

    .line 190
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 191
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_39

    :cond_33
    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 197
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void
.end method

.method revert()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_38

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->first()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_12

    return-void

    .line 106
    :cond_12
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    .line 109
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 110
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_34

    .line 112
    :cond_2f
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 115
    :goto_34
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void

    .line 104
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->snapshot()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 123
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    if-ge v1, v0, :cond_2d

    .line 124
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 126
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 125
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    if-eqz v2, :cond_4a

    .line 129
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 130
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->revert()V

    goto :goto_4a

    .line 131
    :cond_3d
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_4a

    .line 132
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->lastSelected:Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->changed()V

    .line 136
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->cleanup()V

    return-void
.end method

.method public setDisabled(Z)V
    .registers 2

    .line 260
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled:Z

    return-void
.end method

.method public setMultiple(Z)V
    .registers 2

    .line 282
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->multiple:Z

    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .registers 2

    .line 296
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->programmaticChangeEvents:Z

    return-void
.end method

.method public setRequired(Z)V
    .registers 2

    .line 291
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->required:Z

    return-void
.end method

.method public setToggle(Z)V
    .registers 2

    .line 273
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->toggle:Z

    return-void
.end method

.method public size()I
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    return v0
.end method

.method snapshot()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->old:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/OrderedSet;->addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/OrderedSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
