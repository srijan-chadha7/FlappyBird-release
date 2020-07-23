.class public Lcom/badlogic/gdx/utils/compression/CRC;
.super Ljava/lang/Object;
.source "CRC.java"


# static fields
.field public static Table:[I


# instance fields
.field _value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x100

    .line 6
    new-array v1, v0, [I

    sput-object v1, Lcom/badlogic/gdx/utils/compression/CRC;->Table:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_27

    move v4, v2

    const/4 v3, 0x0

    :goto_c
    const/16 v5, 0x8

    if-ge v3, v5, :cond_20

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1b

    ushr-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_1d

    :cond_1b
    ushr-int/lit8 v4, v4, 0x1

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 16
    :cond_20
    sget-object v3, Lcom/badlogic/gdx/utils/compression/CRC;->Table:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_27
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/CRC;->_value:I

    return-void
.end method


# virtual methods
.method public GetDigest()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/CRC;->_value:I

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public Init()V
    .registers 2

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/CRC;->_value:I

    return-void
.end method

.method public Update([B)V
    .registers 7

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    .line 34
    sget-object v2, Lcom/badlogic/gdx/utils/compression/CRC;->Table:[I

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/CRC;->_value:I

    aget-byte v4, p1, v1

    xor-int/2addr v4, v3

    and-int/lit16 v4, v4, 0xff

    aget v2, v2, v4

    ushr-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/CRC;->_value:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public Update([BII)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_18

    .line 28
    sget-object v1, Lcom/badlogic/gdx/utils/compression/CRC;->Table:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/CRC;->_value:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    aget v1, v1, v3

    ushr-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/CRC;->_value:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public UpdateByte(I)V
    .registers 4

    .line 38
    sget-object v0, Lcom/badlogic/gdx/utils/compression/CRC;->Table:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/CRC;->_value:I

    xor-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    aget p1, v0, p1

    ushr-int/lit8 v0, v1, 0x8

    xor-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/CRC;->_value:I

    return-void
.end method
