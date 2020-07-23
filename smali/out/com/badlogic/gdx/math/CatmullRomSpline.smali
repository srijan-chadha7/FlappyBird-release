.class public Lcom/badlogic/gdx/math/CatmullRomSpline;
.super Ljava/lang/Object;
.source "CatmullRomSpline.java"

# interfaces
.implements Lcom/badlogic/gdx/math/Path;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/math/Path<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public continuous:Z

.field public controlPoints:[Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public spanCount:I

.field private tmp:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tmp2:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tmp3:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcom/badlogic/gdx/math/Vector;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->set([Lcom/badlogic/gdx/math/Vector;Z)Lcom/badlogic/gdx/math/CatmullRomSpline;

    return-void
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;F[TT;ZTT;)TT;"
        }
    .end annotation

    if-eqz p3, :cond_4

    .line 30
    array-length v0, p2

    goto :goto_7

    :cond_4
    array-length v0, p2

    add-int/lit8 v0, v0, -0x3

    :goto_7
    int-to-float v1, v0

    mul-float v1, v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_13

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_13
    float-to-int v0, v1

    :goto_14
    move v3, v0

    int-to-float p1, v3

    sub-float v4, v1, p1

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 34
    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/math/CatmullRomSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;IF[TT;ZTT;)TT;"
        }
    .end annotation

    .line 47
    array-length v0, p3

    mul-float v1, p2, p2

    mul-float v2, v1, p2

    .line 50
    aget-object v3, p3, p1

    invoke-interface {p0, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v4, v4, v2

    const/high16 v5, 0x40200000    # 2.5f

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    const/high16 v3, 0x3f000000    # 0.5f

    if-nez p4, :cond_20

    if-lez p1, :cond_3a

    :cond_20
    add-int v4, v0, p1

    add-int/lit8 v4, v4, -0x1

    .line 51
    rem-int/2addr v4, v0

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v5, -0x41000000    # -0.5f

    mul-float v5, v5, v2

    add-float/2addr v5, v1

    mul-float v6, p2, v3

    sub-float/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    :cond_3a
    if-nez p4, :cond_40

    add-int/lit8 v4, v0, -0x1

    if-ge p1, v4, :cond_5c

    :cond_40
    add-int/lit8 v4, p1, 0x1

    .line 52
    rem-int/2addr v4, v0

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v5, -0x40400000    # -1.5f

    mul-float v5, v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v1

    add-float/2addr v5, v6

    mul-float p2, p2, v3

    add-float/2addr v5, p2

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    :cond_5c
    if-nez p4, :cond_62

    add-int/lit8 p2, v0, -0x2

    if-ge p1, p2, :cond_77

    :cond_62
    add-int/lit8 p1, p1, 0x2

    .line 53
    rem-int/2addr p1, v0

    aget-object p1, p3, p1

    invoke-interface {p5, p1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    mul-float v2, v2, v3

    mul-float v1, v1, v3

    sub-float/2addr v2, v1

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    :cond_77
    return-object p0
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;F[TT;ZTT;)TT;"
        }
    .end annotation

    if-eqz p3, :cond_4

    .line 66
    array-length v0, p2

    goto :goto_7

    :cond_4
    array-length v0, p2

    add-int/lit8 v0, v0, -0x3

    :goto_7
    int-to-float v1, v0

    mul-float v1, v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_13

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_13
    float-to-int v0, v1

    :goto_14
    move v3, v0

    int-to-float p1, v3

    sub-float v4, v1, p1

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 70
    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector<",
            "TT;>;>(TT;IF[TT;ZTT;)TT;"
        }
    .end annotation

    .line 86
    array-length v0, p3

    mul-float v1, p2, p2

    .line 89
    aget-object v2, p3, p1

    invoke-interface {p0, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    neg-float v3, p2

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v4, v4, v3

    const/high16 v5, 0x40900000    # 4.5f

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    const/high16 v2, 0x3fc00000    # 1.5f

    if-nez p4, :cond_1c

    if-lez p1, :cond_38

    :cond_1c
    add-int v4, v0, p1

    add-int/lit8 v4, v4, -0x1

    .line 90
    rem-int/2addr v4, v0

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v6, -0x41000000    # -0.5f

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, p2

    add-float/2addr v7, v6

    mul-float v6, v1, v2

    sub-float/2addr v7, v6

    invoke-interface {v4, v7}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    :cond_38
    if-nez p4, :cond_3e

    add-int/lit8 v4, v0, -0x1

    if-ge p1, v4, :cond_56

    :cond_3e
    add-int/lit8 v4, p1, 0x1

    .line 91
    rem-int/2addr v4, v0

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x40800000    # 4.0f

    mul-float p2, p2, v7

    add-float/2addr p2, v6

    sub-float/2addr p2, v5

    invoke-interface {v4, p2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    :cond_56
    if-nez p4, :cond_5c

    add-int/lit8 p2, v0, -0x2

    if-ge p1, p2, :cond_6f

    :cond_5c
    add-int/lit8 p1, p1, 0x2

    .line 92
    rem-int/2addr p1, v0

    aget-object p1, p3, p1

    invoke-interface {p5, p1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    mul-float v1, v1, v2

    add-float/2addr v3, v1

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    :cond_6f
    return-object p0
.end method


# virtual methods
.method public approxLength(I)F
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_24

    .line 215
    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 216
    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    int-to-float v3, v1

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    if-lez v1, :cond_21

    .line 217
    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->dst(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    add-float/2addr v0, v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return v0
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->nearest(Lcom/badlogic/gdx/math/Vector;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

    move-result p1

    return p1
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;I)F
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)F"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    aget-object v1, v0, p2

    if-lez p2, :cond_9

    add-int/lit8 v2, p2, -0x1

    goto :goto_d

    .line 182
    :cond_9
    iget v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    add-int/lit8 v2, v2, -0x1

    :goto_d
    aget-object v0, v0, v2

    .line 183
    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 184
    invoke-interface {p1, v0}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v3

    .line 185
    invoke-interface {p1, v2}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v4

    cmpg-float v3, v4, v3

    if-gez v3, :cond_27

    move-object v0, v1

    move-object v1, v2

    goto :goto_2e

    :cond_27
    if-lez p2, :cond_2a

    goto :goto_2c

    .line 195
    :cond_2a
    iget p2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    :goto_2c
    add-int/lit8 p2, p2, -0x1

    .line 197
    :goto_2e
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    .line 198
    invoke-interface {p1, v1}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v1

    .line 199
    invoke-interface {p1, v0}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result p1

    float-to-double v3, v2

    .line 200
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    add-float/2addr v1, v2

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    div-float/2addr v1, p1

    sub-float p1, v0, v1

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 202
    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p2, p1

    .line 203
    iget p1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;II)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)F"
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

    move-result p1

    return p1
.end method

.method public bridge synthetic approximate(Ljava/lang/Object;)F
    .registers 2

    .line 20
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result p1

    return p1
.end method

.method public derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    int-to-float v1, v0

    mul-float v1, v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_e

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_e
    float-to-int v0, v1

    :goto_f
    int-to-float p2, v0

    sub-float/2addr v1, p2

    .line 140
    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .line 145
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 p2, p2, 0x1

    :goto_7
    move v1, p2

    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget-boolean v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    iget-object v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic derivativeAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .registers 3

    .line 20
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public locate(Lcom/badlogic/gdx/math/Vector;)F
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic locate(Ljava/lang/Object;)F
    .registers 2

    .line 20
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->locate(Lcom/badlogic/gdx/math/Vector;)F

    move-result p1

    return p1
.end method

.method public nearest(Lcom/badlogic/gdx/math/Vector;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 150
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

    move-result p1

    return p1
.end method

.method public nearest(Lcom/badlogic/gdx/math/Vector;II)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)I"
        }
    .end annotation

    :goto_0
    if-gez p2, :cond_6

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    add-int/2addr p2, v0

    goto :goto_0

    .line 157
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    rem-int v0, p2, v0

    .line 158
    iget-object v1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v1

    const/4 v2, 0x1

    :goto_13
    if-ge v2, p3, :cond_2b

    add-int v3, p2, v2

    .line 160
    iget v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    rem-int/2addr v3, v4

    .line 161
    iget-object v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    aget-object v4, v4, v3

    invoke-interface {p1, v4}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_28

    move v0, v3

    move v1, v4

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2b
    return v0
.end method

.method public set([Lcom/badlogic/gdx/math/Vector;Z)Lcom/badlogic/gdx/math/CatmullRomSpline;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)",
            "Lcom/badlogic/gdx/math/CatmullRomSpline;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    .line 112
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_19

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    .line 113
    :cond_19
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_25

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    .line 114
    :cond_25
    iput-object p1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    .line 115
    iput-boolean p2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    if-eqz p2, :cond_2d

    .line 116
    array-length p1, p1

    goto :goto_30

    :cond_2d
    array-length p1, p1

    add-int/lit8 p1, p1, -0x3

    :goto_30
    iput p1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    return-object p0
.end method

.method public valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    int-to-float v1, v0

    mul-float v1, v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_e

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_e
    float-to-int v0, v1

    :goto_f
    int-to-float p2, v0

    sub-float/2addr v1, p2

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 p2, p2, 0x1

    :goto_7
    move v1, p2

    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget-boolean v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    iget-object v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic valueAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .registers 3

    .line 20
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    return-object p1
.end method
