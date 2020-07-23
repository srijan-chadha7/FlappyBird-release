.class public Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;
.super Ljava/lang/Object;
.source "KTXTextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;
.implements Lcom/badlogic/gdx/graphics/CubemapData;


# static fields
.field private static final GL_TEXTURE_1D:I = 0x1234

.field private static final GL_TEXTURE_1D_ARRAY_EXT:I = 0x1234

.field private static final GL_TEXTURE_2D_ARRAY_EXT:I = 0x1234

.field private static final GL_TEXTURE_3D:I = 0x1234


# instance fields
.field private compressedData:Ljava/nio/ByteBuffer;

.field private file:Lcom/badlogic/gdx/files/FileHandle;

.field private glBaseInternalFormat:I

.field private glFormat:I

.field private glInternalFormat:I

.field private glType:I

.field private glTypeSize:I

.field private imagePos:I

.field private numberOfArrayElements:I

.field private numberOfFaces:I

.field private numberOfMipmapLevels:I

.field private pixelDepth:I

.field private pixelHeight:I

.field private pixelWidth:I

.field private useMipMaps:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    .line 44
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    .line 45
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    .line 58
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    .line 59
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps:Z

    return-void
.end method


# virtual methods
.method public consumeCubemapData()V
    .registers 2

    const v0, 0x8513

    .line 153
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->consumeCustomData(I)V

    return-void
.end method

