.class public Lcom/badlogic/gdx/math/collision/Sphere;
.super Ljava/lang/Object;
.source "Sphere.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PI_4_3:F = 4.1887903f

.field private static final serialVersionUID:J = -0x5a07a682c996587cL


# instance fields
.field public final center:Lcom/badlogic/gdx/math/Vector3;

.field public radius:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    .line 42
    iput p2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 64
    :cond_12
    check-cast p1, Lcom/badlogic/gdx/math/collision/Sphere;

    .line 65
    iget v2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget v3, p1, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p1, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->hashCode()I

    move-result v0

    const/16 v1, 0x47

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x47

    .line 56
    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public overlaps(Lcom/badlogic/gdx/math/collision/Sphere;)Z
    .registers 5

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget p1, p1, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    add-float v2, v1, p1

    add-float/2addr v1, p1

    mul-float v2, v2, v1

    cmpg-float p1, v0, v2

    if-gez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method public surfaceArea()F
    .registers 3

    .line 73
    iget v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    const v1, 0x41490fdb

    mul-float v1, v1, v0

    mul-float v1, v1, v0

    return v1
.end method

.method public volume()F
    .registers 3

    .line 69
    iget v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    const v1, 0x40860a92

    mul-float v1, v1, v0

    mul-float v1, v1, v0

    mul-float v1, v1, v0

    return v1
.end method
