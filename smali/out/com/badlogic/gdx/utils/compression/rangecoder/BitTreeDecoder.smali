.class public Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;
.super Ljava/lang/Object;
.source "BitTreeDecoder.java"


# instance fields
.field Models:[S

.field NumBitLevels:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 25
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    return-void
.end method

.method public static ReverseDecode([SILcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_4
    if-ge v0, p3, :cond_13

    add-int v4, p1, v3

    .line 56
    invoke-virtual {p2, p0, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v4

    shl-int/2addr v3, v1

    add-int/2addr v3, v4

    shl-int/2addr v4, v0

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    return v2
.end method


# virtual methods
.method public Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_4
    if-eqz v0, :cond_12

    shl-int/lit8 v3, v2, 0x1

    .line 35
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    invoke-virtual {p1, v4, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 36
    :cond_12
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    shl-int p1, v1, p1

    sub-int/2addr v2, p1

    return v2
.end method

.method public Init()V
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    return-void
.end method

.method public ReverseDecode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 42
    :goto_4
    iget v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    if-ge v0, v4, :cond_15

    .line 43
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    invoke-virtual {p1, v4, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v4

    shl-int/2addr v3, v1

    add-int/2addr v3, v4

    shl-int/2addr v4, v0

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    return v2
.end method
