.class public Lcom/badlogic/gdx/graphics/g3d/model/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private final children:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field

.field public final globalTransform:Lcom/badlogic/gdx/math/Matrix4;

.field public id:Ljava/lang/String;

.field public inheritTransform:Z

.field public isAnimated:Z

.field public final localTransform:Lcom/badlogic/gdx/math/Matrix4;

.field protected parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

.field public parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodePart;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/badlogic/gdx/math/Quaternion;

.field public final scale:Lcom/badlogic/gdx/math/Vector3;

.field public final translation:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;"
        }
    .end annotation

    .line 299
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-eqz p3, :cond_1a

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2f

    .line 303
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    return-object v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2f

    .line 306
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    return-object v3

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2f
    if-eqz p2, :cond_46

    :goto_31
    if-ge v1, v0, :cond_46

    .line 310
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-static {p2, p1, v2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p2

    if-eqz p2, :cond_43

    return-object p2

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)I"
        }
    .end annotation

    const/4 v0, -0x1

    .line 183
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I

    move-result p1

    return p1
.end method

.method public addChildren(Ljava/lang/Iterable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    .line 191
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChildren(ILjava/lang/Iterable;)I

    move-result p1

    return p1
.end method

.method public attachTo(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)V"
        }
    .end annotation

    .line 144
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    return-void
.end method

.method public calculateBoneTransforms(Z)V
    .registers 8

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 90
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v3, v3

    if-eq v2, v3, :cond_24

    goto :goto_6

    .line 92
    :cond_24
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_6

    .line 94
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/graphics/g3d/model/Node;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v4

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/math/Matrix4;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_4b
    if-eqz p1, :cond_64

    .line 97
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    goto :goto_53

    :cond_64
    return-void
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 2

    .line 105
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 106
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 3

    .line 111
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public calculateLocalTransform()Lcom/badlogic/gdx/math/Matrix4;
    .registers 5

    .line 60
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 61
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public calculateTransforms(Z)V
    .registers 4

    .line 78
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateLocalTransform()Lcom/badlogic/gdx/math/Matrix4;

    .line 79
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateWorldTransform()Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p1, :cond_1f

    .line 82
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    goto :goto_e

    :cond_1f
    return-void
.end method

.method public calculateWorldTransform()Lcom/badlogic/gdx/math/Matrix4;
    .registers 3

    .line 67
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_16

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_1d

    .line 70
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 71
    :goto_1d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 2

    .line 263
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->set(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public detach()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_a

    .line 150
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    :cond_a
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 3

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .registers 10

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_30

    .line 126
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 127
    iget-boolean v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    if-eqz v4, :cond_2d

    .line 128
    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-eqz p2, :cond_24

    .line 130
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v5, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, p1, v5, v3, v6}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    goto :goto_2d

    .line 132
    :cond_24
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v5, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {v4, p1, v5, v3}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 135
    :cond_30
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_34
    if-ge v1, p2, :cond_44

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_44
    return-object p1
.end method

.method public getChild(I)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return-object p1
.end method

.method public getChild(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasParent()Z
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(ITT;)I"
        }
    .end annotation

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_12

    if-eq v0, p2, :cond_a

    .line 201
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    goto :goto_1

    .line 202
    :cond_a
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Cannot add a parent as a child"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_12
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 205
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_27

    :cond_1f
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Could not remove child from its current parent"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    :goto_27
    if-ltz p1, :cond_36

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v0, :cond_30

    goto :goto_36

    .line 210
    :cond_30
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    goto :goto_3f

    .line 207
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 211
    :goto_3f
    iput-object p0, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return p1
.end method

.method public insertChildren(ILjava/lang/Iterable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(I",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    if-ltz p1, :cond_8

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le p1, v0, :cond_c

    :cond_8
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 224
    :cond_c
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, p1

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    add-int/lit8 v2, v0, 0x1

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I

    move v0, v2

    goto :goto_11

    :cond_24
    return p1
.end method

.method public removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)Z"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    const/4 v0, 0x0

    .line 236
    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return v1
.end method

.method protected set(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .registers 5

    .line 275
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->detach()V

    .line 276
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 277
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    .line 278
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 284
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 285
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 286
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->copy()Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3d

    .line 288
    :cond_53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 289
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 290
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    goto :goto_60

    :cond_74
    return-object p0
.end method
