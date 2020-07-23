.class public final Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/MathUtils$Sin;
    }
.end annotation


# static fields
.field private static final BIG_ENOUGH_CEIL:D = 16384.999999999996

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

.field public static final E:F = 2.7182817f

.field public static final FLOAT_ROUNDING_ERROR:F = 1.0E-6f

.field public static final PI:F = 3.1415927f

.field public static final PI2:F = 6.2831855f

.field private static final SIN_BITS:I = 0xe

.field private static final SIN_COUNT:I = 0x4000

.field private static final SIN_MASK:I = 0x3fff

.field private static final degFull:F = 360.0f

.field public static final degRad:F = 0.017453292f

.field private static final degToIndex:F = 45.511112f

.field public static final degreesToRadians:F = 0.017453292f

.field public static final nanoToSec:F = 1.0E-9f

.field public static final radDeg:F = 57.295776f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 2607.5945f

.field public static final radiansToDegrees:F = 57.295776f

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atan2(FF)F
    .registers 9

    const v0, 0x3fc90fdb

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_16

    cmpl-float p1, p0, v1

    if-lez p1, :cond_d

    return v0

    :cond_d
    cmpl-float p0, p0, v1

    if-nez p0, :cond_12

    return v1

    :cond_12
    const p0, -0x4036f025

    return p0

    :cond_16
    div-float v2, p0, p1

    .line 93
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x40490fdb    # (float)Math.PI

    const v5, 0x3e8f5c29    # 0.28f

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3b

    mul-float v5, v5, v2

    mul-float v5, v5, v2

    add-float/2addr v5, v6

    div-float/2addr v2, v5

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3a

    cmpg-float p0, p0, v1

    if-gez p0, :cond_39

    const v4, -0x3fb6f025

    :cond_39
    add-float/2addr v2, v4

    :cond_3a
    return v2

    :cond_3b
    mul-float p1, v2, v2

    add-float/2addr p1, v5

    div-float/2addr v2, p1

    sub-float/2addr v0, v2

    cmpg-float p0, p0, v1

    if-gez p0, :cond_45

    sub-float/2addr v0, v4

    :cond_45
    return v0
.end method

.method public static ceil(F)I
    .registers 5

    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    .line 320
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v0

    double-to-int p0, v2

    rsub-int p0, p0, 0x4000

    return p0
.end method

.method public static ceilPositive(F)I
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL    # 0.9999999

    .line 326
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static clamp(DDD)D
    .registers 7

    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    return-wide p2

    :cond_5
    cmpl-double p2, p0, p4

    if-lez p2, :cond_a

    return-wide p4

    :cond_a
    return-wide p0
.end method

.method public static clamp(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return p1

    :cond_5
    cmpl-float p1, p0, p2

    if-lez p1, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method public static clamp(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method public static clamp(JJJ)J
    .registers 7

    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    return-wide p2

    :cond_5
    cmp-long p2, p0, p4

    if-lez p2, :cond_a

    return-wide p4

    :cond_a
    return-wide p0
.end method

.method public static clamp(SSS)S
    .registers 3

    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method public static cos(F)F
    .registers 3

    .line 69
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x3fc90fdb

    add-float/2addr p0, v1

    const v1, 0x4522f983

    mul-float p0, p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static cosDeg(F)F
    .registers 3

    .line 79
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr p0, v1

    const v1, 0x42360b61

    mul-float p0, p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static floor(F)I
    .registers 5

    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int p0, v0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public static floorPositive(F)I
    .registers 1

    float-to-int p0, p0

    return p0
.end method

.method public static isEqual(FF)Z
    .registers 2

    sub-float/2addr p0, p1

    .line 355
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isEqual(FFF)Z
    .registers 3

    sub-float/2addr p0, p1

    .line 363
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static isPowerOfTwo(I)Z
    .registers 2

    if-eqz p0, :cond_9

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static isZero(F)Z
    .registers 2

    .line 342
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static isZero(FF)Z
    .registers 2

    .line 348
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static lerp(FFF)F
    .registers 3

    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static lerpAngle(FFF)F
    .registers 5

    sub-float/2addr p1, p0

    const v0, 0x40c90fdb

    add-float/2addr p1, v0

    const v1, 0x40490fdb    # (float)Math.PI

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static lerpAngleDeg(FFF)F
    .registers 5

    sub-float/2addr p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static log(FF)F
    .registers 4

    float-to-double v0, p1

    .line 368
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static log2(F)F
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 373
    invoke-static {v0, p0}, Lcom/badlogic/gdx/math/MathUtils;->log(FF)F

    move-result p0

    return p0
.end method

.method public static map(FFFFF)F
    .registers 5

    sub-float/2addr p4, p0

    sub-float/2addr p3, p2

    mul-float p4, p4, p3

    sub-float/2addr p1, p0

    div-float/2addr p4, p1

    add-float/2addr p2, p4

    return p2
.end method

.method public static nextPowerOfTwo(I)I
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public static norm(FFF)F
    .registers 3

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method public static random()F
    .registers 1

    .line 138
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static random(F)F
    .registers 2

    .line 143
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v0, v0, p0

    return v0
.end method

.method public static random(FF)F
    .registers 3

    .line 148
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr p1, p0

    mul-float v0, v0, p1

    add-float/2addr p0, v0

    return p0
.end method

.method public static random(I)I
    .registers 2

    .line 108
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static random(II)I
    .registers 3

    .line 113
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static random(J)J
    .registers 4

    .line 118
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p0

    double-to-long p0, v0

    return-wide p0
.end method

.method public static random(JJ)J
    .registers 6

    .line 123
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    sub-long/2addr p2, p0

    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p2

    double-to-long p2, v0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static randomBoolean()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static randomBoolean(F)Z
    .registers 2

    .line 133
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static randomSign()I
    .registers 1

    .line 153
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1f

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static randomTriangular()F
    .registers 2

    .line 161
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static randomTriangular(F)F
    .registers 3

    .line 170
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float v0, v0, p0

    return v0
.end method

.method public static randomTriangular(FF)F
    .registers 4

    add-float v0, p0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 180
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(FFF)F

    move-result p0

    return p0
.end method

.method public static randomTriangular(FFF)F
    .registers 7

    .line 189
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    sub-float v2, p2, p0

    div-float v3, v2, v1

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1c

    mul-float v0, v0, v1

    mul-float v0, v0, v2

    float-to-double p1, v0

    .line 191
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    add-float/2addr p0, p1

    return p0

    :cond_1c
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float p0, p0, v1

    sub-float p2, p1, p2

    mul-float p0, p0, p2

    float-to-double v0, p0

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method public static round(F)I
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L    # 16384.5

    .line 332
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int p0, v0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public static roundPositive(F)I
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static sin(F)F
    .registers 3

    .line 64
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x4522f983

    mul-float p0, p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static sinDeg(F)F
    .registers 3

    .line 74
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x42360b61

    mul-float p0, p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method
