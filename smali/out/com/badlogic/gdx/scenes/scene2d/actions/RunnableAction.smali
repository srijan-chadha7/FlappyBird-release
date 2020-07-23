.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "RunnableAction.java"


# instance fields
.field private ran:Z

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .registers 3

    .line 30
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    const/4 v0, 0x1

    if-nez p1, :cond_a

    .line 31
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    .line 32
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->run()V

    :cond_a
    return v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public restart()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    return-void
.end method

.method public run()V
    .registers 3

    .line 39
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 42
    :try_start_8
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 44
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    return-void

    :catchall_11
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw v1
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    return-void
.end method
