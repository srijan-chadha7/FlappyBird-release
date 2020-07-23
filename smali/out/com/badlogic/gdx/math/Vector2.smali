.class public Lcom/badlogic/gdx/math/Vector2;
.super Ljava/lang/Object;
.source "Vector2.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/badlogic/gdx/math/Vector<",
        "Lcom/badlogic/gdx/math/Vector2;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:Lcom/badlogic/gdx/math/Vector2;

.field public static final Y:Lcom/badlogic/gdx/math/Vector2;

.field public static final Zero:Lcom/badlogic/gdx/math/Vector2;

.field private static final serialVersionUID:J = 0xcaed5be6c419bb3L


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->X:Lcom/badlogic/gdx/math/Vector2;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->Y:Lcom/badlogic/gdx/math/Vector2;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 47
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public static dot(FFFF)F
    .registers 4

    mul-float p0, p0, p2

    mul-float p1, p1, p3

    add-float/2addr p0, p1

    return p0
.end method

.method public static dst(FFFF)F
    .registers 4

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    float-to-double p0, p2

    .line 192
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static dst2(FFFF)F
    .registers 4

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    return p2
.end method

.method public static len(FF)F
    .registers 2

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static len2(FF)F
    .registers 2

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public add(FF)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 135
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 136
    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 126
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public bridge synthetic add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public angle()F
    .registers 5

    .line 322
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee0

    mul-float v0, v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_18

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_18
    return v0
.end method

.method public angle(Lcom/badlogic/gdx/math/Vector2;)F
    .registers 6

    .line 330
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->crs(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x42652ee0

    mul-float p1, p1, v0

    return p1
.end method

.method public angleRad()F
    .registers 5

    .line 336
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public angleRad(Lcom/badlogic/gdx/math/Vector2;)F
    .registers 6

    .line 342
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->crs(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public clamp(FF)Lcom/badlogic/gdx/math/Vector2;
    .registers 5

    .line 249
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_a

    return-object p0

    :cond_a
    mul-float p2, p2, p2

    cmpl-float v1, v0, p2

    if-lez v1, :cond_1c

    div-float/2addr p2, v0

    float-to-double p1, p2

    .line 252
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1

    :cond_1c
    mul-float p1, p1, p1

    cmpg-float p2, v0, p1

    if-gez p2, :cond_2e

    div-float/2addr p1, v0

    float-to-double p1, p1

    .line 254
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1

    :cond_2e
    return-object p0
.end method

.method public bridge synthetic clamp(FF)Lcom/badlogic/gdx/math/Vector;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->clamp(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector2;
    .registers 2

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    return-object v0
.end method

.method public bridge synthetic cpy()Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public crs(FF)F
    .registers 4

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, p2

    iget p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p2, p2, p1

    sub-float/2addr v0, p2

    return v0
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector2;)F
    .registers 4

    .line 308
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public dot(FF)F
    .registers 4

    .line 150
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector2;)F
    .registers 4

    .line 146
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public bridge synthetic dot(Lcom/badlogic/gdx/math/Vector;)F
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    return p1
.end method

.method public dst(FF)F
    .registers 4

    .line 206
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p1, v0

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 208
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector2;)F
    .registers 4

    .line 197
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 198
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, v1

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public bridge synthetic dst(Lcom/badlogic/gdx/math/Vector;)F
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    return p1
.end method

.method public dst2(FF)F
    .registers 4

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p1, v0

    .line 229
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector2;)F
    .registers 4

    .line 219
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 220
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, v1

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public bridge synthetic dst2(Lcom/badlogic/gdx/math/Vector;)F
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    return p1
.end method

.method public epsilonEquals(FF)Z
    .registers 4

    const v0, 0x358637bd    # 1.0E-6f

    .line 475
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/math/Vector2;->epsilonEquals(FFF)Z

    move-result p1

    return p1
.end method