.method public consumeCustomData(I)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 158
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_221

    const/16 v2, 0x10

    .line 159
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 163
    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1b

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    if-nez v3, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v3, 0x0

    goto :goto_23

    .line 164
    :cond_1b
    :goto_1b
    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    add-int/2addr v3, v6

    if-nez v3, :cond_219

    const/4 v3, 0x1

    .line 171
    :goto_23
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    const/16 v7, 0xde1

    const/4 v8, 0x2

    const/16 v9, 0x1234

    if-lez v6, :cond_30

    const/4 v6, 0x2

    const/16 v10, 0xde1

    goto :goto_33

    :cond_30
    const/4 v6, 0x1

    const/16 v10, 0x1234

    .line 175
    :goto_33
    iget v11, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    if-lez v11, :cond_3a

    const/4 v6, 0x3

    const/16 v10, 0x1234

    .line 179
    :cond_3a
    iget v11, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    const v13, 0x8513

    const/4 v14, 0x6

    if-ne v11, v14, :cond_50

    if-ne v6, v8, :cond_48

    const v10, 0x8513

    goto :goto_52

    .line 183
    :cond_48
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "cube map needs 2D faces"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    if-ne v11, v5, :cond_211

    .line 187
    :goto_52
    iget v11, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    if-lez v11, :cond_68

    if-ne v10, v9, :cond_59

    goto :goto_5b

    :cond_59
    if-ne v10, v7, :cond_60

    :goto_5b
    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x1234

    goto :goto_68

    .line 193
    :cond_60
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "No API for 3D and cube arrays yet"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    :goto_68
    if-eq v10, v9, :cond_209

    .line 200
    iget v9, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    const v11, 0x851a

    const/4 v15, -0x1

    const v12, 0x8515

    if-ne v9, v14, :cond_85

    if-eq v1, v13, :cond_85

    if-gt v12, v1, :cond_7d

    if-gt v1, v11, :cond_7d

    sub-int/2addr v1, v12

    goto :goto_be

    .line 203
    :cond_7d
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "You must specify either GL_TEXTURE_CUBE_MAP to bind all 6 faces of the cube or the requested face GL_TEXTURE_CUBE_MAP_POSITIVE_X and followings."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_85
    iget v9, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    if-ne v9, v14, :cond_8c

    if-ne v1, v13, :cond_8c

    goto :goto_bd

    :cond_8c
    if-eq v1, v10, :cond_bc

    if-gt v12, v1, :cond_95

    if-gt v1, v11, :cond_95

    if-ne v1, v7, :cond_95

    goto :goto_bc

    .line 214
    :cond_95
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid target requested : 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expecting : 0x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_bc
    :goto_bc
    move v12, v1

    :goto_bd
    const/4 v1, -0x1

    .line 219
    :goto_be
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v9, 0xcf5

    invoke-interface {v7, v9, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 220
    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v7, 0x4

    if-eq v2, v7, :cond_d1

    .line 221
    sget-object v10, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v10, v9, v7}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 222
    :cond_d1
    iget v10, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glInternalFormat:I

    .line 223
    iget v11, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    .line 224
    iget v13, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    move v14, v13

    const/4 v13, 0x0

    .line 225
    :goto_d9
    iget v9, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-ge v13, v9, :cond_1f0

    .line 226
    iget v9, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    shr-int/2addr v9, v13

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 227
    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    shr-int/2addr v4, v13

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 228
    iget v8, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    shr-int/2addr v8, v13

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 229
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    add-int/lit8 v16, v8, 0x3

    and-int/lit8 v5, v16, -0x4

    add-int/2addr v14, v7

    move/from16 v16, v4

    const/4 v4, 0x0

    .line 233
    :goto_104
    iget v7, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    if-ge v4, v7, :cond_1dd

    .line 234
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v14, v5

    if-eq v1, v15, :cond_113

    if-eq v1, v4, :cond_113

    goto :goto_11f

    .line 237
    :cond_113
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 238
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v15, 0x1

    if-ne v6, v15, :cond_127

    :goto_11f
    move/from16 v26, v1

    move/from16 v27, v3

    const/4 v1, 0x3

    const/4 v3, 0x0

    goto/16 :goto_1d4

    :cond_127
    const/4 v15, 0x2

    if-ne v6, v15, :cond_1ca

    .line 246
    iget v15, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    if-lez v15, :cond_12f

    goto :goto_131

    :cond_12f
    move/from16 v15, v16

    :goto_131
    if-eqz v3, :cond_1a8

    move/from16 v26, v1

    .line 248
    sget v1, Lcom/badlogic/gdx/graphics/glutils/ETC1;->ETC1_RGB8_OES:I

    if-ne v10, v1, :cond_18f

    .line 249
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    move/from16 v27, v3

    const-string v3, "GL_OES_compressed_ETC1_RGB8_texture"

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_178

    .line 250
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v15, v7, v3}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;-><init>(IILjava/nio/ByteBuffer;I)V

    .line 251
    sget-object v7, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v1, v7}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->decodeImage(Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v1

    .line 252
    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v17, v12, v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v19

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v20

    .line 253
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v23

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v24

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v25

    move/from16 v18, v13

    .line 252
    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 254
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_1c6

    :cond_178
    const/4 v3, 0x0

    .line 256
    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v17, v12, v4

    const/16 v22, 0x0

    move/from16 v18, v13

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v15

    move/from16 v23, v8

    move-object/from16 v24, v7

    invoke-interface/range {v16 .. v24}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_1c6

    :cond_18f
    move/from16 v27, v3

    const/4 v3, 0x0

    .line 261
    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v17, v12, v4

    const/16 v22, 0x0

    move/from16 v18, v13

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v15

    move/from16 v23, v8

    move-object/from16 v24, v7

    invoke-interface/range {v16 .. v24}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_1c6

    :cond_1a8
    move/from16 v26, v1

    move/from16 v27, v3

    const/4 v3, 0x0

    .line 265
    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v17, v12, v4

    const/16 v22, 0x0

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    move/from16 v18, v13

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v15

    move/from16 v23, v11

    move/from16 v24, v1

    move-object/from16 v25, v7

    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_1c6
    move/from16 v16, v15

    const/4 v1, 0x3

    goto :goto_1d4

    :cond_1ca
    move/from16 v26, v1

    move/from16 v27, v3

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne v6, v1, :cond_1d4

    .line 267
    iget v7, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    :cond_1d4
    :goto_1d4
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v26

    move/from16 v3, v27

    const/4 v15, -0x1

    goto/16 :goto_104

    :cond_1dd
    move/from16 v26, v1

    move/from16 v27, v3

    const/4 v1, 0x3

    const/4 v3, 0x0

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v26

    move/from16 v3, v27

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v15, -0x1

    goto/16 :goto_d9

    :cond_1f0
    const/4 v4, 0x4

    if-eq v2, v4, :cond_1fa

    .line 277
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xcf5

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 278
    :cond_1fa
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps()Z

    move-result v1

    if-eqz v1, :cond_205

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v12}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 281
    :cond_205
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->disposePreparedData()V

    return-void

    .line 197
    :cond_209
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Unsupported texture format (only 2D texture are supported in LibGdx for the time being)"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_211
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "numberOfFaces must be either 1 or 6"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_219
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "either both or none of glType, glFormat must be zero"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_221
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Call prepare() before calling consumeCompressedData()"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_22a

    :goto_229
    throw v1

    :goto_22a
    goto :goto_229
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 3

    .line 291
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .registers 3

    .line 296
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePreparedData()V
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_7
    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getData(II)Ljava/nio/ByteBuffer;
    .registers 9

    .line 322
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .line 323
    :goto_5
    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-ge v0, v3, :cond_3c

    .line 324
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, -0x4

    add-int/lit8 v2, v2, 0x4

    if-ne v0, p1, :cond_34

    move v4, v2

    const/4 v2, 0x0

    .line 328
    :goto_19
    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    if-ge v2, v5, :cond_32

    if-ne v2, p2, :cond_2e

    .line 330
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 332
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :cond_2e
    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_32
    move v2, v4

    goto :goto_39

    .line 338
    :cond_34
    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .registers 3

    .line 346
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation directly handles texture formats."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGlInternalFormat()I
    .registers 2

    .line 318
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glInternalFormat:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 306
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    return v0
.end method

