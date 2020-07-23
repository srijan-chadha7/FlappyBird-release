.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "RenderableShapeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;
    }
.end annotation


# static fields
.field private static final FLOAT_BYTES:I = 0x4

.field private static indices:[S

.field private static final renderables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field private static final renderablesPool:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

.field private static vertices:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderables:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/Renderable;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 98
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v4, 0x1

    .line 102
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 103
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v4, v4, 0x4

    goto :goto_1b

    :cond_1a
    const/4 v4, -0x1

    :goto_1b
    const/16 v5, 0x8

    .line 107
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    if-eqz v7, :cond_2c

    .line 108
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v5, v5, 0x4

    goto :goto_2d

    :cond_2c
    const/4 v5, -0x1

    :goto_2d
    const/16 v7, 0x80

    .line 112
    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    if-eqz v8, :cond_3e

    .line 113
    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v7, v7, 0x4

    goto :goto_3f

    :cond_3e
    const/4 v7, -0x1

    :goto_3f
    const/16 v8, 0x100

    .line 117
    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v9

    if-eqz v9, :cond_50

    .line 118
    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v8, v8, 0x4

    goto :goto_51

    :cond_50
    const/4 v8, -0x1

    .line 120
    :goto_51
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v9

    div-int/lit8 v9, v9, 0x4

    .line 124
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v10

    const/4 v11, 0x0

    if-lez v10, :cond_7c

    .line 126
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v10

    invoke-static {v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->ensureIndicesCapacity(I)V

    .line 127
    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget-object v12, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    invoke-virtual {v3, v10, v12, v13, v11}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    .line 129
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->minVerticeInIndices()S

    move-result v10

    .line 130
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->maxVerticeInIndices()S

    move-result v12

    sub-int/2addr v12, v10

    goto :goto_84

    .line 135
    :cond_7c
    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 136
    iget-object v12, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    :goto_84
    mul-int v13, v12, v9

    .line 139
    invoke-static {v13}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->ensureVerticesCapacity(I)V

    mul-int v14, v10, v9

    .line 140
    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    invoke-virtual {v3, v14, v13, v15, v11}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices(II[FI)[F

    :goto_90
    if-ge v10, v12, :cond_16f

    mul-int v3, v10, v9

    .line 146
    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    add-int v14, v3, v4

    aget v15, v13, v14

    add-int/lit8 v16, v14, 0x1

    aget v6, v13, v16

    add-int/lit8 v14, v14, 0x2

    aget v13, v13, v14

    invoke-virtual {v11, v15, v6, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    const/4 v6, -0x1

    if-eq v5, v6, :cond_cf

    .line 150
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    add-int v13, v3, v5

    aget v14, v11, v13

    add-int/lit8 v15, v13, 0x1

    aget v15, v11, v15

    add-int/lit8 v13, v13, 0x2

    aget v11, v11, v13

    invoke-virtual {v6, v14, v15, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 151
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v6, -0x1

    :cond_cf
    if-eq v7, v6, :cond_f6

    .line 155
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    add-int v13, v3, v7

    aget v14, v11, v13

    add-int/lit8 v15, v13, 0x1

    aget v15, v11, v15

    add-int/lit8 v13, v13, 0x2

    aget v11, v11, v13

    invoke-virtual {v6, v14, v15, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 156
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV4:Lcom/badlogic/gdx/math/Vector3;

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v6, -0x1

    :cond_f6
    if-eq v8, v6, :cond_11b

    .line 160
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV5:Lcom/badlogic/gdx/math/Vector3;

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    add-int/2addr v3, v8

    aget v13, v11, v3

    add-int/lit8 v14, v3, 0x1

    aget v14, v11, v14

    add-int/lit8 v3, v3, 0x2

    aget v3, v11, v3

    invoke-virtual {v6, v13, v14, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 161
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV5:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 165
    :cond_11b
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 166
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 167
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV4:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 168
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV6:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v3, -0x1

    if-eq v5, v3, :cond_147

    move-object/from16 v6, p3

    .line 172
    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 173
    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v0, v11, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    goto :goto_149

    :cond_147
    move-object/from16 v6, p3

    :goto_149
    if-eq v7, v3, :cond_158

    move-object/from16 v11, p4

    .line 177
    invoke-interface {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 178
    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV4:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v0, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    goto :goto_15a

    :cond_158
    move-object/from16 v11, p4

    :goto_15a
    if-eq v8, v3, :cond_169

    move-object/from16 v13, p5

    .line 182
    invoke-interface {v0, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 183
    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpV6:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v0, v14, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    goto :goto_16b

    :cond_169
    move-object/from16 v13, p5

    :goto_16b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_90

    :cond_16f
    return-void
.end method

.method public static buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;F)V
    .registers 12

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpColor0:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpColor1:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->tmpColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 66
    invoke-virtual {v0, v2, v1, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    .line 65
    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 13

    .line 79
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderables:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 81
    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 82
    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->buildNormals(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/Renderable;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_d

    .line 85
    :cond_23
    sget-object p0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder$RenderablePool;->flush()V

    .line 86
    sget-object p0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method private static ensureIndicesCapacity(I)V
    .registers 2

    .line 193
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    if-eqz v0, :cond_7

    array-length v0, v0

    if-ge v0, p0, :cond_b

    :cond_7
    new-array p0, p0, [S

    sput-object p0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    :cond_b
    return-void
.end method

.method private static ensureVerticesCapacity(I)V
    .registers 2

    .line 189
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    if-eqz v0, :cond_7

    array-length v0, v0

    if-ge v0, p0, :cond_b

    :cond_7
    new-array p0, p0, [F

    sput-object p0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->vertices:[F

    :cond_b
    return-void
.end method

.method private static maxVerticeInIndices()S
    .registers 4

    const/16 v0, -0x8000

    const/4 v1, 0x0

    .line 205
    :goto_3
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 206
    aget-short v3, v2, v1

    if-le v3, v0, :cond_e

    aget-short v0, v2, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    return v0
.end method

.method private static minVerticeInIndices()S
    .registers 4

    const/16 v0, 0x7fff

    const/4 v1, 0x0

    .line 198
    :goto_3
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/RenderableShapeBuilder;->indices:[S

    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 199
    aget-short v3, v2, v1

    if-ge v3, v0, :cond_e

    aget-short v0, v2, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    return v0
.end method
