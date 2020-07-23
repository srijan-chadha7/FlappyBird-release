.class public abstract Lcom/badlogic/gdx/Game;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;


# instance fields
.field protected screen:Lcom/badlogic/gdx/Screen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->hide()V

    :cond_7
    return-void
.end method

.method public getScreen()Lcom/badlogic/gdx/Screen;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    return-object v0
.end method

.method public pause()V
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->pause()V

    :cond_7
    return-void
.end method

.method public render()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Screen;->render(F)V

    :cond_d
    return-void
.end method

.method public resize(II)V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/Screen;->resize(II)V

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->resume()V

    :cond_7
    return-void
.end method

.method public setScreen(Lcom/badlogic/gdx/Screen;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->hide()V

    .line 59
    :cond_7
    iput-object p1, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    .line 60
    iget-object p1, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz p1, :cond_21

    .line 61
    invoke-interface {p1}, Lcom/badlogic/gdx/Screen;->show()V

    .line 62
    iget-object p1, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Screen;->resize(II)V

    :cond_21
    return-void
.end method
