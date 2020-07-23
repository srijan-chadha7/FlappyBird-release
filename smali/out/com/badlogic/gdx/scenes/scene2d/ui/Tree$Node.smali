.class public abstract Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
        "V:",
        "Ljava/lang/Object;",
        "A:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field final children:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation
.end field

.field expanded:Z

.field height:F

.field icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field selectable:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    if-eqz p1, :cond_13

    .line 558
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void

    .line 557
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;)V"
        }
    .end annotation

    .line 604
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_15

    .line 605
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    return-void
.end method

.method protected addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 584
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_a

    return-void

    .line 585
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 586
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_20

    .line 587
    aget-object v2, v0, v1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_20
    return-void
.end method

.method public collapseAll()V
    .registers 2

    const/4 v0, 0x0

    .line 730
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 731
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public expandAll()V
    .registers 2

    const/4 v0, 0x1

    .line 736
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 737
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->expandAll(Lcom/badlogic/gdx/utils/Array;)V

    :cond_f
    return-void
.end method

.method public expandTo()V
    .registers 3

    .line 742
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    :goto_2
    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 744
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 745
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_2

    :cond_b
    return-void
.end method

.method public findExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 758
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TN;"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 724
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 725
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object p1

    return-object p1

    .line 723
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getHeight()F
    .registers 2

    .line 774
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    return v0
.end method

.method public getIcon()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 708
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getLevel()I
    .registers 3

    const/4 v0, 0x0

    move-object v1, p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 716
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v1

    if-nez v1, :cond_2

    return v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 643
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .line 672
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 609
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 611
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->updateChildren()V

    return-void
.end method

.method public isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    if-eqz p1, :cond_c

    :cond_2
    if-ne p1, p0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 783
    :cond_6
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 779
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :goto_14
    throw p1

    :goto_15
    goto :goto_14
.end method

.method public isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    if-eqz p1, :cond_d

    move-object v0, p0

    :cond_3
    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    return p1

    .line 794
    :cond_7
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 790
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :goto_15
    throw p1

    :goto_16
    goto :goto_15
.end method

.method public isExpanded()Z
    .registers 2

    .line 663
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 750
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    return v0
.end method

.method public remove()V
    .registers 2

    .line 615
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 617
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    goto :goto_11

    .line 618
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v0, :cond_11

    .line 619
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 624
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_b

    return-void

    .line 625
    :cond_b
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 626
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    :cond_14
    return-void
.end method

.method public removeAll()V
    .registers 5

    .line 630
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 632
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 633
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_10
    if-ltz v2, :cond_1c

    .line 634
    aget-object v3, v1, v2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 636
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method protected removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 593
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_a

    return-void

    .line 594
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 595
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_20

    .line 596
    aget-object v2, v0, v1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_20
    return-void
.end method

.method public restoreExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 762
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_19

    .line 763
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 765
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 766
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_19
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_12

    .line 649
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 651
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 652
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 655
    :cond_12
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setExpanded(Z)V
    .registers 5

    .line 566
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 567
    :cond_5
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    .line 568
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_e

    return-void

    .line 569
    :cond_e
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    if-eqz p1, :cond_2c

    const/4 p1, 0x0

    .line 572
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1c
    if-ge p1, v1, :cond_42

    .line 573
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 575
    :cond_2c
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 p1, p1, -0x1

    :goto_32
    if-ltz p1, :cond_42

    .line 576
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_32

    .line 578
    :cond_42
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    return-void
.end method

.method public setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 2

    .line 695
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-void
.end method

.method public setSelectable(Z)V
    .registers 2

    .line 754
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 704
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    return-void
.end method

.method public updateChildren()V
    .registers 5

    .line 679
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_5

    return-void

    .line 680
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 682
    :cond_c
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_22

    .line 683
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_22
    const/4 v1, 0x0

    .line 684
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_27
    if-ge v1, v2, :cond_37

    .line 685
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_37
    return-void
.end method
