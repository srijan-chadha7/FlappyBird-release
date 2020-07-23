.class public abstract Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.super Ljava/lang/Object;
.source "GLFrameBuffer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FloatFrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/graphics/GLTexture;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# static fields
.field protected static final GL_DEPTH24_STENCIL8_OES:I = 0x88f0

.field protected static final buffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static defaultFramebufferHandle:I

.field protected static defaultFramebufferHandleInitialized:Z


# instance fields
.field protected bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected depthStencilPackedBufferHandle:I

.field protected depthbufferHandle:I

.field protected framebufferHandle:I

.field protected hasDepthStencilPackedBuffer:Z

.field protected isMRT:Z

.field protected stencilbufferHandle:I

.field protected textureAttachments:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandleInitialized:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    .line 89
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->build()V

    return-void
.end method

.method private static addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;)V
    .registers 3

    .line 381
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_f

    .line 382
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 383
    :cond_f
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 384
    sget-object p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkValidBuilder()V
    .registers 4

    .line 269
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL30Available()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-nez v0, :cond_62

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5a

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    .line 279
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isDepth:Z

    if-nez v2, :cond_52

    .line 280
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isStencil:Z

    if-nez v2, :cond_4a

    .line 281
    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isFloat:Z

    if-eqz v1, :cond_1f

    .line 282
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v2, "OES_texture_float"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_1f

    .line 283
    :cond_42
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Float texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_4a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Stencil texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_52
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Depth texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_5a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Multiple render targets not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_62
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Packed Stencil/Render render buffers are not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    return-void
.end method

.method public static clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .registers 2

    .line 400
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .registers 1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "Managed buffers/app: { "

    .line 404
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/Application;

    .line 406
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 407
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_2e
    const-string v0, "}"

    .line 409
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .registers 3

    .line 390
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_5

    return-void

    .line 392
    :cond_5
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Array;

    if-nez p0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x0

    .line 394
    :goto_11
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_21

    .line 395
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->build()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    return-void
.end method

.method public static unbind()V
    .registers 3

    .line 318
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    return-void
.end method


# virtual methods
.method protected abstract attachFrameBufferColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public begin()V
    .registers 1

    .line 323
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bind()V

    .line 324
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->setFrameBufferViewport()V

    return-void
.end method

.method public bind()V
    .registers 4

    .line 313
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    return-void
.end method

