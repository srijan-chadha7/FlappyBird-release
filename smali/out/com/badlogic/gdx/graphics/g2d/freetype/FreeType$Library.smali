.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Library"
.end annotation


# instance fields
.field fontData:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    .line 63
    new-instance p1, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/LongMap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    return-void
.end method

.method private static native doneFreeType(J)V
.end method

.method private static native newMemoryFace(JLjava/nio/ByteBuffer;II)J
.end method

.method private static native strokerNew(J)J
.end method


# virtual methods
.method public createStroker()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .registers 6

    .line 142
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->strokerNew(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    .line 144
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;-><init>(J)V

    return-object v2

    .line 143
    :cond_12
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create FreeType stroker, FreeType error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .registers 4

    .line 71
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->doneFreeType(J)V

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 73
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 74
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_f

    :cond_25
    return-void
.end method

.method public newFace(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .registers 7

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->map()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_3d

    .line 90
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    .line 92
    :try_start_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v1

    long-to-int p1, v1

    if-nez p1, :cond_25

    const/16 p1, 0x4000

    .line 95
    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object p1

    .line 96
    array-length v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 97
    array-length v3, p1

    invoke-static {p1, v2, v1, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    move-object p1, v1

    goto :goto_2c

    .line 100
    :cond_25
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 101
    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2c} :catch_32
    .catchall {:try_start_c .. :try_end_2c} :catchall_30

    .line 106
    :goto_2c
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3e

    :catchall_30
    move-exception p1

    goto :goto_39

    :catch_32
    move-exception p1

    .line 104
    :try_start_33
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_30

    .line 106
    :goto_39
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_3d
    move-object p1, v0

    .line 109
    :goto_3e
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object p1

    return-object p1
.end method

.method public newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .registers 7

    .line 119
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(JLjava/nio/ByteBuffer;II)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_34

    .line 121
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 122
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 123
    :cond_19
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t load font, FreeType error code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_34
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {p2, v0, v1, p1}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-direct {p1, v0, v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;-><init>(JLcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;)V

    return-object p1
.end method

.method public newMemoryFace([BII)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .registers 6

    .line 113
    array-length p2, p1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    .line 115
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object p1

    return-object p1
.end method