.method public epsilonEquals(FFF)Z
    .registers 5

    .line 458
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_d

    return v0

    .line 459
    :cond_d
    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-lez p1, :cond_19

    return v0

    :cond_19
    const/4 p1, 0x1

    return p1
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 3

    const v0, 0x358637bd    # 1.0E-6f

    .line 467
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/Vector2;->epsilonEquals(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector2;F)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 450
    :cond_4
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_12

    return v0

    .line 451
    :cond_12
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_20

    return v0

    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z
    .registers 3

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->epsilonEquals(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 440
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 441
    :cond_13
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .line 442
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_24

    return v1

    .line 443
    :cond_24
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result p1

    if-eq v2, p1, :cond_33

    return v1

    :cond_33
    return v0
.end method

.method public fromString(Ljava/lang/String;)Lcom/badlogic/gdx/math/Vector2;
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x2c

    .line 280
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x0

    .line 281
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_3b

    .line 283
    :try_start_20
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-int/2addr v1, v0

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 285
    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_3a} :catch_3b

    return-object p1

    .line 290
    :catch_3b
    :cond_3b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed Vector2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasOppositeDirection(Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 3

    .line 545
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public bridge synthetic hasOppositeDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public hasSameDirection(Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 3

    .line 540
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public bridge synthetic hasSameDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->hasSameDirection(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 431
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 432
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public interpolate(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 418
    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic interpolate(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector;
    .registers 4

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->interpolate(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 3

    .line 515
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector2;F)Z
    .registers 3

    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;)Z
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isCollinear(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;F)Z
    .registers 3

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isCollinear(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 3

    .line 525
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;F)Z
    .registers 3

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;)Z
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;F)Z
    .registers 3

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 4

    .line 500
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    return p1
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z
    .registers 5

    .line 505
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;)Z
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;F)Z
    .registers 3

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector2;)Z
    .registers 2

    .line 530
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    return p1
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector2;F)Z
    .registers 3

    .line 535
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;)Z
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isPerpendicular(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;F)Z
    .registers 3

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isPerpendicular(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public isUnit()Z
    .registers 2

    const v0, 0x3089705f    # 1.0E-9f

    .line 480
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->isUnit(F)Z

    move-result v0

    return v0
.end method

.method public isUnit(F)Z
    .registers 4

    .line 485
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public isZero()Z
    .registers 3

    .line 490
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isZero(F)Z
    .registers 3

    .line 495
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public len()F
    .registers 3

    .line 67
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .registers 3

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 411
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 412
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, v0

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public bridge synthetic lerp(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .registers 3

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public limit(F)Lcom/badlogic/gdx/math/Vector2;
    .registers 2

    mul-float p1, p1, p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->limit2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic limit(F)Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->limit(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public limit2(F)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 240
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    cmpl-float v1, v0, p1

    if-lez v1, :cond_14

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1

    :cond_14
    return-object p0
.end method

.method public bridge synthetic limit2(F)Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->limit2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector2;
    .registers 7

    .line 297
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    add-float/2addr v0, v1

    .line 298
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x7

    aget p1, p1, v2

    add-float/2addr v1, p1

    .line 299
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 300
    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .registers 5

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 6

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .registers 3

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->mulAdd(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .registers 3

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    check-cast p2, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->mulAdd(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector2;
    .registers 3

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    .line 117
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 118
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    :cond_13
    return-object p0
.end method

.method public bridge synthetic nor()Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Vector2;
    .registers 3

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    .line 363
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public rotate90(I)Lcom/badlogic/gdx/math/Vector2;
    .registers 3

    .line 397
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    if-ltz p1, :cond_c

    .line 399
    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float p1, p1

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 400
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_13

    .line 402
    :cond_c
    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float p1, v0

    .line 403
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_13
    return-object p0
.end method

.method public rotateAround(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 370
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public rotateAroundRad(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 392
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public rotateRad(F)Lcom/badlogic/gdx/math/Vector2;
    .registers 7

    float-to-double v0, p1

    .line 376
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 377
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 379
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v2, v1, p1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v3, v0

    sub-float/2addr v2, v4

    mul-float v1, v1, v0

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    .line 382
    iput v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 383
    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Vector2;
    .registers 3

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public scl(FF)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 164
    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 171
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public bridge synthetic scl(F)Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scl(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public set(FF)Lcom/badlogic/gdx/math/Vector2;
    .registers 3

    .line 91
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 92
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 3

    .line 81
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 82
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public bridge synthetic set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public setAngle(F)Lcom/badlogic/gdx/math/Vector2;
    .registers 3

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    .line 348
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->setAngleRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public setAngleRad(F)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 354
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 355
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public setLength(F)Lcom/badlogic/gdx/math/Vector2;
    .registers 2

    mul-float p1, p1, p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->setLength2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLength(F)Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public setLength2(F)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 265
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1a

    cmpl-float v1, v0, p1

    if-nez v1, :cond_e

    goto :goto_1a

    :cond_e
    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 266
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    :goto_1a
    move-object p1, p0

    :goto_1b
    return-object p1
.end method

.method public bridge synthetic setLength2(F)Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->setLength2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public setToRandomDirection()Lcom/badlogic/gdx/math/Vector2;
    .registers 3

    const/4 v0, 0x0

    const v1, 0x40c90fdb

    .line 423
    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    .line 424
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setToRandomDirection()Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->setToRandomDirection()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public setZero()Lcom/badlogic/gdx/math/Vector2;
    .registers 2

    const/4 v0, 0x0

    .line 550
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 551
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public bridge synthetic setZero()Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public sub(FF)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 108
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 109
    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 99
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p0
.end method

.method public bridge synthetic sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .registers 2

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
