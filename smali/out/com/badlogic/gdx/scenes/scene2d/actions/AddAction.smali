.class public Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "AddAction.java"


# instance fields
.field private action:Lcom/badlogic/gdx/scenes/scene2d/Action;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .registers 3

    .line 28
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 45
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-void
.end method

.method public restart()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    :cond_7
    return-void
.end method

.method public setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-void
.end method