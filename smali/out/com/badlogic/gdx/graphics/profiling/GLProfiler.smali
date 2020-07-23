.class public Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
.super Ljava/lang/Object;
.source "GLProfiler.java"


# instance fields
.field private enabled:Z

.field private glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

.field private graphics:Lcom/badlogic/gdx/Graphics;

.field private listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Graphics;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    .line 45
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 46
    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL30;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    goto :goto_25

    .line 50
    :cond_1a
    new-instance v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL20;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    .line 52
    :goto_25
    sget-object p1, Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;->LOGGING_LISTENER:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 3

    .line 71
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    if-nez v0, :cond_5

    return-void

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL30(Lcom/badlogic/gdx/graphics/GL30;)V

    goto :goto_28

    .line 75
    :cond_1b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL20(Lcom/badlogic/gdx/graphics/GL20;)V

    :goto_28
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    return-void
.end method

.method public enable()V
    .registers 3

    .line 57
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 59
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    check-cast v1, Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL30(Lcom/badlogic/gdx/graphics/GL30;)V

    goto :goto_1e

    .line 63
    :cond_17
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL20(Lcom/badlogic/gdx/graphics/GL20;)V

    :goto_1e
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    return-void
.end method

.method public getCalls()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getCalls()I

    move-result v0

    return v0
.end method

.method public getDrawCalls()I
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getDrawCalls()I

    move-result v0

    return v0
.end method

.method public getListener()Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-object v0
.end method

.method public getShaderSwitches()I
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getShaderSwitches()I

    move-result v0

    return v0
.end method

.method public getTextureBindings()I
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getTextureBindings()I

    move-result v0

    return v0
.end method

.method public getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    return v0
.end method

.method public reset()V
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->reset()V

    return-void
.end method

.method public setListener(Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-void
.end method
