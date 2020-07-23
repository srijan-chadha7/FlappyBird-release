.class public Lcom/badlogic/gdx/utils/DataOutput;
.super Ljava/io/DataOutputStream;
.source "DataOutput.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private writeString_slow(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-ge p3, p2, :cond_45

    .line 85
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_f

    int-to-byte v0, v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    goto :goto_42

    :cond_f
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_30

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0xf

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    .line 89
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 90
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    goto :goto_42

    :cond_30
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x1f

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    .line 93
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    :goto_42
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_45
    return-void
.end method


# virtual methods
.method public writeInt(IZ)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_7

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    :cond_7
    ushr-int/lit8 p2, p1, 0x7

    if-nez p2, :cond_11

    int-to-byte p1, p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    const/4 p1, 0x1

    return p1

    :cond_11
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_23

    int-to-byte p1, p2

    .line 42
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    const/4 p1, 0x2

    return p1

    :cond_23
    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 45
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    ushr-int/lit8 p2, p1, 0x15

    if-nez p2, :cond_33

    int-to-byte p1, v0

    .line 47
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    const/4 p1, 0x3

    return p1

    :cond_33
    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    ushr-int/lit8 p1, p1, 0x1c

    if-nez p1, :cond_43

    int-to-byte p1, p2

    .line 52
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    const/4 p1, 0x4

    return p1

    :cond_43
    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 55
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    int-to-byte p1, p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    const/4 p1, 0x5

    return p1
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 64
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    return-void

    .line 67
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_12

    .line 69
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/DataOutput;->writeByte(I)V

    return-void

    :cond_12
    add-int/lit8 v3, v1, 0x1

    .line 72
    invoke-virtual {p0, v3, v2}, Lcom/badlogic/gdx/utils/DataOutput;->writeInt(IZ)I

    :goto_17
    if-ge v0, v1, :cond_29

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_22

    goto :goto_29

    :cond_22
    int-to-byte v2, v2

    .line 78
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_29
    :goto_29
    if-ge v0, v1, :cond_2e

    .line 80
    invoke-direct {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/DataOutput;->writeString_slow(Ljava/lang/String;II)V

    :cond_2e
    return-void
.end method
