.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Widget.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;


# instance fields
.field private fillParent:Z

.field private layoutEnabled:Z

.field private needsLayout:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 38
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 3

    .line 122
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    return-void
.end method

.method public getMaxHeight()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    return-void
.end method

.method public invalidateHierarchy()V
    .registers 3

    .line 101
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_15

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidateHierarchy()V

    :cond_15
    return-void
.end method

.method public layout()V
    .registers 1

    return-void
.end method

.method public needsLayout()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    return v0
.end method

.method public pack()V
    .registers 3

    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setSize(FF)V

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    return-void
.end method

.method public setFillParent(Z)V
    .registers 2

    .line 117
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->fillParent:Z

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    if-eqz p1, :cond_7

    .line 66
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    :cond_7
    return-void
.end method

.method protected sizeChanged()V
    .registers 1

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    return-void
.end method

.method public validate()V
    .registers 5

    .line 70
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->fillParent:Z

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 75
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 76
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    if-ne v0, v2, :cond_24

    .line 77
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    .line 78
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    goto :goto_2f

    .line 80
    :cond_24
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getWidth()F

    move-result v1

    .line 81
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getHeight()F

    move-result v0

    move v3, v1

    move v1, v0

    move v0, v3

    .line 83
    :goto_2f
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setSize(FF)V

    .line 86
    :cond_32
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    if-nez v0, :cond_37

    return-void

    :cond_37
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layout()V

    return-void
.end method
