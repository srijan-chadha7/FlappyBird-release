.class public Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
.source "SequenceAction.java"


# instance fields
.field private index:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 42
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 48
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 49
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 6

    .line 52
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 55
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 56
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 57
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .registers 6

    .line 61
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_a

    return v2

    .line 62
    :cond_a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 65
    :try_start_12
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 66
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_40

    if-nez p1, :cond_2a

    .line 72
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    return v2

    .line 67
    :cond_2a
    :try_start_2a
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    .line 68
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_40

    if-lt p1, v1, :cond_3b

    .line 72
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    return v2

    :cond_3b
    const/4 p1, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    return p1

    :catchall_40
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw p1
.end method

.method public restart()V
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->restart()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    return-void
.end method
