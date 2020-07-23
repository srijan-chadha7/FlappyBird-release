.class public Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;
.super Lcom/badlogic/gdx/assets/loaders/ModelLoader;
.source "G3dModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader<",
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static final VERSION_HI:S = 0x0s

.field public static final VERSION_LO:S = 0x1s


# instance fields
.field protected final reader:Lcom/badlogic/gdx/utils/BaseJsonReader;

.field protected final tempQ:Lcom/badlogic/gdx/math/Quaternion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/BaseJsonReader;)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .registers 3

    .line 55
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 288
    new-instance p2, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {p2}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->tempQ:Lcom/badlogic/gdx/math/Quaternion;

    .line 56
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->reader:Lcom/badlogic/gdx/utils/BaseJsonReader;

    return-void
.end method


# virtual methods
.method public loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .registers 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseModel(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object p1

    return-object p1
.end method

.method protected parseAnimations(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "animations"

    move-object/from16 v2, p2

    .line 371
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 374
    :cond_d
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->animations:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 376
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_16
    if-eqz v1, :cond_24c

    const-string v2, "bones"

    .line 377
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    if-nez v2, :cond_22

    goto/16 :goto_246

    .line 379
    :cond_22
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;-><init>()V

    .line 380
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 381
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    iget v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    const-string v4, "id"

    .line 382
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->id:Ljava/lang/String;

    .line 383
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_3d
    if-eqz v2, :cond_246

    .line 384
    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;-><init>()V

    .line 385
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v5, "boneId"

    .line 386
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->nodeId:Ljava/lang/String;

    const-string v5, "keyframes"

    .line 389
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    const-string v7, "rotation"

    const-string v8, "translation"

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v10, 0x0

    const-string v11, "keytime"

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x3

    if-eqz v5, :cond_12c

    .line 390
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v16

    if-eqz v16, :cond_12c

    .line 391
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_6e
    if-eqz v5, :cond_240

    .line 392
    invoke-virtual {v5, v11, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v16

    div-float v10, v16, v9

    .line 393
    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v9

    if-eqz v9, :cond_aa

    .line 394
    iget v6, v9, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-ne v6, v15, :cond_aa

    .line 395
    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-nez v6, :cond_8b

    .line 396
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 397
    :cond_8b
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 398
    iput v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 399
    new-instance v15, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v0

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v14

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v9

    invoke-direct {v15, v0, v14, v9}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v15, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 400
    iget-object v0, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 402
    :cond_aa
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 403
    iget v6, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v9, 0x4

    if-ne v6, v9, :cond_e5

    .line 404
    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-nez v6, :cond_c0

    .line 405
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 406
    :cond_c0
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 407
    iput v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 408
    new-instance v9, Lcom/badlogic/gdx/math/Quaternion;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v15

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v14

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v0

    invoke-direct {v9, v15, v14, v13, v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    iput-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 409
    iget-object v0, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_e5
    const-string v0, "scale"

    .line 411
    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_11f

    .line 412
    iget v6, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_11f

    .line 413
    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-nez v6, :cond_fd

    .line 414
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 415
    :cond_fd
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 416
    iput v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 417
    new-instance v9, Lcom/badlogic/gdx/math/Vector3;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v0

    invoke-direct {v9, v12, v13, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 418
    iget-object v0, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 391
    :cond_11f
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v0, p1

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x3

    goto/16 :goto_6e

    .line 422
    :cond_12c
    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const-string v5, "value"

    if-eqz v0, :cond_184

    .line 423
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v6

    if-eqz v6, :cond_184

    .line 424
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 425
    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v8, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 426
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_14a
    if-eqz v0, :cond_184

    .line 427
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 428
    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v8, 0x0

    .line 429
    invoke-virtual {v0, v11, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v9

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v9, v8

    iput v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 430
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v8

    if-eqz v8, :cond_181

    .line 431
    iget v9, v8, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_181

    .line 432
    new-instance v9, Lcom/badlogic/gdx/math/Vector3;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v8

    invoke-direct {v9, v12, v13, v8}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 426
    :cond_181
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_14a

    .line 437
    :cond_184
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_1e1

    .line 438
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1e1

    .line 439
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 440
    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v7, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 441
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1a0
    if-eqz v0, :cond_1e1

    .line 442
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 443
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v7, 0x0

    .line 444
    invoke-virtual {v0, v11, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v8

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v8, v7

    iput v8, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 445
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    if-eqz v7, :cond_1dd

    .line 446
    iget v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v9, 0x4

    if-lt v8, v9, :cond_1de

    .line 447
    new-instance v8, Lcom/badlogic/gdx/math/Quaternion;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v14

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v7

    invoke-direct {v8, v12, v13, v14, v7}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    iput-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    goto :goto_1de

    :cond_1dd
    const/4 v9, 0x4

    .line 441
    :cond_1de
    :goto_1de
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1a0

    :cond_1e1
    const-string v0, "scaling"

    .line 451
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_240

    .line 452
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v6

    if-eqz v6, :cond_240

    .line 453
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 454
    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v7, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 455
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1ff
    if-eqz v0, :cond_240

    .line 456
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 457
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v7, 0x0

    .line 458
    invoke-virtual {v0, v11, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    iput v8, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 459
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v8

    if-eqz v8, :cond_239

    .line 460
    iget v10, v8, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v12, 0x3

    if-lt v10, v12, :cond_237

    .line 461
    new-instance v10, Lcom/badlogic/gdx/math/Vector3;

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v7

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v8

    invoke-direct {v10, v14, v7, v8}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    goto :goto_23d

    :cond_237
    const/4 v9, 0x2

    goto :goto_23b

    :cond_239
    const/4 v9, 0x2

    const/4 v12, 0x3

    :goto_23b
    const/4 v13, 0x0

    const/4 v15, 0x1

    .line 455
    :goto_23d
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1ff

    .line 383
    :cond_240
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v0, p1

    goto/16 :goto_3d

    .line 376
    :cond_246
    :goto_246
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v0, p1

    goto/16 :goto_16

    :cond_24c
    return-void
.end method

.method protected parseAttributes(Lcom/badlogic/gdx/utils/JsonValue;)[Lcom/badlogic/gdx/graphics/VertexAttribute;
    .registers 7

    .line 144
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 147
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-eqz p1, :cond_b5

    .line 148
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POSITION"

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 151
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Position()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_95

    :cond_20
    const-string v4, "NORMAL"

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 153
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Normal()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_95

    :cond_30
    const-string v4, "COLOR"

    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 155
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->ColorUnpacked()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_95

    :cond_40
    const-string v4, "COLORPACKED"

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 157
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->ColorPacked()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_95

    :cond_50
    const-string v4, "TANGENT"

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 159
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Tangent()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_95

    :cond_60
    const-string v4, "BINORMAL"

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 161
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Binormal()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_95

    :cond_70
    const-string v4, "TEXCOORD"

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    add-int/lit8 v3, v1, 0x1

    .line 163
    invoke-static {v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;->TexCoords(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_95

    :cond_83
    const-string v4, "BLENDWEIGHT"

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    add-int/lit8 v3, v2, 0x1

    .line 165
    invoke-static {v2}, Lcom/badlogic/gdx/graphics/VertexAttribute;->BoneWeight(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v3

    .line 147
    :goto_95
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_9

    .line 167
    :cond_99
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown vertex attribute \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', should be one of position, normal, uv, tangent or binormal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_b5
    const-class p1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    return-object p1
.end method

.method protected parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;
    .registers 6

    .line 261
    iget v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1c

    .line 262
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0

    .line 264
    :cond_1c
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Expected Color values <> than three."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseMaterials(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;)V
    .registers 15

    const-string v0, "materials"

    .line 175
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p2

    if-nez p2, :cond_a

    goto/16 :goto_125

    .line 179
    :cond_a
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v1, p2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 180
    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_13
    if-eqz p2, :cond_125

    .line 181
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    const-string v1, "id"

    const/4 v2, 0x0

    .line 183
    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11d

    .line 186
    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    const-string v3, "diffuse"

    .line 189
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 190
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    :cond_33
    const-string v3, "ambient"

    .line 191
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 192
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    :cond_41
    const-string v3, "emissive"

    .line 193
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 194
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->emissive:Lcom/badlogic/gdx/graphics/Color;

    :cond_4f
    const-string v3, "specular"

    .line 195
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 196
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    :cond_5d
    const-string v3, "reflection"

    .line 197
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 198
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->reflection:Lcom/badlogic/gdx/graphics/Color;

    :cond_6b
    const/4 v3, 0x0

    const-string v4, "shininess"

    .line 200
    invoke-virtual {p2, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "opacity"

    .line 202
    invoke-virtual {p2, v5, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    const-string v5, "textures"

    .line 205
    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    if-eqz v5, :cond_114

    .line 207
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_88
    if-eqz v5, :cond_114

    .line 208
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    .line 210
    invoke-virtual {v5, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10c

    .line 212
    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->id:Ljava/lang/String;

    const-string v7, "filename"

    .line 214
    invoke-virtual {v5, v7, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_104

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "/"

    if-eqz v9, :cond_b5

    invoke-virtual {p3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b7

    :cond_b5
    const-string v10, ""

    :cond_b7
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    const-string v7, "uvTranslation"

    .line 219
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->readVector2(Lcom/badlogic/gdx/utils/JsonValue;FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    const-string v7, "uvScaling"

    .line 220
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    invoke-virtual {p0, v7, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->readVector2(Lcom/badlogic/gdx/utils/JsonValue;FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    const-string v7, "type"

    .line 222
    invoke-virtual {v5, v7, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_fc

    .line 225
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseTextureUsage(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    .line 227
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-nez v7, :cond_f4

    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 228
    :cond_f4
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 207
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_88

    .line 223
    :cond_fc
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Texture needs type."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_104
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Texture needs filename."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_10c
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Texture has no id."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_114
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 180
    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_13

    .line 184
    :cond_11d
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Material needs an id."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_125
    :goto_125
    return-void
.end method

.method protected parseMeshes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 12

    const-string v0, "meshes"

    .line 82
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p2

    if-eqz p2, :cond_e3

    .line 85
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 86
    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_11
    if-eqz p2, :cond_e3

    .line 87
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;-><init>()V

    const-string v1, "id"

    const-string v2, ""

    .line 89
    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->id:Ljava/lang/String;

    const-string v2, "attributes"

    .line 92
    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 93
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseAttributes(Lcom/badlogic/gdx/utils/JsonValue;)[Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v2, "vertices"

    .line 94
    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asFloatArray()[F

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    const-string v2, "parts"

    .line 96
    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 97
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 98
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_47
    if-eqz v2, :cond_d0

    .line 99
    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;-><init>()V

    const/4 v5, 0x0

    .line 100
    invoke-virtual {v2, v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c8

    .line 104
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_59
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    .line 105
    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6e

    goto :goto_59

    .line 106
    :cond_6e
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mesh part with id \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' already in defined"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_8a
    iput-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    const-string v7, "type"

    .line 111
    invoke-virtual {v2, v7, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_ac

    .line 115
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseType(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->primitiveType:I

    const-string v5, "indices"

    .line 117
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->asShortArray()[S

    move-result-object v5

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    .line 118
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 98
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_47

    .line 113
    :cond_ac
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No primitive type given for mesh part \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_c8
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Not id given for mesh part"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_d0
    const-class v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    .line 121
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 86
    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_11

    :cond_e3
    return-void
.end method

.method public parseModel(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .registers 8

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->reader:Lcom/badlogic/gdx/utils/BaseJsonReader;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/utils/BaseJsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;-><init>()V

    const-string v2, "version"

    .line 67
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 68
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getShort(I)S

    move-result v5

    aput-short v5, v3, v4

    .line 69
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getShort(I)S

    move-result v2

    aput-short v2, v3, v5

    .line 70
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    aget-short v2, v2, v4

    if-nez v2, :cond_4e

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    aget-short v2, v2, v5

    if-ne v2, v5, :cond_4e

    const-string v2, "id"

    const-string v3, ""

    .line 73
    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->id:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseMeshes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 75
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseMaterials(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseNodes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/Array;

    .line 77
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseAnimations(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v1

    .line 71
    :cond_4e
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Model version not supported"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseNodes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/Array;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;",
            ">;"
        }
    .end annotation

    const-string v0, "nodes"

    .line 277
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p2

    if-eqz p2, :cond_1f

    .line 279
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 280
    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_11
    if-eqz p2, :cond_1f

    .line 281
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseNodesRecursively(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 280
    iget-object p2, p2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_11

    .line 285
    :cond_1f
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    return-object p1
.end method

.method protected parseNodesRecursively(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 291
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;-><init>()V

    const/4 v3, 0x0

    const-string v4, "id"

    .line 293
    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e2

    .line 295
    iput-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->id:Ljava/lang/String;

    const-string v5, "translation"

    .line 297
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    const/4 v7, 0x3

    if-eqz v6, :cond_2a

    .line 298
    iget v8, v6, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-ne v8, v7, :cond_22

    goto :goto_2a

    :cond_22
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Node translation incomplete"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    :goto_2a
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_31

    move-object v11, v3

    goto :goto_42

    .line 299
    :cond_31
    new-instance v11, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v13

    .line 300
    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v6

    invoke-direct {v11, v12, v13, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    :goto_42
    iput-object v11, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    const-string v6, "rotation"

    .line 302
    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v11

    const/4 v12, 0x4

    if-eqz v11, :cond_5a

    .line 303
    iget v13, v11, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-ne v13, v12, :cond_52

    goto :goto_5a

    :cond_52
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Node rotation incomplete"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    :goto_5a
    if-nez v11, :cond_5e

    move-object v13, v3

    goto :goto_73

    .line 304
    :cond_5e
    new-instance v13, Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v14

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v15

    .line 305
    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    invoke-virtual {v11, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v11

    invoke-direct {v13, v14, v15, v12, v11}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    :goto_73
    iput-object v13, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    const-string v11, "scale"

    .line 307
    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    if-eqz v12, :cond_8a

    .line 308
    iget v13, v12, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-ne v13, v7, :cond_82

    goto :goto_8a

    :cond_82
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Node scale incomplete"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8a
    :goto_8a
    if-nez v12, :cond_8e

    move-object v13, v3

    goto :goto_9f

    .line 309
    :cond_8e
    new-instance v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v14

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v15

    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v12

    invoke-direct {v13, v14, v15, v12}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    :goto_9f
    iput-object v13, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    const-string v12, "mesh"

    .line 311
    invoke-virtual {v1, v12, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_ab

    .line 312
    iput-object v12, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->meshId:Ljava/lang/String;

    :cond_ab
    const-string v12, "parts"

    .line 314
    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    if-eqz v12, :cond_1bd

    .line 316
    iget v13, v12, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v13, v13, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    iput-object v13, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    .line 318
    iget-object v12, v12, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v13, 0x0

    :goto_bc
    if-eqz v12, :cond_1bd

    .line 319
    new-instance v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    invoke-direct {v14}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;-><init>()V

    const-string v15, "meshpartid"

    .line 321
    invoke-virtual {v12, v15, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v8, "materialid"

    .line 322
    invoke-virtual {v12, v8, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v15, :cond_1a1

    if-eqz v8, :cond_1a1

    .line 326
    iput-object v8, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    .line 327
    iput-object v15, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    const-string v8, "bones"

    .line 329
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v8

    if-eqz v8, :cond_185

    .line 331
    new-instance v15, Lcom/badlogic/gdx/utils/ArrayMap;

    iget v9, v8, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const-class v7, Ljava/lang/String;

    const-class v3, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v15, v10, v9, v7, v3}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    iput-object v15, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 333
    iget-object v3, v8, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_ee
    if-eqz v3, :cond_185

    const-string v7, "node"

    const/4 v8, 0x0

    .line 334
    invoke-virtual {v3, v7, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17d

    .line 337
    new-instance v9, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v9}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 339
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v15

    if-eqz v15, :cond_11e

    .line 340
    iget v8, v15, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v10, 0x3

    if-lt v8, v10, :cond_11e

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v10

    move-object/from16 v16, v5

    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v5

    const/4 v8, 0x2

    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v15

    invoke-virtual {v9, v10, v5, v15}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_120

    :cond_11e
    move-object/from16 v16, v5

    .line 342
    :goto_120
    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    if-eqz v5, :cond_14b

    .line 343
    iget v8, v5, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v10, 0x4

    if-lt v8, v10, :cond_14b

    .line 344
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->tempQ:Lcom/badlogic/gdx/math/Quaternion;

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v10

    move-object/from16 v17, v6

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v6

    const/4 v15, 0x2

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v0

    const/4 v15, 0x3

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v5

    invoke-virtual {v8, v10, v6, v0, v5}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_14e

    :cond_14b
    move-object/from16 v17, v6

    const/4 v15, 0x3

    .line 346
    :goto_14e
    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_16b

    .line 347
    iget v5, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lt v5, v15, :cond_16b

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v10

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v0

    invoke-virtual {v9, v5, v10, v0}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_16d

    :cond_16b
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 349
    :goto_16d
    iget-object v0, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v0, v7, v9}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 333
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const/4 v10, 0x1

    goto/16 :goto_ee

    .line 335
    :cond_17d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Bone node ID missing"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_185
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v15, 0x3

    .line 353
    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    aput-object v14, v0, v13

    .line 318
    iget-object v12, v12, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v0, 0x1

    add-int/2addr v13, v0

    move-object/from16 v0, p0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_bc

    .line 324
    :cond_1a1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " part is missing meshPartId or materialId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1bd
    const/4 v8, 0x0

    const-string v0, "children"

    .line 357
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_1df

    .line 359
    iget v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    iput-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .line 362
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1ce
    if-eqz v0, :cond_1df

    .line 363
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseNodesRecursively(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-result-object v4

    aput-object v4, v1, v8

    .line 362
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x1

    add-int/2addr v8, v1

    goto :goto_1ce

    :cond_1df
    move-object/from16 v3, p0

    return-object v2

    :cond_1e2
    move-object v3, v0

    .line 294
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Node id missing."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1ec

    :goto_1eb
    throw v0

    :goto_1ec
    goto :goto_1eb
.end method

.method protected parseTextureUsage(Ljava/lang/String;)I
    .registers 3

    const-string v0, "AMBIENT"

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x4

    return p1

    :cond_a
    const-string v0, "BUMP"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 p1, 0x8

    return p1

    :cond_15
    const-string v0, "DIFFUSE"

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, 0x2

    return p1

    :cond_1f
    const-string v0, "EMISSIVE"

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 p1, 0x3

    return p1

    :cond_29
    const-string v0, "NONE"

    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    const-string v0, "NORMAL"

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 p1, 0x7

    return p1

    :cond_3d
    const-string v0, "REFLECTION"

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 p1, 0xa

    return p1

    :cond_48
    const-string v0, "SHININESS"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 p1, 0x6

    return p1

    :cond_52
    const-string v0, "SPECULAR"

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 p1, 0x5

    return p1

    :cond_5c
    const-string v0, "TRANSPARENCY"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_67

    const/16 p1, 0x9

    return p1

    :cond_67
    const/4 p1, 0x0

    return p1
.end method

.method protected parseType(Ljava/lang/String;)I
    .registers 5

    const-string v0, "TRIANGLES"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x4

    return p1

    :cond_a
    const-string v0, "LINES"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const-string v0, "POINTS"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x0

    return p1

    :cond_1e
    const-string v0, "TRIANGLE_STRIP"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 p1, 0x5

    return p1

    :cond_28
    const-string v0, "LINE_STRIP"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p1, 0x3

    return p1

    .line 138
    :cond_32
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown primitive type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', should be one of triangle, trianglestrip, line, linestrip, lineloop or point"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readVector2(Lcom/badlogic/gdx/utils/JsonValue;FF)Lcom/badlogic/gdx/math/Vector2;
    .registers 5

    if-nez p1, :cond_8

    .line 269
    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object p1

    .line 270
    :cond_8
    iget p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1d

    .line 271
    new-instance p2, Lcom/badlogic/gdx/math/Vector2;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object p2

    .line 273
    :cond_1d
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Expected Vector2 values <> than two."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