.method protected build()V
    .registers 19

    move-object/from16 v0, p0

    .line 113
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->checkValidBuilder()V

    .line 118
    sget-boolean v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandleInitialized:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_3a

    .line 119
    sput-boolean v8, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandleInitialized:Z

    .line 120
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_38

    const/16 v1, 0x40

    .line 121
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    const v2, 0x8ca6

    .line 122
    invoke-interface {v7, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 123
    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    goto :goto_3a

    .line 125
    :cond_38
    sput v9, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    .line 129
    :cond_3a
    :goto_3a
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    .line 130
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    const v10, 0x8d40

    invoke-interface {v7, v10, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 132
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v11, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    .line 133
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v12, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    .line 135
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    const v13, 0x8d41

    if-eqz v1, :cond_6d

    .line 136
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    .line 137
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 138
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->depthRenderBufferSpec:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 141
    :cond_6d
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v1, :cond_87

    .line 142
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    .line 143
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 144
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->stencilRenderBufferSpec:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 147
    :cond_87
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-eqz v1, :cond_a1

    .line 148
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    .line 149
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 150
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->packedStencilDepthRenderBufferSpec:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 154
    :cond_a1
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v1, v8, :cond_ab

    const/4 v1, 0x1

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x0

    :goto_ac
    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->isMRT:Z

    .line 156
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->isMRT:Z

    const v14, 0x8ce0

    if-eqz v1, :cond_131

    .line 157
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    :cond_bf
    :goto_bf
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    .line 158
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v2

    .line 159
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isColorTexture()Z

    move-result v3

    if-eqz v3, :cond_f4

    const v3, 0x8d40

    add-int v4, v16, v14

    const/16 v5, 0xde1

    .line 162
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v6

    const/16 v17, 0x0

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    .line 161
    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_bf

    .line 164
    :cond_f4
    iget-boolean v3, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isDepth:Z

    if-eqz v3, :cond_111

    const v3, 0x8d40

    const v4, 0x8d00

    const/16 v5, 0xde1

    .line 166
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v6

    const/16 v17, 0x0

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    .line 165
    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    goto :goto_bf

    .line 167
    :cond_111
    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isStencil:Z

    if-eqz v1, :cond_bf

    const v3, 0x8d40

    const v4, 0x8d20

    const/16 v5, 0xde1

    .line 169
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v6

    const/16 v17, 0x0

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    .line 168
    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    goto :goto_bf

    :cond_12e
    move/from16 v1, v16

    goto :goto_14e

    .line 173
    :cond_131
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    .line 174
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 175
    iget v2, v1, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v1

    invoke-interface {v7, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    const/4 v1, 0x0

    .line 178
    :goto_14e
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->isMRT:Z

    if-eqz v2, :cond_16a

    .line 179
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_157
    if-ge v3, v1, :cond_161

    add-int v4, v3, v14

    .line 181
    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_157

    .line 183
    :cond_161
    invoke-virtual {v2, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL30;->glDrawBuffers(ILjava/nio/IntBuffer;)V

    goto :goto_175

    .line 186
    :cond_16a
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->attachFrameBufferColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 189
    :goto_175
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    const v2, 0x8d00

    if-eqz v1, :cond_183

    .line 190
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v10, v2, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 193
    :cond_183
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    const v3, 0x8d20

    if-eqz v1, :cond_191

    .line 194
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v10, v3, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 197
    :cond_191
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-eqz v1, :cond_19f

    const v1, 0x821a

    .line 198
    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v10, v1, v13, v4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 202
    :cond_19f
    invoke-interface {v7, v13, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 203
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/GLTexture;

    .line 204
    iget v4, v4, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-interface {v7, v4, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    goto :goto_1a8

    .line 207
    :cond_1ba
    invoke-interface {v7, v10}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v4, 0x8cdd

    if-ne v1, v4, :cond_22e

    .line 209
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v5, v5, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v5, :cond_22e

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v5, v5, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v5, :cond_22e

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v6, "GL_OES_packed_depth_stencil"

    .line 210
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e3

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v6, "GL_EXT_packed_depth_stencil"

    .line 211
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22e

    .line 212
    :cond_1e3
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v1, :cond_1f0

    .line 213
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 214
    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    .line 216
    :cond_1f0
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v1, :cond_1fd

    .line 217
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 218
    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    .line 220
    :cond_1fd
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-eqz v1, :cond_20a

    .line 221
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 222
    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    .line 225
    :cond_20a
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    .line 226
    iput-boolean v8, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->hasDepthStencilPackedBuffer:Z

    .line 227
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    const v1, 0x88f0

    .line 228
    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 229
    invoke-interface {v7, v13, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 231
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v10, v2, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 233
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v10, v3, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 235
    invoke-interface {v7, v10}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 238
    :cond_22e
    sget v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    invoke-interface {v7, v10, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    const v2, 0x8cd5

    if-eq v1, v2, :cond_2bb

    .line 241
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/GLTexture;

    .line 242
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V

    goto :goto_23e

    .line 245
    :cond_24e
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->hasDepthStencilPackedBuffer:Z

    if-eqz v2, :cond_258

    .line 246
    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    goto :goto_26e

    .line 248
    :cond_258
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v2, :cond_263

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 249
    :cond_263
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v2, :cond_26e

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 252
    :cond_26e
    :goto_26e
    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    const v2, 0x8cd6

    if-eq v1, v2, :cond_2b3

    const v2, 0x8cd9

    if-eq v1, v2, :cond_2ab

    const v2, 0x8cd7

    if-eq v1, v2, :cond_2a3

    if-ne v1, v4, :cond_28c

    .line 261
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Frame buffer couldn\'t be constructed: unsupported combination of formats"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_28c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frame buffer couldn\'t be constructed: unknown error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_2a3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Frame buffer couldn\'t be constructed: missing attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_2ab
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Frame buffer couldn\'t be constructed: incomplete dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_2b3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Frame buffer couldn\'t be constructed: incomplete attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_2bb
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;)V

    return-void
.end method

.method protected abstract createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;",
            ")TT;"
        }
    .end annotation
.end method

.method public dispose()V
    .registers 4

    .line 293
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 295
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/GLTexture;

    .line 296
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V

    goto :goto_8

    .line 299
    :cond_18
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->hasDepthStencilPackedBuffer:Z

    if-eqz v1, :cond_22

    .line 300
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    goto :goto_38

    .line 302
    :cond_22
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 303
    :cond_2d
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v1, :cond_38

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 306
    :cond_38
    :goto_38
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    .line 308
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :cond_55
    return-void
.end method

.method protected abstract disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public end()V
    .registers 4

    .line 334
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->end(IIII)V

    return-void
.end method

.method public end(IIII)V
    .registers 6

    .line 344
    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->unbind()V

    .line 345
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    return-void
.end method

.method public getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/GLTexture;

    return-object v0
.end method

.method public getDepthBufferHandle()I
    .registers 2

    .line 356
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    return v0
.end method

.method protected getDepthStencilPackedBuffer()I
    .registers 2

    .line 367
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    return v0
.end method

.method public getFramebufferHandle()I
    .registers 2

    .line 350
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    return v0
.end method

.method public getStencilBufferHandle()I
    .registers 2

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    return v0
.end method

.method public getTextureAttachments()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    return v0
.end method

.method protected setFrameBufferViewport()V
    .registers 5

    .line 329
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    return-void
.end method
