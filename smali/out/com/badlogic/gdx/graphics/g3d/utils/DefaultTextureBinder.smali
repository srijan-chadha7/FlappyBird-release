.class public final Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;
.super Ljava/lang/Object;
.source "DefaultTextureBinder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;


# static fields
.field public static final MAX_GLES_UNITS:I = 0x20

.field public static final ROUNDROBIN:I = 0x0

.field public static final WEIGHTED:I = 0x1


# instance fields
.field private bindCount:I

.field private final count:I

.field private currentTexture:I

.field private final method:I

.field private final offset:I

.field private reuseCount:I

.field private final reuseWeight:I

.field private reused:Z

.field private final tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

.field private final textures:[Lcom/badlogic/gdx/graphics/GLTexture;

.field private final weights:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, -0x1

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/16 v0, 0xa

    .line 65
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    .line 51
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    .line 110
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 147
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    .line 69
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->getMaxTextureUnits()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gez p3, :cond_1f

    sub-int p3, v0, p2

    :cond_1f
    if-ltz p2, :cond_3f

    if-ltz p3, :cond_3f

    add-int v1, p2, p3

    if-gt v1, v0, :cond_3f

    const/4 v0, 0x1

    if-lt p4, v0, :cond_3f

    .line 73
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    .line 74
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    .line 75
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    .line 76
    new-array p2, p3, [Lcom/badlogic/gdx/graphics/GLTexture;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    .line 77
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseWeight:I

    if-ne p1, v0, :cond_3b

    .line 78
    new-array p1, p3, [I

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    return-void

    .line 72
    :cond_3f
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Illegal arguments"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I
    .registers 7

    .line 120
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v1, 0x0

    .line 121
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    .line 123
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-eq v1, v2, :cond_e

    const/4 p1, -0x1

    return p1

    .line 128
    :cond_e
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureWeighted(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v3

    goto :goto_1b

    .line 125
    :cond_15
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v3

    :goto_1b
    add-int/2addr v1, v3

    .line 134
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    if-eqz v3, :cond_35

    .line 135
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    if-eqz p2, :cond_2b

    .line 137
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    goto :goto_3a

    .line 139
    :cond_2b
    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    add-int/2addr v2, v1

    invoke-interface {p2, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    goto :goto_3a

    .line 141
    :cond_35
    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    .line 142
    :goto_3a
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, p2, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 143
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return v1
.end method

.method private final bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .registers 6

    const/4 v0, 0x0

    .line 150
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_16

    .line 151
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v3, v0

    rem-int/2addr v3, v1

    .line 152
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v1, v1, v3

    if-ne v1, p1, :cond_13

    .line 153
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    return v3

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_16
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v0, v2

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    aput-object p1, v0, v1

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    .line 160
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    return p1
.end method

.method private final bindTextureWeighted(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .registers 9

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    move v3, v0

    const/4 v0, 0x0

    .line 167
    :goto_8
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_34

    .line 168
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v4, v4, v1

    if-ne v4, p1, :cond_1e

    .line 170
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v4, v2, v1

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseWeight:I

    add-int/2addr v4, v5

    aput v4, v2, v1

    move v2, v1

    goto :goto_31

    .line 171
    :cond_1e
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v6, v4, v1

    if-ltz v6, :cond_2b

    aget v6, v4, v1

    sub-int/2addr v6, v5

    aput v6, v4, v1

    if-ge v6, v3, :cond_31

    .line 172
    :cond_2b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v0, v0, v1

    move v3, v0

    move v0, v1

    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_34
    if-gez v2, :cond_47

    .line 177
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aput-object p1, v1, v0

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    const/16 v2, 0x64

    aput v2, v1, v0

    .line 179
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    goto :goto_4a

    .line 181
    :cond_47
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    move v0, v2

    :goto_4a
    return v0
.end method

.method private static getMaxTextureUnits()I
    .registers 3

    const/16 v0, 0x10

    .line 82
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8872

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public begin()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    :goto_2
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    if-ge v1, v2, :cond_14

    .line 90
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 91
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    if-eqz v2, :cond_11

    aput v0, v2, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return-void
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .registers 8

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 115
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result p1

    return p1
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I
    .registers 3

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result p1

    return p1
.end method

.method public end()V
    .registers 3

    .line 102
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    return-void
.end method

.method public final getBindCount()I
    .registers 2

    .line 187
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    return v0
.end method

.method public final getReuseCount()I
    .registers 2

    .line 192
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    return v0
.end method

.method public final resetCounts()V
    .registers 2

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    return-void
.end method
