.class public Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "StreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/StreamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptimizedByteArrayOutputStream"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 133
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public declared-synchronized toByteArray()[B
    .registers 3

    monitor-enter p0

    .line 138
    :try_start_1
    iget v0, p0, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;->count:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;->buf:[B
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    monitor-exit p0

    return-object v0

    .line 139
    :cond_c
    :try_start_c
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
