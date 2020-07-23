.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "RemoveListenerAction.java"


# instance fields
.field private capture:Z

.field private listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;


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
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->capture:Z

    if-eqz p1, :cond_c

    .line 31
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_13

    .line 33
    :cond_c
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public getCapture()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->capture:Z

    return v0
.end method

.method public getListener()Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    return-void
.end method

.method public setCapture(Z)V
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->capture:Z

    return-void
.end method

.method public setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    return-void
.end method
