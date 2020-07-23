.class public Lcom/badlogic/gdx/utils/compression/Lzma;
.super Ljava/lang/Object;
.source "Lzma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;-><init>()V

    .line 64
    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Eos:Z

    .line 65
    new-instance v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;-><init>()V

    .line 66
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Algorithm:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetAlgorithm(I)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 67
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->DictionarySize:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetDictionarySize(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 68
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Fb:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetNumFastBytes(I)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 69
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->MatchFinder:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetMatchFinder(I)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 70
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lc:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lp:I

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Pb:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetLcLpPb(III)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 71
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetEndMarkerMode(Z)V

    .line 72
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->WriteCoderProperties(Ljava/io/OutputStream;)V

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_43

    goto :goto_50

    .line 77
    :cond_43
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_4f

    goto :goto_50

    :cond_4f
    move-wide v3, v0

    :goto_50
    const/4 v0, 0x0

    :goto_51
    const/16 v1, 0x8

    if-ge v0, v1, :cond_62

    mul-int/lit8 v1, v0, 0x8

    ushr-long v5, v3, v1

    long-to-int v1, v5

    and-int/lit16 v1, v1, 0xff

    .line 82
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_62
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 84
    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/badlogic/gdx/utils/compression/ICodeProgress;)V

    return-void

    .line 70
    :cond_6d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Incorrect -lc or -lp or -pb value"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_75
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Incorrect -mf value"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_7d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Incorrect -fb value"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_85
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Incorrect dictionary size"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_8d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Incorrect compression mode"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_96

    :goto_95
    throw p0

    :goto_96
    goto :goto_95
.end method

.method public static decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 94
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v0, :cond_48

    .line 96
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;-><init>()V

    .line 97
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetDecoderProperties([B)Z

    move-result v1

    if-eqz v1, :cond_40

    const-wide/16 v3, 0x0

    :goto_17
    const/16 v1, 0x8

    if-ge v2, v1, :cond_31

    .line 100
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_29

    int-to-long v5, v1

    mul-int/lit8 v1, v2, 0x8

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 102
    :cond_29
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can\'t read stream size"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_31
    invoke-virtual {v0, p0, p1, v3, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result p0

    if-eqz p0, :cond_38

    return-void

    .line 107
    :cond_38
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error in data stream"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Incorrect stream properties"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_48
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "input .lzma file is too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_51

    :goto_50
    throw p0

    :goto_51
    goto :goto_50
.end method
