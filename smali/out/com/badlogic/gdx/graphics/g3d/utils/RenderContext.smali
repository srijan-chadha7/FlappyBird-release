.class public Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
.super Ljava/lang/Object;
.source "RenderContext.java"


# instance fields
.field private blendDFactor:I

.field private blendSFactor:I

.field private blending:Z

.field private cullFace:I

.field private depthFunc:I

.field private depthMask:Z

.field private depthRangeFar:F

.field private depthRangeNear:F

.field public final textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    return-void
.end method


# virtual methods
.method public begin()V
    .registers 4

    .line 44
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    .line 46
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 47
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthMask:Z

    .line 48
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blending:Z

    .line 50
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xb44

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 51
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendDFactor:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendSFactor:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->cullFace:I

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;->begin()V

    return-void
.end method

.method public end()V
    .registers 3

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    if-eqz v0, :cond_b

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 58
    :cond_b
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthMask:Z

    if-nez v0, :cond_15

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 59
    :cond_15
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blending:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 60
    :cond_20
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->cullFace:I

    if-lez v0, :cond_2b

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 61
    :cond_2b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;->end()V

    return-void
.end method

.method public setBlending(ZII)V
    .registers 6

    .line 91
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blending:Z

    if-eq p1, v0, :cond_15

    .line 92
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blending:Z

    const/16 v0, 0xbe2

    if-eqz p1, :cond_10

    .line 94
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    goto :goto_15

    .line 96
    :cond_10
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_15
    :goto_15
    if-eqz p1, :cond_28

    .line 98
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendSFactor:I

    if-ne p1, p2, :cond_1f

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendDFactor:I

    if-eq p1, p3, :cond_28

    .line 99
    :cond_1f
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 100
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendSFactor:I

    .line 101
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendDFactor:I

    :cond_28
    return-void
.end method

.method public setCullFace(I)V
    .registers 4

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->cullFace:I

    if-eq p1, v0, :cond_25

    .line 107
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->cullFace:I

    const/16 v0, 0x404

    const/16 v1, 0xb44

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x405

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x408

    if-ne p1, v0, :cond_15

    goto :goto_1b

    .line 112
    :cond_15
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_25

    .line 109
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 110
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCullFace(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public setDepthMask(Z)V
    .registers 3

    .line 65
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthMask:Z

    if-eq v0, p1, :cond_b

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthMask:Z

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    :cond_b
    return-void
.end method

.method public setDepthTest(I)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 69
    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthTest(IFF)V

    return-void
.end method

.method public setDepthTest(IFF)V
    .registers 8

    .line 73
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 75
    :goto_d
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    if-eq v2, p1, :cond_27

    .line 76
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    const/16 v2, 0xb71

    if-eqz v1, :cond_22

    .line 78
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 79
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    goto :goto_27

    .line 81
    :cond_22
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_27
    :goto_27
    if-eqz v1, :cond_4d

    if-eqz v0, :cond_2f

    .line 84
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    if-eq v1, p1, :cond_36

    :cond_2f
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    :cond_36
    if-eqz v0, :cond_44

    .line 85
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthRangeNear:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_44

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthRangeFar:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_4d

    .line 86
    :cond_44
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthRangeNear:F

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthRangeFar:F

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glDepthRangef(FF)V

    :cond_4d
    return-void
.end method
