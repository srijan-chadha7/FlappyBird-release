.class public final Lcom/badlogic/gdx/utils/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field static allocatedUnsafe:I

.field static unsafeBuffers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToElements(Ljava/nio/Buffer;I)I
    .registers 4

    .line 417
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return p1

    .line 419
    :cond_5
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_c

    ushr-int/lit8 p0, p1, 0x1

    return p0

    .line 421
    :cond_c
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_13

    ushr-int/lit8 p0, p1, 0x1

    return p0

    .line 423
    :cond_13
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1a

    ushr-int/lit8 p0, p1, 0x2

    return p0

    .line 425
    :cond_1a
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_21

    ushr-int/lit8 p0, p1, 0x3

    return p0

    .line 427
    :cond_21
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_28

    ushr-int/lit8 p0, p1, 0x2

    return p0

    .line 429
    :cond_28
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_2f

    ushr-int/lit8 p0, p1, 0x3

    return p0

    .line 432
    :cond_2f
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t copy to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instance"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static native clear(Ljava/nio/ByteBuffer;I)V
.end method

.method public static copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V
    .registers 5

    .line 226
    invoke-static {p0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->elementsToBytes(Ljava/nio/Buffer;I)I

    move-result p2

    .line 227
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 228
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([BILjava/nio/Buffer;I)V
    .registers 6

    .line 68
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 69
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([BILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([CIILjava/nio/Buffer;)V
    .registers 5

    .line 95
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p3, v0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([CILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([CILjava/nio/Buffer;I)V
    .registers 6

    .line 156
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 157
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([CILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([DIILjava/nio/Buffer;)V
    .registers 5

    .line 143
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p0, p1, p3, v0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([DILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([DILjava/nio/Buffer;I)V
    .registers 6

    .line 212
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 p3, p3, 0x3

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 213
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([DILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([FIILjava/nio/Buffer;)V
    .registers 5

    .line 131
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 p2, p2, 0x2

    invoke-static {p0, p1, p3, v0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([FILjava/nio/Buffer;I)V
    .registers 6

    .line 198
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 p3, p3, 0x2

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 199
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([FLjava/nio/Buffer;II)V
    .registers 5

    .line 50
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    shl-int/lit8 v0, p2, 0x2

    .line 51
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_11

    .line 52
    :cond_a
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_11

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 54
    :cond_11
    :goto_11
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FLjava/nio/Buffer;II)V

    const/4 p0, 0x0

    .line 55
    invoke-virtual {p1, p0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public static copy([IIILjava/nio/Buffer;)V
    .registers 5

    .line 107
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 p2, p2, 0x2

    invoke-static {p0, p1, p3, v0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([IILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([IILjava/nio/Buffer;I)V
    .registers 6

    .line 170
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 p3, p3, 0x2

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([IILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([JIILjava/nio/Buffer;)V
    .registers 5

    .line 119
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p0, p1, p3, v0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([JILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([JILjava/nio/Buffer;I)V
    .registers 6

    .line 184
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 p3, p3, 0x3

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 185
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([JILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([SILjava/nio/Buffer;I)V
    .registers 6

    .line 82
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 83
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([SILjava/nio/Buffer;II)V

    return-void
.end method

.method private static native copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([BILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([CILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([DILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([FILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([FLjava/nio/Buffer;II)V
.end method

.method private static native copyJni([IILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([JILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([SILjava/nio/Buffer;II)V
.end method

.method public static disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 497
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 498
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 499
    :try_start_7
    sget-object v2, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 501
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_22

    .line 502
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    sub-int/2addr v1, v0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 503
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->freeMemory(Ljava/nio/ByteBuffer;)V

    return-void

    .line 500
    :cond_1a
    :try_start_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer not allocated with newUnsafeByteBuffer or already disposed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_22
    move-exception p0

    .line 501
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw p0
.end method

.method private static elementsToBytes(Ljava/nio/Buffer;I)I
    .registers 4

    .line 436
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return p1

    .line 438
    :cond_5
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_c

    shl-int/lit8 p0, p1, 0x1

    return p0

    .line 440
    :cond_c
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_13

    shl-int/lit8 p0, p1, 0x1

    return p0

    .line 442
    :cond_13
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1a

    shl-int/lit8 p0, p1, 0x2

    return p0

    .line 444
    :cond_1a
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_21

    shl-int/lit8 p0, p1, 0x3

    return p0

    .line 446
    :cond_21
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_28

    shl-int/lit8 p0, p1, 0x2

    return p0

    .line 448
    :cond_28
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_2f

    shl-int/lit8 p0, p1, 0x3

    return p0

    .line 451
    :cond_2f
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t copy to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instance"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native find(Ljava/nio/Buffer;IILjava/nio/Buffer;II)J
.end method

.method private static native find(Ljava/nio/Buffer;IILjava/nio/Buffer;IIF)J
.end method

.method private static native find(Ljava/nio/Buffer;II[FII)J
.end method

.method private static native find(Ljava/nio/Buffer;II[FIIF)J
.end method

.method private static native find([FIILjava/nio/Buffer;II)J
.end method

.method private static native find([FIILjava/nio/Buffer;IIF)J
.end method

.method private static native find([FII[FII)J
.end method

.method private static native find([FII[FIIF)J
.end method

.method public static findFloats(Ljava/nio/Buffer;ILjava/nio/Buffer;I)J
    .registers 10

    .line 366
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;IILjava/nio/Buffer;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static findFloats(Ljava/nio/Buffer;ILjava/nio/Buffer;IF)J
    .registers 12

    .line 382
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;IILjava/nio/Buffer;IIF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static findFloats(Ljava/nio/Buffer;I[FI)J
    .registers 10

    .line 374
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;II[FII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static findFloats(Ljava/nio/Buffer;I[FIF)J
    .registers 12

    .line 390
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;II[FIIF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static findFloats([FILjava/nio/Buffer;I)J
    .registers 10

    .line 370
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FIILjava/nio/Buffer;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static findFloats([FILjava/nio/Buffer;IF)J
    .registers 12

    .line 386
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FIILjava/nio/Buffer;IIF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static findFloats([FI[FI)J
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    .line 378
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FII[FII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static findFloats([FI[FIF)J
    .registers 12

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 394
    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FII[FIIF)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native freeMemory(Ljava/nio/ByteBuffer;)V
.end method

.method public static getAllocatedBytesUnsafe()I
    .registers 1

    .line 545
    sget v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    return v0
.end method

.method private static native getBufferAddress(Ljava/nio/Buffer;)J
.end method

.method public static getUnsafeBufferAddress(Ljava/nio/Buffer;)J
    .registers 5

    .line 528
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->getBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z
    .registers 4

    .line 507
    sget-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 508
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 509
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static newByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 467
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 468
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static newCharBuffer(I)Ljava/nio/CharBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x2

    .line 479
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 480
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 481
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static native newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static newDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x8

    .line 461
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 462
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 463
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x4

    .line 455
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 456
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static newIntBuffer(I)Ljava/nio/IntBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x4

    .line 485
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 486
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 487
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static newLongBuffer(I)Ljava/nio/LongBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x8

    .line 491
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 492
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 493
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static newShortBuffer(I)Ljava/nio/ShortBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x2

    .line 473
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 474
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 515
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 516
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 517
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    add-int/2addr v1, p0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 518
    sget-object p0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter p0

    .line 519
    :try_start_13
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 520
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static newUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3

    .line 536
    sget v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 537
    sget-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 538
    :try_start_c
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 539
    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p0
.end method

.method private static positionInBytes(Ljava/nio/Buffer;)I
    .registers 4

    .line 398
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    .line 399
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    return p0

    .line 400
    :cond_9
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_14

    .line 401
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    return p0

    .line 402
    :cond_14
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1f

    .line 403
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    return p0

    .line 404
    :cond_1f
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2a

    .line 405
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0

    .line 406
    :cond_2a
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_35

    .line 407
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0

    .line 408
    :cond_35
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_40

    .line 409
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0

    .line 410
    :cond_40
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_4b

    .line 411
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0

    .line 413
    :cond_4b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy to a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instance"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix3;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 309
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix3;I)V

    return-void
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix3;I)V
    .registers 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    .line 334
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result p4

    add-int/2addr p4, p5

    invoke-static {p0, p2, p3, p1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M3Jni(Ljava/nio/Buffer;II[FI)V

    goto :goto_21

    .line 340
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 337
    :cond_17
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result p4

    add-int/2addr p4, p5

    invoke-static {p0, p2, p3, p1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M3Jni(Ljava/nio/Buffer;II[FI)V

    :goto_21
    return-void
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix4;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 239
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix4;I)V

    return-void
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix4;I)V
    .registers 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    .line 264
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result p4

    add-int/2addr p4, p5

    invoke-static {p0, p2, p3, p1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV4M4Jni(Ljava/nio/Buffer;II[FI)V

    goto :goto_2f

    .line 273
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 267
    :cond_1a
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result p4

    add-int/2addr p4, p5

    invoke-static {p0, p2, p3, p1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M4Jni(Ljava/nio/Buffer;II[FI)V

    goto :goto_2f

    .line 270
    :cond_25
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result p4

    add-int/2addr p4, p5

    invoke-static {p0, p2, p3, p1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M4Jni(Ljava/nio/Buffer;II[FI)V

    :goto_2f
    return-void
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix3;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 320
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform([FIIILcom/badlogic/gdx/math/Matrix3;I)V

    return-void
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix3;I)V
    .registers 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 355
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0, p2, p3, p1, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M3Jni([FII[FI)V

    goto :goto_17

    .line 361
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 358
    :cond_12
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0, p2, p3, p1, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M3Jni([FII[FI)V

    :goto_17
    return-void
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix4;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 250
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform([FIIILcom/badlogic/gdx/math/Matrix4;I)V

    return-void
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix4;I)V
    .registers 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    .line 288
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0, p2, p3, p1, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV4M4Jni([FII[FI)V

    goto :goto_20

    .line 297
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 291
    :cond_15
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0, p2, p3, p1, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M4Jni([FII[FI)V

    goto :goto_20

    .line 294
    :cond_1b
    iget-object p1, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0, p2, p3, p1, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M4Jni([FII[FI)V

    :goto_20
    return-void
.end method

.method private static native transformV2M3Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV2M3Jni([FII[FI)V
.end method

.method private static native transformV2M4Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV2M4Jni([FII[FI)V
.end method

.method private static native transformV3M3Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV3M3Jni([FII[FI)V
.end method

.method private static native transformV3M4Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV3M4Jni([FII[FI)V
.end method

.method private static native transformV4M4Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV4M4Jni([FII[FI)V
.end method
