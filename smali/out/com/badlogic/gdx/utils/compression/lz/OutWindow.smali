.class public Lcom/badlogic/gdx/utils/compression/lz/OutWindow;
.super Ljava/lang/Object;
.source "OutWindow.java"


# instance fields
.field _buffer:[B

.field _pos:I

.field _stream:Ljava/io/OutputStream;

.field _streamPos:I

.field _windowSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    return-void
.end method


# virtual methods
.method public CopyBlock(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_a

    .line 48
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    add-int/2addr v0, p1

    :cond_a
    :goto_a
    if-eqz p2, :cond_2c

    .line 50
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-lt v0, p1, :cond_11

    const/4 v0, 0x0

    .line 51
    :cond_11
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    aput-byte v0, p1, v1

    .line 52
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-lt p1, v0, :cond_28

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    :cond_28
    add-int/lit8 p2, p2, -0x1

    move v0, v2

    goto :goto_a

    :cond_2c
    return-void
.end method

.method public Create(I)V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-eq v0, p1, :cond_c

    :cond_8
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    .line 16
    :cond_c
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    .line 18
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_streamPos:I

    return-void
.end method

.method public Flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_streamPos:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_8

    return-void

    .line 41
    :cond_8
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_stream:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-lt v0, v1, :cond_18

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    .line 43
    :cond_18
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_streamPos:I

    return-void
.end method

.method public GetByte(I)B
    .registers 3

    .line 62
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_a

    .line 63
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    add-int/2addr v0, p1

    .line 64
    :cond_a
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public Init(Z)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_streamPos:I

    .line 34
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    :cond_7
    return-void
.end method

.method public PutByte(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    aput-byte p1, v0, v1

    .line 58
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-lt p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    :cond_13
    return-void
.end method

.method public ReleaseStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_stream:Ljava/io/OutputStream;

    return-void
.end method

.method public SetStream(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->ReleaseStream()V

    .line 23
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_stream:Ljava/io/OutputStream;

    return-void
.end method
