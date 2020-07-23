.class public Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
.super Ljava/lang/Object;
.source "MeshBuilder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;


# static fields
.field private static indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

.field private static final tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private static final tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final vTmp:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private biNorOffset:I

.field private final bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field private colOffset:I

.field private colSize:I

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private cpOffset:I

.field private hasColor:Z

.field private hasUVTransform:Z

.field private indices:Lcom/badlogic/gdx/utils/ShortArray;

.field private istart:I

.field private lastIndex:S

.field private norOffset:I

.field private final normalTransform:Lcom/badlogic/gdx/math/Matrix3;

.field private part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

.field private parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field private posOffset:I

.field private posSize:I

.field private final positionTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private primitiveType:I

.field private stride:I

.field private tangentOffset:I

.field private final tempC1:Lcom/badlogic/gdx/graphics/Color;

.field private final tmpNormal:Lcom/badlogic/gdx/math/Vector3;

.field private uOffset:F

.field private uScale:F

.field private uvOffset:I

.field private vOffset:F

.field private vScale:F

.field private final vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private vertex:[F

.field private vertexTransformationEnabled:Z

.field private vertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private vindex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    .line 471
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    .line 758
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    .line 71
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 99
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    .line 101
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    const/4 v1, 0x0

    .line 106
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    .line 107
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    .line 110
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    .line 111
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 112
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 113
    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    const/4 v0, -0x1

    .line 464
    iput-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    .line 536
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method private final addVertex([FI)V
    .registers 9

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 503
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([FII)V

    .line 504
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    int-to-short p1, p1

    iput-short p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    .line 506
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_57

    .line 507
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V

    .line 508
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz p1, :cond_37

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 509
    :cond_37
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->biNorOffset:I

    if-ltz p1, :cond_47

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->biNorOffset:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 510
    :cond_47
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tangentOffset:I

    if-ltz p1, :cond_57

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tangentOffset:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    .line 513
    :cond_57
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v1, v0

    aget p1, p1, v1

    .line 514
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_71

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    aget v1, v1, v4

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    .line 515
    :goto_72
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_81

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v4, v0

    add-int/2addr v4, v5

    aget v2, v2, v4

    .line 516
    :cond_81
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v4, p1, v1, v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 518
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-eqz p1, :cond_101

    .line 519
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz p1, :cond_da

    .line 520
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    aget v2, p1, v1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v2, v2, v4

    aput v2, p1, v1

    .line 521
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    aget v2, p1, v1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v2, v2, v4

    aput v2, p1, v1

    .line 522
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    add-int/2addr v1, v5

    aget v2, p1, v1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v2, v2, v4

    aput v2, p1, v1

    .line 523
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    if-le p1, p2, :cond_101

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    aget p2, p1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float p2, p2, v2

    aput p2, p1, v1

    goto :goto_101

    .line 524
    :cond_da
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-ltz p1, :cond_101

    .line 525
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p2, p2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr v1, v0

    aget p2, p2, v1

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 526
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    aput v1, p1, p2

    .line 530
    :cond_101
    :goto_101
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    if-eqz p1, :cond_13d

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz p1, :cond_13d

    .line 531
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v5, v0

    aget v4, v4, v5

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    aput v1, p1, p2

    .line 532
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr p2, v0

    add-int/2addr p2, v3

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    aget v0, v4, v0

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    aput v1, p1, p2

    :cond_13d
    return-void
.end method

.method public static createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;
    .registers 12

    .line 118
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-wide/16 v1, 0x1

    and-long v3, p0, v1

    const/4 v5, 0x3

    cmp-long v6, v3, v1

    if-nez v6, :cond_19

    .line 120
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x1

    const-string v3, "a_position"

    invoke-direct {v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_19
    const-wide/16 v1, 0x2

    and-long v3, p0, v1

    const-string v6, "a_color"

    const/4 v7, 0x2

    const/4 v8, 0x4

    cmp-long v9, v3, v1

    if-nez v9, :cond_2d

    .line 122
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v1, v7, v8, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2d
    const-wide/16 v1, 0x4

    and-long v3, p0, v1

    cmp-long v9, v3, v1

    if-nez v9, :cond_3d

    .line 124
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v1, v8, v8, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3d
    const-wide/16 v1, 0x8

    and-long v3, p0, v1

    cmp-long v6, v3, v1

    if-nez v6, :cond_51

    .line 126
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v2, 0x8

    const-string v3, "a_normal"

    invoke-direct {v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_51
    const-wide/16 v1, 0x10

    and-long/2addr p0, v1

    cmp-long v3, p0, v1

    if-nez v3, :cond_64

    .line 128
    new-instance p0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 p1, 0x10

    const-string v1, "a_texCoord0"

    invoke-direct {p0, p1, v7, v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 129
    :cond_64
    iget p0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array p0, p0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 p1, 0x0

    .line 130
    :goto_69
    array-length v1, p0

    if-ge p1, v1, :cond_77

    .line 131
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    aput-object v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_69

    .line 132
    :cond_77
    new-instance p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    return-object p1
.end method

.method private endpart()V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-eqz v0, :cond_41

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->halfExtents:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->radius:F

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 198
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    :cond_41
    return-void
.end method

.method private static final transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V
    .registers 9

    const/4 v0, 0x2

    if-le p2, v0, :cond_2d

    .line 489
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, v1

    add-int/lit8 v3, p1, 0x2

    aget v4, p0, v3

    invoke-virtual {p2, v0, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 490
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    .line 491
    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v1

    .line 492
    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p1, p0, v3

    goto :goto_65

    :cond_2d
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_51

    .line 494
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, v2

    invoke-virtual {p2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 495
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    .line 496
    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v2

    goto :goto_65

    .line 498
    :cond_51
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {p2, v1, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    :goto_65
    return-void
.end method

.method private static final transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V
    .registers 9

    const/4 v0, 0x2

    if-le p2, v0, :cond_29

    .line 475
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, v1

    add-int/lit8 v3, p1, 0x2

    aget v4, p0, v3

    invoke-virtual {p2, v0, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 476
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    .line 477
    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v1

    .line 478
    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p1, p0, v3

    goto :goto_59

    :cond_29
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_49

    .line 480
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, v2

    invoke-virtual {p2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 481
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    .line 482
    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v2

    goto :goto_59

    .line 484
    :cond_49
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {p2, v1, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    :goto_59
    return-void
.end method


# virtual methods
.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;)V
    .registers 4

    .line 729
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    return-void
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V
    .registers 6

    .line 740
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    if-gtz p3, :cond_f

    return-void

    .line 744
    :cond_f
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int v0, v0, v1

    .line 745
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 746
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    .line 747
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iput v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 748
    iget-object v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 750
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 751
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 752
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iput p3, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 753
    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    .line 755
    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object p2, p2, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh([F[SII)V

    return-void

    .line 740
    :cond_4a
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Vertex attributes do not match"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V
    .registers 4

    .line 734
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-ne v0, v1, :cond_10

    .line 735
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    return-void

    .line 734
    :cond_10
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Primitive type doesn\'t match"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMesh([F[S)V
    .registers 7

    .line 784
    iget-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 786
    array-length v1, p1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v1, v2

    .line 787
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 788
    :goto_e
    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 789
    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 788
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    add-int/2addr v2, v3

    goto :goto_e

    .line 791
    :cond_18
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 792
    :goto_1c
    array-length p1, p2

    if-ge v1, p1, :cond_29

    .line 793
    aget-short p1, p2, v1

    add-int/2addr p1, v0

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_29
    return-void
.end method

.method public addMesh([F[SII)V
    .registers 9

    .line 762
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    if-nez v0, :cond_c

    .line 763
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    goto :goto_14

    .line 765
    :cond_c
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 766
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntIntMap;->ensureCapacity(I)V

    .line 768
    :goto_14
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 769
    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v0, v1

    if-ge v0, p4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, p4

    .line 770
    :goto_1f
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    const/4 v0, 0x0

    :goto_23
    if-ge v0, p4, :cond_48

    add-int v1, p3, v0

    .line 772
    aget-short v1, p2, v1

    .line 773
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v2

    if-gez v2, :cond_41

    .line 775
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int v2, v2, v1

    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 776
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-short v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    move v2, v3

    :cond_41
    int-to-short v1, v2

    .line 778
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_48
    return-void
.end method

.method public arrow(FFFFFFFFI)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFFFFI)V

    return-void
.end method

.method public begin(J)V
    .registers 3

    .line 139
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(JI)V
    .registers 4

    .line 151
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V
    .registers 3

    const/4 v0, -0x1

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V
    .registers 9

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_bc

    .line 157
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    const/4 v1, -0x1

    .line 162
    iput-short v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    .line 163
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    const/4 v2, 0x0

    .line 164
    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 165
    iget v3, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    const/4 v4, 0x4

    div-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    .line 166
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    if-eqz v3, :cond_2f

    array-length v3, v3

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    if-ge v3, v5, :cond_35

    :cond_2f
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    :cond_35
    const/4 v3, 0x1

    .line 167
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-eqz v3, :cond_b4

    .line 169
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    .line 170
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/16 v3, 0x8

    .line 171
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_4f

    const/4 v3, -0x1

    goto :goto_52

    .line 172
    :cond_4f
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_52
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    const/16 v3, 0x100

    .line 173
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_5e

    const/4 v3, -0x1

    goto :goto_61

    .line 174
    :cond_5e
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_61
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->biNorOffset:I

    const/16 v3, 0x80

    .line 175
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_6d

    const/4 v3, -0x1

    goto :goto_70

    .line 176
    :cond_6d
    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v3, v4

    :goto_70
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tangentOffset:I

    const/4 v3, 0x2

    .line 177
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    if-nez v3, :cond_7b

    const/4 v5, -0x1

    goto :goto_7e

    .line 178
    :cond_7b
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v4

    :goto_7e
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-nez v3, :cond_83

    goto :goto_85

    .line 179
    :cond_83
    iget v0, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    :goto_85
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    .line 180
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-nez v0, :cond_8f

    const/4 v0, -0x1

    goto :goto_92

    .line 181
    :cond_8f
    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v4

    :goto_92
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    const/16 v0, 0x10

    .line 182
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    if-nez p1, :cond_9d

    goto :goto_a1

    .line 183
    :cond_9d
    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, p1, 0x4

    :goto_a1
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    .line 184
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 185
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 186
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 187
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    .line 188
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-void

    .line 168
    :cond_b4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Cannot build mesh without position attribute"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_bc
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Call end() first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public box(FFF)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 843
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFF)V

    return-void
.end method

.method public box(FFFFFF)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFF)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 824
    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 837
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 831
    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BoxShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public capsule(FFI)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1063
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CapsuleShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFI)V

    return-void
.end method

.method public circle(FIFFFFFF)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    invoke-static/range {p0 .. p8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFF)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 885
    invoke-static/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFFFFFF)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 876
    invoke-static/range {p0 .. p14}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFFFFFFFF)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 907
    invoke-static/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 862
    invoke-static {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 869
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .registers 30
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v19, p7

    move/from16 v20, p8

    .line 898
    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v16, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v0

    invoke-virtual/range {v4 .. v20}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    const/4 v1, -0x1

    .line 273
    iput-short v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    .line 274
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-void
.end method

.method public cone(FFFI)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1024
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cone(FFFIFF)V

    return-void
.end method

.method public cone(FFFIFF)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1030
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    return-void
.end method

.method public cylinder(FFFI)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1006
    invoke-static {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFI)V

    return-void
.end method

.method public cylinder(FFFIFF)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1012
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    return-void
.end method

.method public cylinder(FFFIFFZ)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1018
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFFZ)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFF)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 982
    invoke-static/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFFFF)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 990
    invoke-static/range {p0 .. p13}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFFFFFFFFFF)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 999
    invoke-static/range {p0 .. p19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 975
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public ellipse(FFIFFFFFF)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 915
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFF)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 944
    invoke-static/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFF)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 936
    invoke-static/range {p0 .. p15}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFFFF)V
    .registers 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 967
    invoke-static/range {p0 .. p17}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 921
    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 952
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 959
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V

    return-void
.end method

.method public end()Lcom/badlogic/gdx/graphics/Mesh;
    .registers 6

    .line 262
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;
    .registers 6

    .line 236
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_c6

    .line 239
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 240
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const-string v2, " < "

    if-lt v0, v1, :cond_8f

    .line 243
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-lt v0, v1, :cond_6a

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 250
    iput-object p1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_48

    .line 251
    :cond_57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    return-object p1

    .line 244
    :cond_6a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh can\'t hold enough indices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_8f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mesh can\'t hold enough vertices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " * "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_be
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Mesh attributes don\'t match"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_c6
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Call begin() first"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_cf

    :goto_ce
    throw p1

    :goto_cf
    goto :goto_ce
.end method

.method public ensureCapacity(II)V
    .registers 3

    .line 412
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 413
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    return-void
.end method

.method public ensureIndices(I)V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    return-void
.end method

.method public ensureRectangleIndices(I)V
    .registers 4

    .line 442
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_a

    mul-int/lit8 p1, p1, 0x4

    .line 443
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_18

    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    mul-int/lit8 p1, p1, 0x8

    .line 445
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_18

    :cond_13
    mul-int/lit8 p1, p1, 0x6

    .line 448
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    :goto_18
    return-void
.end method

.method public ensureRectangles(I)V
    .registers 3

    mul-int/lit8 v0, p1, 0x4

    .line 460
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 461
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    return-void
.end method

.method public ensureRectangles(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 455
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    return-void
.end method

.method public ensureTriangleIndices(I)V
    .registers 4

    .line 418
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    mul-int/lit8 p1, p1, 0x6

    .line 419
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_1e

    :cond_b
    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    if-nez v0, :cond_11

    goto :goto_19

    .line 423
    :cond_11
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Incorrect primtive type"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    :goto_19
    mul-int/lit8 p1, p1, 0x3

    .line 421
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    :goto_1e
    return-void
.end method

.method public ensureTriangles(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    mul-int/lit8 v0, p1, 0x3

    .line 436
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 437
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    return-void
.end method

.method public ensureTriangles(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 430
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    return-void
.end method

.method public ensureVertices(I)V
    .registers 4

    .line 402
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getFloatsPerVertex()I
    .registers 2

    .line 280
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    return v0
.end method

.method public getIndices([SI)V
    .registers 6

    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_23

    if-ltz p2, :cond_1b

    .line 317
    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_1b

    .line 319
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 318
    :cond_1b
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Array to small or offset out of range"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_23
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Must be called in between #begin and #end"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getIndices()[S
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v0
.end method

.method public getMeshPart()Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object v0
.end method

.method public getNumIndices()I
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    return v0
.end method

.method public getNumVertices()I
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getPrimitiveType()I
    .registers 2

    .line 341
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    return v0
.end method

.method public getVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public getVertices([FI)V
    .registers 6

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_23

    if-ltz p2, :cond_1b

    .line 294
    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_1b

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 295
    :cond_1b
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Array to small or offset out of range"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_23
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Must be called in between #begin and #end"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getVertices()[F
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    return-object v0
.end method

.method public index(S)V
    .registers 3

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SS)V
    .registers 4

    const/4 v0, 0x2

    .line 594
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 595
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 596
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSS)V
    .registers 5

    const/4 v0, 0x3

    .line 601
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 602
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 603
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 604
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSS)V
    .registers 6

    const/4 v0, 0x4

    .line 609
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 611
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 612
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 613
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSSSS)V
    .registers 8

    const/4 v0, 0x6

    .line 618
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 620
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 621
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 622
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 623
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 624
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSSSSSS)V
    .registers 10

    const/16 v0, 0x8

    .line 630
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 632
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 633
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 634
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 635
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 636
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 637
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p7}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 638
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p8}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public isVertexTransformationEnabled()Z
    .registers 2

    .line 392
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    return v0
.end method

.method public lastIndex()S
    .registers 2

    .line 468
    iget-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    return v0
.end method

.method public line(FFFFFF)V
    .registers 9

    .line 660
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p2, p4, p5, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .registers 4

    const/4 v0, 0x2

    .line 649
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 650
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(SS)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 7

    .line 665
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 5

    .line 655
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(SS)V
    .registers 5

    .line 643
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 644
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SS)V

    return-void

    .line 643
    :cond_9
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public part(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .registers 4

    .line 208
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_23

    .line 218
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    .line 220
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 221
    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object p1, p3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 222
    iput p2, p3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    .line 223
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 225
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 229
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object p1

    .line 217
    :cond_23
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Call begin() first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(FFFFFFFFFFFFFFFII)V
    .registers 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 817
    invoke-static/range {p0 .. p17}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFFFFFFFFFFFII)V

    return-void
.end method

.method public patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 803
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V

    return-void
.end method

.method public patch(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    invoke-static/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/PatchShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V

    return-void
.end method

.method public rect(FFFFFFFFFFFFFFF)V
    .registers 29

    move-object v0, p0

    move/from16 v1, p13

    move/from16 v2, p14

    move/from16 v3, p15

    .line 721
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    invoke-virtual {v4, p1, p2, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 722
    invoke-virtual {v8, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v6, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 723
    invoke-virtual {v9, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 724
    invoke-virtual {v9, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-virtual {v5, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    .line 721
    invoke-virtual {p0, v4, v8, v6, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .registers 6

    const/4 v0, 0x4

    .line 708
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 709
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p3

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    return-void
.end method

.method public rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 10

    .line 714
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v3, p2, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .line 715
    invoke-virtual {v3, p3, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p3, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p4, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p4

    invoke-virtual {p4, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p4

    .line 714
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public rect(SSSS)V
    .registers 14

    .line 696
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    move v6, p1

    .line 697
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_25

    :cond_10
    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p4

    move v7, p4

    move v8, p1

    .line 699
    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSSSS)V

    goto :goto_25

    :cond_20
    if-nez v0, :cond_26

    .line 701
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSS)V

    :goto_25
    return-void

    .line 703
    :cond_26
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColor(FFFF)V
    .registers 6

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 347
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-nez v1, :cond_d

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_d
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setUVRange(FFFF)V
    .registers 6

    .line 357
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    .line 358
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    sub-float v0, p3, p1

    .line 359
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    sub-float v0, p4, p2

    .line 360
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    .line 361
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    if-eqz p1, :cond_29

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p3, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-static {p4, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x1

    :goto_2a
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    return-void
.end method

.method public setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 366
    :goto_5
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    if-nez v0, :cond_15

    const/4 p1, 0x0

    .line 367
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 368
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    goto :goto_28

    .line 370
    :cond_15
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(FFFF)V

    :goto_28
    return-void
.end method

.method public setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 380
    :goto_5
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    .line 381
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    if-eqz v0, :cond_1e

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->inv()Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->transpose()Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_28

    .line 385
    :cond_1e
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 386
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    :goto_28
    return-void
.end method

.method public setVertexTransformationEnabled(Z)V
    .registers 2

    .line 397
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    return-void
.end method

.method public sphere(FFFII)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1036
    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFII)V

    return-void
.end method

.method public sphere(FFFIIFFFF)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1049
    invoke-static/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V

    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFII)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1042
    invoke-static/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFII)V

    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1056
    invoke-static/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .registers 5

    const/4 v0, 0x3

    .line 680
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    .line 681
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 9

    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p3, p5, v1, p6, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .registers 6

    .line 686
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p3, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public triangle(SSS)V
    .registers 11

    .line 670
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1e

    if-nez v0, :cond_8

    goto :goto_1e

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p1

    .line 673
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_21

    .line 675
    :cond_16
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 671
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSS)V

    :goto_21
    return-void
.end method

.method public vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S
    .registers 7

    .line 583
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-eqz v2, :cond_10

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_11

    :cond_10
    move-object v2, v1

    :goto_11
    iget-boolean v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-eqz v3, :cond_18

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_18
    move-object v3, v1

    :goto_19
    iget-boolean v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-eqz v4, :cond_1f

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    :cond_1f
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S

    move-result p1

    return p1
.end method

.method public vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S
    .registers 10

    .line 540
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:I

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_b5

    .line 542
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 543
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, v0, v2

    .line 544
    :cond_1c
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_2a

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v3, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, v0, v3

    .line 546
    :cond_2a
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz v0, :cond_54

    if-nez p2, :cond_3a

    .line 547
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    .line 548
    :cond_3a
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v0

    .line 549
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v0, v1

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, p1, v0

    .line 550
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p2, p1, v0

    .line 553
    :cond_54
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz p1, :cond_85

    if-nez p3, :cond_5c

    .line 554
    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 555
    :cond_5c
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v0, p1, p2

    .line 556
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr p2, v1

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v0, p1, p2

    .line 557
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr p2, v2

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v0, p1, p2

    .line 558
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    const/4 p2, 0x3

    if-le p1, p2, :cond_97

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v0, p2

    iget p2, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput p2, p1, v0

    goto :goto_97

    .line 559
    :cond_85
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-lez p1, :cond_97

    if-nez p3, :cond_8d

    .line 560
    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 561
    :cond_8d
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p3

    aput p3, p1, p2

    :cond_97
    :goto_97
    if-eqz p4, :cond_ac

    .line 564
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz p1, :cond_ac

    .line 565
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput p3, p2, p1

    .line 566
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr p2, v1

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput p3, p1, p2

    .line 569
    :cond_ac
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 570
    iget-short p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    return p1

    .line 540
    :cond_b5
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Too many vertices used"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs vertex([F)S
    .registers 5

    .line 575
    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_5
    if-gt v1, v0, :cond_e

    .line 577
    invoke-direct {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    .line 576
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    add-int/2addr v1, v2

    goto :goto_5

    .line 578
    :cond_e
    iget-short p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    return p1
.end method
