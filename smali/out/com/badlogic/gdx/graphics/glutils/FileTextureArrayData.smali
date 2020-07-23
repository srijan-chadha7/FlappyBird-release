.class public Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;
.super Ljava/lang/Object;
.source "FileTextureArrayData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureArrayData;


# instance fields
.field private depth:I

.field private format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field private prepared:Z

.field private textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

.field useMipMaps:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;Z[Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 38
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->useMipMaps:Z

    .line 39
    array-length v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->depth:I

    .line 40
    array-length v0, p3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v0, 0x0

    .line 41
    :goto_10
    array-length v1, p3

    if-ge v0, v1, :cond_20

    .line 42
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, p3, v0

    invoke-static {v2, p1, p2}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method


# virtual methods
.method public consumeTextureArrayData()V
    .registers 16

    const/4 v0, 0x0

    .line 71
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v2, v1

    if-ge v0, v2, :cond_92

    .line 72
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    if-ne v1, v2, :cond_1c

    .line 73
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v1, v1, v0

    const v2, 0x8c1a

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCustomData(I)V

    goto/16 :goto_8e

    .line 75
    :cond_1c
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v1, v1, v0

    .line 76
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v10

    .line 77
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v2

    .line 78
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    if-eq v3, v4, :cond_66

    .line 79
    new-instance v11, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v11, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 80
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 81
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v2, v11

    move-object v3, v10

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 82
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 83
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_62
    const/4 v2, 0x1

    move-object v13, v11

    const/4 v14, 0x1

    goto :goto_68

    :cond_66
    move v14, v2

    move-object v13, v10

    .line 88
    :goto_68
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const v2, 0x8c1a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v10

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v11

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v12

    move v6, v0

    invoke-interface/range {v1 .. v12}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    if-eqz v14, :cond_8e

    .line 89
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_8e
    :goto_8e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_92
    return-void
.end method

.method public getDepth()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->depth:I

    return v0
.end method

.method public getGLType()I
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGlType(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getInternalFormat()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGlFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 122
    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v4

    if-nez v4, :cond_10

    return v2

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->prepared:Z

    return v0
.end method

.method public prepare()V
    .registers 9

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_7
    if-ge v3, v1, :cond_30

    aget-object v6, v0, v3

    .line 56
    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    if-ne v4, v2, :cond_19

    .line 58
    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v4

    .line 59
    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v5

    goto :goto_25

    .line 62
    :cond_19
    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v7

    if-ne v4, v7, :cond_28

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_28

    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 63
    :cond_28
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Error whilst preparing TextureArray: TextureArray Textures must have equal dimensions."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->prepared:Z

    return-void
.end method