.method public getNumberOfFaces()I
    .registers 2

    .line 314
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    return v0
.end method

.method public getNumberOfMipMapLevels()I
    .registers 2

    .line 310
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .registers 2

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 301
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    return v0
.end method

.method public isManaged()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public prepare()V
    .registers 8

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_235

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    if-eqz v0, :cond_22d

    .line 77
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zktx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_85

    const/16 v0, 0x2800

    .line 78
    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 81
    :try_start_1a
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_62
    .catchall {:try_start_1a .. :try_end_2f} :catchall_60

    .line 82
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 83
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    .line 85
    :goto_39
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_46

    .line 86
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_39

    .line 87
    :cond_46
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_56} :catch_5d
    .catchall {:try_start_2f .. :try_end_56} :catchall_5a

    .line 92
    invoke-static {v3}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_91

    :catchall_5a
    move-exception v0

    move-object v2, v3

    goto :goto_81

    :catch_5d
    move-exception v0

    move-object v2, v3

    goto :goto_63

    :catchall_60
    move-exception v0

    goto :goto_81

    :catch_62
    move-exception v0

    .line 90
    :goto_63
    :try_start_63
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load zktx file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_81
    .catchall {:try_start_63 .. :try_end_81} :catchall_60

    .line 92
    :goto_81
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 95
    :cond_85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    .line 97
    :goto_91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, -0x55

    const-string v3, "Invalid KTX Header"

    if-ne v0, v2, :cond_227

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x4b

    if-ne v0, v2, :cond_221

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_21b

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x58

    if-ne v0, v2, :cond_215

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_20f

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_209

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_203

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, -0x45

    if-ne v0, v2, :cond_1fd

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1f7

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1f1

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v4, 0x1a

    if-ne v0, v4, :cond_1eb

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_1e5

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v2, 0x4030201

    if-eq v0, v2, :cond_11e

    const v4, 0x1020304

    if-ne v0, v4, :cond_118

    goto :goto_11e

    .line 110
    :cond_118
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11e
    :goto_11e
    if-eq v0, v2, :cond_132

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_12d

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_12f

    :cond_12d
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_12f
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    :cond_132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glTypeSize:I

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glInternalFormat:I

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glBaseInternalFormat:I

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    .line 124
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-nez v0, :cond_193

    const/4 v0, 0x1

    .line 125
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    .line 126
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps:Z

    .line 128
    :cond_193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 129
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1e4

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    move v2, v0

    const/4 v0, 0x0

    .line 132
    :goto_1ae
    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-ge v0, v3, :cond_1c6

    .line 133
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, -0x4

    .line 135
    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    mul-int v3, v3, v4

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ae

    .line 137
    :cond_1c6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 142
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    :cond_1e4
    return-void

    .line 108
    :cond_1e5
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1eb
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1f1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1f7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1fd
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_203
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_209
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_20f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_215
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_21b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_221
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_227
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_22d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Need a file to load from"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_235
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_23e

    :goto_23d
    throw v0

    :goto_23e
    goto :goto_23d
.end method

.method public useMipMaps()Z
    .registers 2

    .line 351
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps:Z

    return v0
.end method
