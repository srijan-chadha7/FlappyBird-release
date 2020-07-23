.class public Lcom/badlogic/gdx/scenes/scene2d/Group;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Group.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# static fields
.field private static final tmp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field final children:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private final computedTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field private final oldTransform:Lcom/badlogic/gdx/math/Matrix4;

.field transform:Z

.field private final worldTransform:Lcom/badlogic/gdx/math/Affine2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 42
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return-void
.end method


# virtual methods
.method public act(F)V
    .registers 6

    .line 46
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 48
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1a

    .line 49
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 50
    :cond_1a
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 4

    .line 262
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_f

    .line 263
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_9

    return-void

    .line 264
    :cond_9
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 266
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 268
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 269
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5

    .line 306
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_f

    .line 307
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_9

    return-void

    .line 308
    :cond_9
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 310
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    .line 311
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-ne p1, v0, :cond_22

    .line 312
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    goto :goto_28

    .line 314
    :cond_22
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 315
    :goto_28
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 316
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 317
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5

    .line 276
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_f

    .line 277
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_9

    return-void

    .line 278
    :cond_9
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 280
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lt p1, v0, :cond_1b

    .line 281
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    goto :goto_20

    .line 283
    :cond_1b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 284
    :goto_20
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 285
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 286
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 5

    .line 292
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_f

    .line 293
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_9

    return-void

    .line 294
    :cond_9
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 296
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    .line 297
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 298
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 299
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 300
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 204
    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 218
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 219
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    return-void
.end method

.method protected childrenChanged()V
    .registers 1

    return-void
.end method

.method public clear()V
    .registers 1

    .line 357
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clear()V

    .line 358
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    return-void
.end method

