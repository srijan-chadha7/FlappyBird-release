.class public Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "LayoutAction.java"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .registers 3

    .line 36
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->enabled:Z

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->setLayoutEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->enabled:Z

    return v0
.end method

.method public setLayoutEnabled(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->enabled:Z

    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5

    if-eqz p1, :cond_1e

    .line 31
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_7

    goto :goto_1e

    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Actor must implement layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method
