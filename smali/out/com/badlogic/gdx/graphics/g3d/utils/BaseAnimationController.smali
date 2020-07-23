.class public Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;
.super Ljava/lang/Object;
.source "BaseAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    }
.end annotation


# static fields
.field private static final tmpT:Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

.field private static final transforms:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private applying:Z

.field public final target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

.field private final transformPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transforms:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 159
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->tmpT:Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transformPool:Lcom/badlogic/gdx/utils/Pool;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    .line 106
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    return-void
.end method

.method protected static applyAnimation(Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FLcom/badlogic/gdx/graphics/g3d/model/Animation;F)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;F",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            "F)V"
        }
    .end annotation

    if-nez p0, :cond_18

    .line 279
    iget-object p0, p3, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_83

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    .line 280
    invoke-static {p1, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyNodeAnimationDirectly(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)V

    goto :goto_8

    .line 282
    :cond_18
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v2, 0x0

    .line 283
    iput-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    goto :goto_20

    .line 284
    :cond_30
    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_36
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    .line 285
    invoke-static {v0, p0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyNodeAnimationBlending(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FF)V

    goto :goto_36

    .line 286
    :cond_46
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p0

    :cond_4e
    :goto_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_83

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 287
    iget-object p3, p1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast p3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-boolean p3, p3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    if-nez p3, :cond_4e

    .line 288
    iget-object p3, p1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast p3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 p4, 0x1

    iput-boolean p4, p3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    .line 289
    iget-object p3, p1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast p3, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    iget-object p4, p1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast p4, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object p4, p4, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, p4, v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->lerp(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    goto :goto_4e

    :cond_83
    return-void
.end method

.method private static final applyNodeAnimationBlending(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FF)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;FF)V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v1, 0x1

    .line 257
    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    .line 258
    invoke-static {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getNodeAnimationTransform(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object p0

    const/4 p4, 0x0

    .line 260
    invoke-virtual {p1, v0, p4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    const v1, 0x3f7fffef    # 0.999999f

    if-eqz p4, :cond_21

    cmpl-float p1, p3, v1

    if-lez p1, :cond_1d

    .line 263
    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->set(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    goto :goto_4a

    .line 265
    :cond_1d
    invoke-virtual {p4, p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    goto :goto_4a

    :cond_21
    cmpl-float p4, p3, v1

    if-lez p4, :cond_33

    .line 268
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->set(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 270
    :cond_33
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    iget-object p4, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p4, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object p2

    invoke-virtual {p2, p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4a
    return-void
.end method

.method private static final applyNodeAnimationDirectly(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v1, 0x1

    .line 248
    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    .line 249
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getNodeAnimationTransform(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object p0

    .line 250
    iget-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->toMatrix4(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method static final getFirstKeyframeIndexAtTime(Lcom/badlogic/gdx/utils/Array;F)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<",
            "TT;>;>;F)I"
        }
    .end annotation

    .line 166
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-lez v0, :cond_47

    .line 169
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_47

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_20

    goto :goto_47

    :cond_20
    :goto_20
    if-ge v1, v0, :cond_47

    add-int v2, v1, v0

    .line 178
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 179
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_36

    move v1, v3

    goto :goto_20

    .line 181
    :cond_36
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_46

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_20

    :cond_46
    return v2

    :cond_47
    :goto_47
    return v1
.end method

.method private static final getNodeAnimationTransform(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    .registers 4

    .line 239
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->tmpT:Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    .line 240
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getTranslationAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 241
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getRotationAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 242
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getScalingAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method private static final getRotationAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .registers 7

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p0

    return-object p0

    .line 208
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast p0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p0

    return-object p0

    .line 210
    :cond_26
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getFirstKeyframeIndexAtTime(Lcom/badlogic/gdx/utils/Array;F)I

    move-result v0

    .line 211
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 212
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    add-int/2addr v0, v1

    .line 214
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_5a

    .line 215
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 216
    iget v0, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget v1, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 217
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast p0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p2, p0, p1}, Lcom/badlogic/gdx/math/Quaternion;->slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;

    :cond_5a
    return-object p2
.end method

.method private static final getScalingAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .registers 7

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    return-object p0

    .line 224
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast p0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    return-object p0

    .line 226
    :cond_26
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getFirstKeyframeIndexAtTime(Lcom/badlogic/gdx/utils/Array;F)I

    move-result v0

    .line 227
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 228
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    add-int/2addr v0, v1

    .line 230
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_5a

    .line 231
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 232
    iget v0, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget v1, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 233
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast p0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0, p1}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    :cond_5a
    return-object p2
.end method

.method private static final getTranslationAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .registers 7

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    return-object p0

    .line 192
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast p0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    return-object p0

    .line 194
    :cond_26
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getFirstKeyframeIndexAtTime(Lcom/badlogic/gdx/utils/Array;F)I

    move-result v0

    .line 195
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 196
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    add-int/2addr v0, v1

    .line 198
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_5a

    .line 199
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 200
    iget v0, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget v1, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 201
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast p0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0, p1}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    :cond_5a
    return-object p2
.end method


# virtual methods
.method protected apply(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V
    .registers 6

    .line 119
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-eqz v0, :cond_c

    .line 120
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transforms:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transformPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-static {v0, v1, p3, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyAnimation(Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FLcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    return-void

    .line 119
    :cond_c
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "You must call begin() before adding an animation"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V
    .registers 5

    .line 137
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-nez v0, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 138
    invoke-static {v1, v1, v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyAnimation(Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FLcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    .line 139
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    return-void

    .line 137
    :cond_10
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Call end() first"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected applyAnimations(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FLcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V
    .registers 8

    if-eqz p3, :cond_2e

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-nez v0, :cond_8

    goto :goto_2e

    :cond_8
    if-eqz p1, :cond_2a

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p5, v0

    if-nez v1, :cond_11

    goto :goto_2a

    .line 149
    :cond_11
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-nez v1, :cond_22

    .line 152
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->begin()V

    .line 153
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->apply(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V

    .line 154
    invoke-virtual {p0, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->apply(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->end()V

    goto :goto_31

    .line 150
    :cond_22
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Call end() first"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    goto :goto_31

    .line 146
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    :goto_31
    return-void
.end method

.method protected begin()V
    .registers 3

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    return-void

    .line 112
    :cond_8
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "You must call end() after each call to being()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected end()V
    .registers 5

    .line 125
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-eqz v0, :cond_3d

    .line 126
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transforms:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 127
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    iget-object v3, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->toMatrix4(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 128
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transformPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    goto :goto_e

    .line 130
    :cond_2f
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transforms:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    return-void

    .line 125
    :cond_3d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "You must call begin() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_46

    :goto_45
    throw v0

    :goto_46
    goto :goto_45
.end method

.method protected removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V
    .registers 4

    .line 298
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    .line 299
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    goto :goto_6

    :cond_18
    return-void
.end method
