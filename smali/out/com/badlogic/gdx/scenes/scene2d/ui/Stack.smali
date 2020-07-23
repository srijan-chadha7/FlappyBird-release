.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Stack.java"


# instance fields
.field private maxHeight:F

.field private maxWidth:F

.field private minHeight:F

.field private minWidth:F

.field private prefHeight:F

.field private prefWidth:F

.field private sizeInvalid:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setTransform(Z)V

    const/high16 v0, 0x43160000    # 150.0f

    .line 47
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setWidth(F)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setHeight(F)V

    .line 49
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    .line 55
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method

.method private computeSize()V
    .registers 9

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    .line 66
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    .line 67
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    .line 68
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    .line 69
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    .line 70
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    .line 71
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    .line 72
    iget v3, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_16
    if-ge v0, v3, :cond_b5

    .line 73
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 75
    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v5, :cond_5d

    .line 76
    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 77
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    .line 78
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    .line 79
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    .line 80
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    .line 81
    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v5

    .line 82
    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v4

    goto :goto_8f

    .line 84
    :cond_5d
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    .line 85
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    .line 86
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    .line 87
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8f
    cmpl-float v6, v5, v1

    if-lez v6, :cond_a0

    .line 91
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    cmpl-float v7, v6, v1

    if-nez v7, :cond_9a

    goto :goto_9e

    :cond_9a
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_9e
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    :cond_a0
    cmpl-float v5, v4, v1

    if-lez v5, :cond_b1

    .line 92
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    cmpl-float v6, v5, v1

    if-nez v6, :cond_ab

    goto :goto_af

    :cond_ab
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_af
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    :cond_b1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    :cond_b5
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public getMaxHeight()F
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 138
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    return v0
.end method

.method public getMaxWidth()F
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 133
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    return v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 128
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 123
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    return v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 118
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 113
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    return v0
.end method

.method public invalidate()V
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    return-void
.end method

.method public layout()V
    .registers 8

    .line 101
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 102
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getHeight()F

    move-result v1

    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 104
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_16
    if-ge v3, v4, :cond_2e

    .line 105
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v6, 0x0

    .line 106
    invoke-virtual {v5, v6, v6, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 107
    instance-of v6, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v6, :cond_2b

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2e
    return-void
.end method