.method public clearChildren()V
    .registers 6

    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 345
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1b

    .line 346
    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 347
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 348
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 350
    :cond_1b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->clear()V

    .line 352
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method protected computeTransform()Lcom/badlogic/gdx/math/Matrix4;
    .registers 10

    .line 183
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    .line 184
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    add-float v1, v0, v7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    add-float v2, v0, v8

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Affine2;->setToTrnRotScl(FFFFF)Lcom/badlogic/gdx/math/Affine2;

    const/4 v0, 0x0

    cmpl-float v1, v7, v0

    if-nez v1, :cond_21

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_26

    :cond_21
    neg-float v0, v7

    neg-float v1, v8

    .line 186
    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->translate(FF)Lcom/badlogic/gdx/math/Affine2;

    .line 189
    :cond_26
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :goto_28
    if-eqz v0, :cond_32

    .line 191
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v1, :cond_2f

    goto :goto_32

    .line 192
    :cond_2f
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_28

    :cond_32
    :goto_32
    if-eqz v0, :cond_39

    .line 194
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/math/Affine2;->preMul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    .line 196
    :cond_39
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .registers 2

    const/4 v0, 0x1

    .line 457
    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 4

    .line 56
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 57
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 58
    iget-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz p2, :cond_15

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_15
    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 66
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, v2, p2

    .line 67
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 68
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 69
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_a0

    .line 72
    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 73
    iget v9, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v9, v8

    .line 74
    iget v10, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 75
    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v5, v10

    .line 76
    iget-boolean v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v11, :cond_53

    .line 77
    iget v7, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_28
    if-ge v6, v7, :cond_e6

    .line 78
    aget-object v11, v4, v6

    .line 79
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v12

    if-nez v12, :cond_33

    goto :goto_50

    .line 80
    :cond_33
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpg-float v14, v12, v9

    if-gtz v14, :cond_50

    cmpg-float v14, v13, v5

    if-gtz v14, :cond_50

    .line 81
    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v12, v14

    cmpl-float v12, v12, v8

    if-ltz v12, :cond_50

    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v13, v12

    cmpl-float v12, v13, v10

    if-ltz v12, :cond_50

    .line 82
    invoke-virtual {v11, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :cond_50
    :goto_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 86
    :cond_53
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 87
    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 88
    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 89
    iget v7, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_5d
    if-ge v6, v7, :cond_9b

    .line 90
    aget-object v13, v4, v6

    .line 91
    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v14

    if-nez v14, :cond_68

    goto :goto_94

    .line 92
    :cond_68
    iget v14, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v15, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpg-float v16, v14, v9

    if-gtz v16, :cond_94

    cmpg-float v16, v15, v5

    if-gtz v16, :cond_94

    move/from16 p2, v5

    .line 93
    iget v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v5, v14

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_96

    iget v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v5, v15

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_96

    add-float v5, v14, v11

    .line 94
    iput v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float v5, v15, v12

    .line 95
    iput v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 96
    invoke-virtual {v13, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 97
    iput v14, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 98
    iput v15, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_96

    :cond_94
    :goto_94
    move/from16 p2, v5

    :cond_96
    :goto_96
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p2

    goto :goto_5d

    .line 101
    :cond_9b
    iput v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 102
    iput v12, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    goto :goto_e6

    .line 106
    :cond_a0
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v5, :cond_b7

    .line 107
    iget v5, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_a6
    if-ge v6, v5, :cond_e6

    .line 108
    aget-object v7, v4, v6

    .line 109
    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v8

    if-nez v8, :cond_b1

    goto :goto_b4

    .line 110
    :cond_b1
    invoke-virtual {v7, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :goto_b4
    add-int/lit8 v6, v6, 0x1

    goto :goto_a6

    .line 114
    :cond_b7
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 115
    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 116
    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 117
    iget v7, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_c1
    if-ge v6, v7, :cond_e2

    .line 118
    aget-object v9, v4, v6

    .line 119
    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v10

    if-nez v10, :cond_cc

    goto :goto_df

    .line 120
    :cond_cc
    iget v10, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v11, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float v12, v10, v5

    .line 121
    iput v12, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float v12, v11, v8

    .line 122
    iput v12, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 123
    invoke-virtual {v9, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 124
    iput v10, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 125
    iput v11, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    :goto_df
    add-int/lit8 v6, v6, 0x1

    goto :goto_c1

    .line 127
    :cond_e2
    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 128
    iput v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 131
    :cond_e6
    :goto_e6
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 3

    .line 137
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 138
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 139
    :cond_e
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 140
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :cond_18
    return-void
.end method

.method protected drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 12

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 149
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 151
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    .line 152
    iget v2, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_f
    if-ge v3, v2, :cond_2b

    .line 153
    aget-object v4, v1, v3

    .line 154
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_28

    .line 155
    :cond_1a
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v5

    if-nez v5, :cond_25

    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v5, :cond_25

    goto :goto_28

    .line 156
    :cond_25
    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 158
    :cond_2b
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    goto :goto_6a

    .line 161
    :cond_2f
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    const/4 v5, 0x0

    .line 162
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 163
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 164
    iget v5, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_3a
    if-ge v3, v5, :cond_66

    .line 165
    aget-object v6, v1, v3

    .line 166
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v7

    if-nez v7, :cond_45

    goto :goto_63

    .line 167
    :cond_45
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v7

    if-nez v7, :cond_50

    instance-of v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v7, :cond_50

    goto :goto_63

    .line 168
    :cond_50
    iget v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v8, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float v9, v7, v2

    .line 169
    iput v9, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float v9, v8, v4

    .line 170
    iput v9, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 171
    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 172
    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 173
    iput v8, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 175
    :cond_66
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 176
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 178
    :goto_6a
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 365
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_22

    .line 366
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 367
    :cond_22
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_24
    if-ge v2, v1, :cond_3c

    .line 368
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 369
    instance-of v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v4, :cond_39

    .line 370
    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    if-eqz v3, :cond_39

    return-object v3

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChild(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p1
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getCullingArea()Lcom/badlogic/gdx/math/Rectangle;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 10

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    .line 242
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_c

    return-object v0

    .line 243
    :cond_c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isVisible()Z

    move-result v1

    if-nez v1, :cond_13

    return-object v0

    .line 244
    :cond_13
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 245
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 246
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_21
    if-ltz v2, :cond_3a

    .line 247
    aget-object v3, v1, v2

    .line 248
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 249
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    if-eqz v3, :cond_37

    return-object v3

    :cond_37
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 252
    :cond_3a
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public isTransform()Z
    .registers 2

    .line 426
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return v0
.end method

.method public localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 5

    .line 432
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_d

    if-eq v0, p0, :cond_9

    .line 435
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 437
    :cond_9
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p2

    .line 433
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child is not a descendant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 3

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p1

    return p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    if-eqz p2, :cond_16

    .line 333
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 334
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_16
    const/4 p2, 0x0

    .line 336
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 337
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 338
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return v1
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public setDebug(ZZ)V
    .registers 6

    .line 443
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(Z)V

    if-eqz p2, :cond_25

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 446
    instance-of v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_21

    .line 447
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    goto :goto_b

    .line 449
    :cond_21
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    goto :goto_b

    :cond_25
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .registers 6

    .line 378
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 380
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    .line 381
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method

.method public setTransform(Z)V
    .registers 2

    .line 422
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return-void
.end method

.method public swapActor(II)Z
    .registers 5

    .line 386
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v1, 0x0

    if-ltz p1, :cond_16

    if-lt p1, v0, :cond_a

    goto :goto_16

    :cond_a
    if-ltz p2, :cond_16

    if-lt p2, v0, :cond_f

    goto :goto_16

    .line 389
    :cond_f
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    const/4 p1, 0x1

    return p1

    :cond_16
    :goto_16
    return v1
.end method

.method public swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 5

    .line 395
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_19

    if-ne p2, v0, :cond_13

    goto :goto_19

    .line 398
    :cond_13
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    return v1

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 464
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toString(Ljava/lang/StringBuilder;I)V

    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/StringBuilder;I)V
    .registers 10

    .line 470
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 474
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v2, :cond_3e

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, p2, :cond_27

    const-string v6, "|  "

    .line 476
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 477
    :cond_27
    aget-object v5, v1, v4

    .line 478
    instance-of v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v6, :cond_35

    .line 479
    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_3b

    .line 481
    :cond_35
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 485
    :cond_3e
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method
