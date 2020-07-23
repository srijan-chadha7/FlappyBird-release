.class public Lcom/badlogic/gdx/math/RandomXS128;
.super Ljava/util/Random;
.source "RandomXS128.java"


# static fields
.field private static final NORM_DOUBLE:D = 1.1102230246251565E-16

.field private static final NORM_FLOAT:D = 5.9604644775390625E-8


# instance fields
.field private seed0:J

.field private seed1:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V

    return-void
.end method

.method private static final murmurHash3(J)J
    .registers 5

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p0, p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public getState(I)J
    .registers 4

    if-nez p1, :cond_5

    .line 184
    iget-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    goto :goto_7

    :cond_5
    iget-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    :goto_7
    return-wide v0
.end method

.method protected final next(I)I
    .registers 8

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    long-to-int p1, v0

    return p1
.end method

.method public nextBoolean()Z
    .registers 6

    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public nextBytes([B)V
    .registers 8

    .line 151
    array-length v0, p1

    :cond_1
    if-eqz v0, :cond_1c

    const/16 v1, 0x8

    if-ge v0, v1, :cond_9

    move v2, v0

    goto :goto_b

    :cond_9
    const/16 v2, 0x8

    .line 154
    :goto_b
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v3

    :goto_f
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    long-to-int v2, v3

    int-to-byte v2, v2

    .line 155
    aput-byte v2, p1, v0

    shr-long/2addr v3, v1

    move v2, v5

    goto :goto_f

    :cond_1c
    return-void
.end method

.method public nextDouble()D
    .registers 5

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .registers 5

    .line 133
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x28

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3e70000000000000L    # 5.9604644775390625E-8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public nextInt()I
    .registers 3

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public nextInt(I)I
    .registers 4

    int-to-long v0, p1

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong(J)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public nextLong()J
    .registers 8

    .line 70
    iget-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    .line 71
    iget-wide v2, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    .line 72
    iput-wide v2, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    const/16 v4, 0x17

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    xor-long v4, v0, v2

    const/16 v6, 0x11

    ushr-long/2addr v0, v6

    xor-long/2addr v0, v4

    const/16 v4, 0x1a

    ushr-long v4, v2, v4

    xor-long/2addr v0, v4

    .line 74
    iput-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nextLong(J)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_19

    .line 112
    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v2

    const/4 v4, 0x1

    ushr-long/2addr v2, v4

    .line 113
    rem-long v4, v2, p1

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, p1, v6

    add-long/2addr v2, v6

    cmp-long v6, v2, v0

    if-ltz v6, :cond_6

    return-wide v4

    .line 110
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw p1

    :goto_22
    goto :goto_21
.end method

.method public setSeed(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_8

    const-wide/high16 p1, -0x8000000000000000L

    .line 166
    :cond_8
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/RandomXS128;->murmurHash3(J)J

    move-result-wide p1

    .line 167
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/RandomXS128;->murmurHash3(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V

    return-void
.end method

.method public setState(JJ)V
    .registers 5

    .line 174
    iput-wide p1, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    .line 175
    iput-wide p3, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    return-void
.end method
