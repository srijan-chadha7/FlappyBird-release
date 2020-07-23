.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    }
.end annotation


# static fields
.field public static backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field static final cellPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private static columnWeightedWidth:[F

.field public static debugActorColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugCellColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugTableColor:Lcom/badlogic/gdx/graphics/Color;

.field private static rowWeightedHeight:[F


# instance fields
.field align:I

.field background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private final cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private final cells:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private clip:Z

.field private final columnDefaults:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private columnMinWidth:[F

.field private columnPrefWidth:[F

.field private columnWidth:[F

.field private columns:I

.field debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field debugRects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;",
            ">;"
        }
    .end annotation
.end field

.field private expandHeight:[F

.field private expandWidth:[F

.field private implicitEndRow:Z

.field padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field round:Z

.field private rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private rowHeight:[F

.field private rowMinHeight:[F

.field private rowPrefHeight:[F

.field private rows:I

.field private sizeInvalid:Z

.field private skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private tableMinHeight:F

.field private tableMinWidth:F

.field private tablePrefHeight:F

.field private tablePrefWidth:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v1, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    .line 1276
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1285
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1294
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1303
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 68
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 69
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 71
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 77
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 88
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 91
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method

.method private addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .registers 7

    .line 1206
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_b

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    .line 1207
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1208
    iput-object p5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 1209
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result p5

    sub-float/2addr p5, p2

    sub-float/2addr p5, p4

    invoke-virtual {v0, p1, p5, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 1210
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private clearDebugRects()V
    .registers 3

    .line 1200
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_5

    return-void

    .line 1201
    :cond_5
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 1202
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method private computeSize()V
    .registers 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 794
    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 796
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 797
    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-lez v3, :cond_1b

    .line 800
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-nez v5, :cond_1b

    .line 801
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 802
    iput-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 805
    :cond_1b
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 806
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    invoke-direct {v0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v7

    iput-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    .line 807
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    invoke-direct {v0, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v8

    iput-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    .line 808
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    invoke-direct {v0, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v9

    iput-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    .line 809
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    invoke-direct {v0, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v10

    iput-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    .line 810
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    invoke-direct {v0, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    .line 811
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    invoke-direct {v0, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    .line 812
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    invoke-direct {v0, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    .line 813
    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    invoke-direct {v0, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v12

    iput-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_61
    if-ge v14, v3, :cond_1b4

    .line 817
    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 818
    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget v13, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v18, v3

    .line 819
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move/from16 v19, v14

    .line 822
    iget-object v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_94

    aget v14, v12, v13

    const/16 v17, 0x0

    cmpl-float v14, v14, v17

    if-nez v14, :cond_94

    iget-object v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    :cond_94
    const/4 v14, 0x1

    if-ne v0, v14, :cond_b0

    .line 823
    iget-object v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_b0

    aget v14, v11, v4

    const/16 v17, 0x0

    cmpl-float v14, v14, v17

    if-nez v14, :cond_b0

    iget-object v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    aput v14, v11, v4

    .line 827
    :cond_b0
    iget-object v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v14

    if-nez v4, :cond_bc

    move-object/from16 v20, v12

    const/4 v12, 0x0

    goto :goto_ca

    :cond_bc
    move-object/from16 v20, v12

    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    sub-float/2addr v12, v15

    const/4 v15, 0x0

    invoke-static {v15, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    :goto_ca
    add-float/2addr v14, v12

    iput v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    .line 828
    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    iput v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    .line 829
    iget v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    const/4 v14, -0x1

    if-eq v12, v14, :cond_f9

    .line 830
    iget v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 831
    iget v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget-object v15, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    iget-object v12, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    sub-float/2addr v15, v12

    const/4 v12, 0x0

    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    add-float/2addr v14, v15

    iput v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    .line 833
    :cond_f9
    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    .line 834
    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    add-int v14, v4, v0

    if-ne v14, v5, :cond_10b

    const/4 v14, 0x0

    goto :goto_10c

    :cond_10b
    move v14, v15

    :goto_10c
    add-float/2addr v12, v14

    iput v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    .line 835
    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    add-int/lit8 v14, v6, -0x1

    if-ne v13, v14, :cond_11b

    const/4 v14, 0x0

    goto :goto_121

    :cond_11b
    iget-object v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v14

    :goto_121
    add-float/2addr v12, v14

    iput v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    .line 839
    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    .line 840
    iget-object v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v14

    move/from16 v21, v15

    .line 841
    iget-object v15, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    move/from16 v22, v6

    .line 842
    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    move/from16 v23, v5

    .line 843
    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    move-object/from16 v24, v11

    .line 844
    iget-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    cmpg-float v11, v12, v15

    if-gez v11, :cond_155

    move v12, v15

    :cond_155
    cmpg-float v11, v14, v6

    if-gez v11, :cond_15a

    move v14, v6

    :cond_15a
    const/4 v11, 0x0

    cmpl-float v17, v5, v11

    if-lez v17, :cond_164

    cmpl-float v17, v12, v5

    if-lez v17, :cond_164

    goto :goto_165

    :cond_164
    move v5, v12

    :goto_165
    cmpl-float v12, v3, v11

    if-lez v12, :cond_16e

    cmpl-float v11, v14, v3

    if-lez v11, :cond_16e

    goto :goto_16f

    :cond_16e
    move v3, v14

    :goto_16f
    const/4 v11, 0x1

    if-ne v0, v11, :cond_189

    .line 851
    iget v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v0, v11

    .line 852
    aget v11, v9, v4

    add-float/2addr v5, v0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v9, v4

    .line 853
    aget v5, v7, v4

    add-float/2addr v15, v0

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v7, v4

    .line 855
    :cond_189
    iget v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v0, v1

    .line 856
    aget v1, v10, v13

    add-float/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v10, v13

    .line 857
    aget v1, v8, v13

    add-float/2addr v6, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v8, v13

    add-int/lit8 v14, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v18

    move-object/from16 v12, v20

    move/from16 v15, v21

    move/from16 v6, v22

    move/from16 v5, v23

    move-object/from16 v11, v24

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_61

    :cond_1b4
    move/from16 v23, v5

    move/from16 v22, v6

    move-object/from16 v24, v11

    move v0, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c0
    if-ge v1, v0, :cond_237

    .line 863
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 864
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 867
    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_1f5

    .line 870
    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v12

    move v15, v12

    :goto_1da
    if-ge v15, v14, :cond_1e8

    .line 872
    aget v18, v24, v15

    const/16 v17, 0x0

    cmpl-float v18, v18, v17

    if-eqz v18, :cond_1e5

    goto :goto_1f5

    :cond_1e5
    add-int/lit8 v15, v15, 0x1

    goto :goto_1da

    :cond_1e8
    move v15, v12

    :goto_1e9
    if-ge v15, v14, :cond_1f5

    move/from16 v18, v14

    int-to-float v14, v13

    .line 874
    aput v14, v24, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v18

    goto :goto_1e9

    .line 878
    :cond_1f5
    :goto_1f5
    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v13, v14, :cond_217

    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_217

    .line 879
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v13, v14

    .line 880
    aget v14, v7, v12

    sub-float/2addr v14, v13

    invoke-static {v5, v14}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 881
    aget v12, v9, v12

    sub-float/2addr v12, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 883
    :cond_217
    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v12, v13, :cond_234

    .line 884
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v12, v13

    .line 885
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v13, v8, v13

    sub-float/2addr v13, v12

    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 886
    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v11, v10, v11

    sub-float/2addr v11, v12

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c0

    :cond_237
    const/4 v1, 0x0

    cmpl-float v11, v3, v1

    if-gtz v11, :cond_240

    cmpl-float v11, v4, v1

    if-lez v11, :cond_28b

    :cond_240
    const/4 v11, 0x0

    :goto_241
    if-ge v11, v0, :cond_28b

    .line 893
    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    cmpl-float v13, v3, v1

    if-lez v13, :cond_26c

    .line 894
    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v13, :cond_26c

    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v13, 0x1

    if-ne v1, v13, :cond_26c

    .line 895
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v1, v13

    .line 896
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-float v14, v5, v1

    aput v14, v7, v13

    .line 897
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-float/2addr v1, v3

    aput v1, v9, v13

    :cond_26c
    const/4 v1, 0x0

    cmpl-float v13, v4, v1

    if-lez v13, :cond_287

    .line 899
    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v13, :cond_287

    .line 900
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v1, v13

    .line 901
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-float v14, v6, v1

    aput v14, v8, v13

    .line 902
    iget v12, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-float/2addr v1, v4

    aput v1, v10, v12

    :cond_287
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x0

    goto :goto_241

    :cond_28b
    const/4 v1, 0x0

    :goto_28c
    if-ge v1, v0, :cond_313

    .line 909
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 910
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29f

    goto/16 :goto_30f

    .line 912
    :cond_29f
    iget v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 914
    iget-object v11, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 915
    iget-object v12, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    .line 916
    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    .line 917
    iget-object v14, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v11

    cmpg-float v14, v13, v12

    if-gez v14, :cond_2ba

    move v13, v12

    :cond_2ba
    const/4 v14, 0x0

    cmpl-float v15, v11, v14

    if-lez v15, :cond_2c4

    cmpl-float v14, v13, v11

    if-lez v14, :cond_2c4

    goto :goto_2c5

    :cond_2c4
    move v11, v13

    .line 921
    :goto_2c5
    iget v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v13, v3

    neg-float v3, v13

    add-int v13, v6, v4

    move v14, v3

    move v15, v14

    move v3, v6

    const/16 v16, 0x0

    :goto_2d2
    if-ge v3, v13, :cond_2e3

    .line 924
    aget v18, v7, v3

    add-float v14, v14, v18

    .line 925
    aget v18, v9, v3

    add-float v15, v15, v18

    .line 926
    aget v18, v24, v3

    add-float v16, v16, v18

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d2

    :cond_2e3
    sub-float/2addr v12, v14

    const/4 v3, 0x0

    .line 929
    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    sub-float/2addr v11, v15

    .line 930
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    :goto_2ee
    if-ge v6, v13, :cond_30f

    cmpl-float v14, v16, v3

    if-nez v14, :cond_2f9

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v14, v4

    div-float/2addr v3, v14

    goto :goto_2fd

    .line 932
    :cond_2f9
    aget v3, v24, v6

    div-float v3, v3, v16

    .line 933
    :goto_2fd
    aget v14, v7, v6

    mul-float v15, v12, v3

    add-float/2addr v14, v15

    aput v14, v7, v6

    .line 934
    aget v14, v9, v6

    mul-float v3, v3, v11

    add-float/2addr v14, v3

    aput v14, v9, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto :goto_2ee

    :cond_30f
    :goto_30f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_28c

    :cond_313
    const/4 v3, 0x0

    move-object/from16 v1, p0

    .line 939
    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 940
    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 941
    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 942
    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    move/from16 v0, v23

    const/4 v2, 0x0

    :goto_321
    if-ge v2, v0, :cond_334

    .line 944
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    aget v4, v7, v2

    add-float/2addr v3, v4

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 945
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    aget v4, v9, v2

    add-float/2addr v3, v4

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_321

    :cond_334
    move/from16 v0, v22

    const/4 v2, 0x0

    :goto_337
    if-ge v2, v0, :cond_350

    .line 948
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    aget v4, v8, v2

    add-float/2addr v3, v4

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 949
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    aget v4, v8, v2

    aget v5, v10, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_337

    .line 951
    :cond_350
    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v0, v2

    .line 952
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    add-float/2addr v2, v3

    .line 953
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    add-float/2addr v3, v0

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 954
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    add-float/2addr v3, v2

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 955
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    add-float/2addr v3, v0

    iget v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 956
    iget v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    add-float/2addr v0, v2

    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    return-void
.end method

.method private drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 10

    .line 1243
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getDebug()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_56

    .line 1244
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 1245
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1247
    :cond_21
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 1248
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v1

    .line 1249
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v0

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    const/4 v2, 0x0

    .line 1251
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_37
    if-ge v2, v3, :cond_56

    .line 1252
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1253
    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1254
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->x:F

    add-float/2addr v5, v1

    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->y:F

    add-float/2addr v6, v0

    iget v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->width:F

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->height:F

    invoke-virtual {p1, v5, v6, v7, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_56
    :goto_56
    return-void
.end method

.method private endRow()V
    .registers 7

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 362
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_7
    if-ltz v1, :cond_1e

    .line 363
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 364
    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v5, :cond_14

    goto :goto_1e

    .line 365
    :cond_14
    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 367
    :cond_1e
    :goto_1e
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 368
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 369
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    return-void
.end method

.method private ensureSize([FI)[F
    .registers 5

    if-eqz p1, :cond_11

    .line 751
    array-length v0, p1

    if-ge v0, p2, :cond_6

    goto :goto_11

    :cond_6
    const/4 p2, 0x0

    .line 752
    array-length v0, p1

    :goto_8
    if-ge p2, v0, :cond_10

    const/4 v1, 0x0

    .line 753
    aput v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_10
    return-object p1

    .line 751
    :cond_11
    :goto_11
    new-array p1, p2, [F

    return-object p1
.end method

.method private layout(FFFF)V
    .registers 38

    move-object/from16 v6, p0

    .line 962
    iget-object v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 963
    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 965
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 967
    :cond_d
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 968
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float v9, v0, v1

    .line 969
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 970
    iget-object v2, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float v10, v1, v2

    .line 972
    iget v2, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    iget v3, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 973
    iget-object v4, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    iget-object v5, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    .line 974
    iget-object v11, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    iget-object v12, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_39
    if-ge v15, v2, :cond_42

    .line 978
    aget v17, v4, v15

    add-float v16, v16, v17

    add-int/lit8 v15, v15, 0x1

    goto :goto_39

    :cond_42
    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_45
    if-ge v15, v3, :cond_4e

    .line 980
    aget v18, v5, v15

    add-float v17, v17, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_45

    .line 984
    :cond_4e
    iget v15, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    iget v13, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    sub-float/2addr v15, v13

    cmpl-float v19, v15, v14

    if-nez v19, :cond_60

    .line 986
    iget-object v13, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    move/from16 v21, v0

    move/from16 v20, v1

    move-object/from16 v22, v5

    goto :goto_93

    :cond_60
    sub-float v13, p3, v13

    .line 988
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 989
    sget-object v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    invoke-direct {v6, v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v14

    sput-object v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    move/from16 v20, v1

    .line 990
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    move/from16 v21, v0

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    move-object/from16 v22, v5

    const/4 v5, 0x0

    :goto_7d
    if-ge v5, v2, :cond_92

    .line 992
    aget v23, v0, v5

    aget v24, v1, v5

    sub-float v23, v23, v24

    div-float v23, v23, v15

    .line 994
    aget v24, v1, v5

    mul-float v23, v23, v13

    add-float v24, v24, v23

    aput v24, v14, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    :cond_92
    move-object v13, v14

    .line 999
    :goto_93
    iget v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    iget v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v5, v0, v1

    if-nez v5, :cond_a0

    .line 1001
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    goto :goto_cf

    .line 1003
    :cond_a0
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    invoke-direct {v6, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v5

    sput-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    .line 1004
    iget v14, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float v14, p4, v14

    invoke-static {v1, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1005
    iget-object v14, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    iget-object v15, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    const/4 v6, 0x0

    :goto_b9
    if-ge v6, v3, :cond_ce

    .line 1007
    aget v23, v15, v6

    aget v24, v14, v6

    sub-float v23, v23, v24

    div-float v23, v23, v0

    .line 1009
    aget v24, v14, v6

    mul-float v23, v23, v1

    add-float v24, v24, v23

    aput v24, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b9

    :cond_ce
    move-object v0, v5

    :goto_cf
    const/4 v1, 0x0

    :goto_d0
    if-ge v1, v8, :cond_18a

    .line 1015
    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1016
    iget v14, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget v15, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 1017
    iget-object v5, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v24, v7

    .line 1020
    iget-object v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move/from16 v25, v8

    add-int v8, v14, v7

    move/from16 v26, v3

    move/from16 v27, v10

    move v3, v14

    const/4 v10, 0x0

    :goto_f0
    if-ge v3, v8, :cond_f9

    .line 1022
    aget v28, v13, v3

    add-float v10, v10, v28

    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    .line 1023
    :cond_f9
    aget v3, v0, v15

    .line 1025
    iget-object v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    move-object/from16 v28, v0

    .line 1026
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    move-object/from16 v29, v13

    .line 1027
    iget-object v13, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    move-object/from16 v30, v4

    .line 1028
    iget-object v4, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    move/from16 v31, v2

    .line 1029
    iget-object v2, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    move/from16 v32, v9

    .line 1030
    iget-object v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    cmpg-float v9, v8, v13

    if-gez v9, :cond_12e

    goto :goto_12f

    :cond_12e
    move v13, v8

    :goto_12f
    cmpg-float v8, v0, v4

    if-gez v8, :cond_134

    move v0, v4

    :cond_134
    const/4 v4, 0x0

    cmpl-float v8, v2, v4

    if-lez v8, :cond_13e

    cmpl-float v8, v13, v2

    if-lez v8, :cond_13e

    move v13, v2

    :cond_13e
    cmpl-float v2, v5, v4

    if-lez v2, :cond_147

    cmpl-float v2, v0, v5

    if-lez v2, :cond_147

    move v0, v5

    .line 1036
    :cond_147
    iget v2, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    sub-float v2, v10, v2

    iget v4, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    sub-float/2addr v2, v4

    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1037
    iget v2, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float v2, v3, v2

    iget v4, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v2, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    const/4 v0, 0x1

    if-ne v7, v0, :cond_16c

    .line 1039
    aget v0, v11, v14

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v11, v14

    .line 1040
    :cond_16c
    aget v0, v12, v15

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v12, v15

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, v24

    move/from16 v8, v25

    move/from16 v3, v26

    move/from16 v10, v27

    move-object/from16 v0, v28

    move-object/from16 v13, v29

    move-object/from16 v4, v30

    move/from16 v2, v31

    move/from16 v9, v32

    goto/16 :goto_d0

    :cond_18a
    move/from16 v31, v2

    move/from16 v26, v3

    move-object/from16 v30, v4

    move-object/from16 v24, v7

    move/from16 v25, v8

    move/from16 v32, v9

    move/from16 v27, v10

    move-object/from16 v29, v13

    const/16 v19, 0x0

    cmpl-float v0, v16, v19

    if-lez v0, :cond_1d7

    sub-float v0, p3, v32

    move v2, v0

    move/from16 v0, v31

    const/4 v1, 0x0

    :goto_1a6
    if-ge v1, v0, :cond_1ae

    .line 1047
    aget v3, v11, v1

    sub-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a6

    :cond_1ae
    cmpl-float v1, v2, v19

    if-lez v1, :cond_1d9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1b5
    if-ge v1, v0, :cond_1d0

    .line 1052
    aget v5, v30, v1

    cmpl-float v5, v5, v19

    if-nez v5, :cond_1be

    goto :goto_1cb

    .line 1053
    :cond_1be
    aget v3, v30, v1

    mul-float v3, v3, v2

    div-float v3, v3, v16

    .line 1054
    aget v5, v11, v1

    add-float/2addr v5, v3

    aput v5, v11, v1

    add-float/2addr v4, v3

    move v3, v1

    :goto_1cb
    add-int/lit8 v1, v1, 0x1

    const/16 v19, 0x0

    goto :goto_1b5

    .line 1058
    :cond_1d0
    aget v1, v11, v3

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    aput v1, v11, v3

    goto :goto_1d9

    :cond_1d7
    move/from16 v0, v31

    :cond_1d9
    :goto_1d9
    const/16 v19, 0x0

    cmpl-float v1, v17, v19

    if-lez v1, :cond_216

    sub-float v1, p4, v27

    move v3, v1

    move/from16 v1, v26

    const/4 v2, 0x0

    :goto_1e5
    if-ge v2, v1, :cond_1ed

    .line 1064
    aget v4, v12, v2

    sub-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e5

    :cond_1ed
    cmpl-float v2, v3, v19

    if-lez v2, :cond_218

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1f4
    if-ge v2, v1, :cond_20f

    .line 1069
    aget v6, v22, v2

    cmpl-float v6, v6, v19

    if-nez v6, :cond_1fd

    goto :goto_20a

    .line 1070
    :cond_1fd
    aget v4, v22, v2

    mul-float v4, v4, v3

    div-float v4, v4, v17

    .line 1071
    aget v6, v12, v2

    add-float/2addr v6, v4

    aput v6, v12, v2

    add-float/2addr v5, v4

    move v4, v2

    :goto_20a
    add-int/lit8 v2, v2, 0x1

    const/16 v19, 0x0

    goto :goto_1f4

    .line 1075
    :cond_20f
    aget v2, v12, v4

    sub-float/2addr v3, v5

    add-float/2addr v2, v3

    aput v2, v12, v4

    goto :goto_218

    :cond_216
    move/from16 v1, v26

    :cond_218
    :goto_218
    move/from16 v6, v25

    const/4 v2, 0x0

    :goto_21b
    if-ge v2, v6, :cond_262

    move-object/from16 v7, v24

    .line 1081
    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1082
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22f

    goto :goto_25d

    .line 1086
    :cond_22f
    iget v8, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-int v9, v8, v4

    const/4 v10, 0x0

    :goto_234
    if-ge v8, v9, :cond_23f

    .line 1087
    aget v13, v29, v8

    aget v14, v11, v8

    sub-float/2addr v13, v14

    add-float/2addr v10, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_234

    .line 1088
    :cond_23f
    iget v8, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v9, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    sub-float/2addr v10, v8

    int-to-float v8, v4

    div-float/2addr v10, v8

    cmpl-float v8, v10, v9

    if-lez v8, :cond_25d

    .line 1092
    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-int/2addr v4, v3

    :goto_253
    if-ge v3, v4, :cond_25d

    .line 1093
    aget v8, v11, v3

    add-float/2addr v8, v10

    aput v8, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_253

    :cond_25d
    :goto_25d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v7

    goto :goto_21b

    :cond_262
    move-object/from16 v7, v24

    move/from16 v8, v32

    const/4 v2, 0x0

    :goto_267
    if-ge v2, v0, :cond_26f

    .line 1100
    aget v3, v11, v2

    add-float/2addr v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_267

    :cond_26f
    move/from16 v9, v27

    const/4 v0, 0x0

    :goto_272
    if-ge v0, v1, :cond_27a

    .line 1102
    aget v2, v12, v0

    add-float/2addr v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_272

    :cond_27a
    move-object/from16 v10, p0

    .line 1105
    iget v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    add-float v1, p1, v21

    and-int/lit8 v2, v0, 0x10

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_28a

    sub-float v2, p3, v8

    :goto_288
    add-float/2addr v1, v2

    goto :goto_292

    :cond_28a
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_292

    sub-float v2, p3, v8

    div-float/2addr v2, v3

    goto :goto_288

    :cond_292
    :goto_292
    move v13, v1

    add-float v1, p2, v20

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_29d

    sub-float v0, p4, v9

    :goto_29b
    add-float/2addr v1, v0

    goto :goto_2a5

    :cond_29d
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2a5

    sub-float v0, p4, v9

    div-float/2addr v0, v3

    goto :goto_29b

    :cond_2a5
    :goto_2a5
    move v14, v1

    move v1, v13

    move v2, v14

    const/4 v0, 0x0

    :goto_2a9
    if-ge v0, v6, :cond_3ac

    .line 1121
    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1124
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v15, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v5

    const/16 v16, 0x0

    :goto_2bc
    if-ge v5, v15, :cond_2c5

    .line 1125
    aget v17, v11, v5

    add-float v16, v16, v17

    add-int/lit8 v5, v5, 0x1

    goto :goto_2bc

    .line 1126
    :cond_2c5
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v15, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v5, v15

    sub-float v16, v16, v5

    .line 1128
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float/2addr v1, v5

    .line 1130
    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v15, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v17, 0x0

    cmpl-float v19, v5, v17

    if-lez v19, :cond_308

    mul-float v5, v5, v16

    .line 1132
    iget-object v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move-object/from16 v21, v11

    iget-object v11, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1133
    iget-object v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    cmpl-float v5, v3, v17

    if-lez v5, :cond_30a

    .line 1134
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    goto :goto_30a

    :cond_308
    move-object/from16 v21, v11

    :cond_30a
    :goto_30a
    cmpl-float v3, v15, v17

    if-lez v3, :cond_33e

    .line 1137
    iget v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v3, v12, v3

    mul-float v3, v3, v15

    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v3, v5

    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v3, v5

    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v11, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1138
    iget-object v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    const/4 v11, 0x0

    cmpl-float v5, v3, v11

    if-lez v5, :cond_33f

    .line 1139
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    goto :goto_33f

    :cond_33e
    const/4 v11, 0x0

    .line 1142
    :cond_33f
    :goto_33f
    iget-object v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_34c

    .line 1144
    iput v1, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_362

    :cond_34c
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_358

    add-float v5, v1, v16

    .line 1146
    iget v15, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float/2addr v5, v15

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_362

    .line 1148
    :cond_358
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float v5, v16, v5

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v5, v15

    add-float/2addr v5, v1

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    :goto_362
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_36e

    .line 1151
    iget v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v3, v2

    iput v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    :goto_36b
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_393

    :cond_36e
    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_380

    .line 1153
    iget v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v3, v12, v3

    add-float/2addr v3, v2

    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v3, v5

    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v3, v5

    iput v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    goto :goto_36b

    .line 1155
    :cond_380
    iget v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v3, v12, v3

    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v3, v5

    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v3, v5

    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v3, v2

    iput v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 1157
    :goto_393
    iget-boolean v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v3, :cond_39e

    .line 1159
    iget v1, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v1, v12, v1

    add-float/2addr v2, v1

    move v1, v13

    goto :goto_3a4

    .line 1161
    :cond_39e
    iget v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float v16, v16, v3

    add-float v1, v1, v16

    :goto_3a4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, v21

    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_2a9

    :cond_3ac
    move-object/from16 v21, v11

    const/4 v11, 0x0

    .line 1165
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_3b6

    return-void

    .line 1166
    :cond_3b6
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    .line 1169
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_3c5

    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_3df

    .line 1170
    :cond_3c5
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    sub-float v3, v8, v32

    sub-float v4, v9, v27

    .line 1171
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move v1, v13

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_3df
    move v9, v13

    const/4 v8, 0x0

    :goto_3e1
    if-ge v8, v6, :cond_45a

    .line 1174
    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1177
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_3f6

    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_405

    .line 1178
    :cond_3f6
    iget v1, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v2, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    iget v4, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1182
    :cond_405
    iget v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v1, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_40f
    if-ge v0, v1, :cond_417

    .line 1183
    aget v3, v21, v0

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_40f

    .line 1184
    :cond_417
    iget v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v1, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v0, v1

    sub-float v16, v2, v0

    .line 1185
    iget v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float/2addr v9, v0

    .line 1186
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_42d

    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_446

    .line 1187
    :cond_42d
    iget v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float v2, v14, v0

    iget v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v0, v12, v0

    iget v1, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v0, v1

    iget v1, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float v4, v0, v1

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1191
    :cond_446
    iget-boolean v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v0, :cond_451

    .line 1193
    iget v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v0, v12, v0

    add-float/2addr v14, v0

    move v9, v13

    goto :goto_457

    .line 1195
    :cond_451
    iget v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float v16, v16, v0

    add-float v9, v9, v16

    :goto_457
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e1

    :cond_45a
    return-void
.end method

.method private obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2

    .line 95
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 96
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setTable(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    return-object v0
.end method


# virtual methods
.method public add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2

    const/4 v0, 0x0

    .line 280
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 196
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 199
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 200
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 201
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 202
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 205
    :cond_1d
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 206
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v3, :cond_6b

    .line 209
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 210
    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-nez v5, :cond_3d

    .line 211
    iget v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 212
    iget v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    goto :goto_45

    .line 214
    :cond_3d
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 215
    iget v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 218
    :goto_45
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    if-lez v2, :cond_6f

    add-int/lit8 v3, v3, -0x1

    :goto_4b
    if-ltz v3, :cond_6f

    .line 221
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 222
    iget v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    :goto_5c
    if-ge v4, v2, :cond_68

    .line 223
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    if-ne v4, v5, :cond_65

    .line 224
    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    goto :goto_6f

    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_68
    add-int/lit8 v3, v3, -0x1

    goto :goto_4b

    .line 231
    :cond_6b
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 232
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 234
    :cond_6f
    :goto_6f
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 237
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_8e

    .line 238
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v1, :cond_8e

    .line 239
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 241
    :cond_8e
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    if-eqz p1, :cond_98

    .line 243
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_98
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_e

    .line 257
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    .line 256
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Table must have a skin set to use this method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_16

    .line 263
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    .line 262
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Table must have a skin set to use this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_17

    .line 269
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    invoke-direct {v2, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    .line 268
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Table must have a skin set to use this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_1d

    .line 275
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-direct {v2, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    .line 274
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Table must have a skin set to use this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 5

    .line 249
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    .line 250
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-object p0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 535
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-object p0
.end method

.method public background(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Ljava/lang/String;)V

    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 561
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 562
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    const/4 v0, 0x1

    .line 541
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public clearChildren()V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 308
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_18

    .line 309
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 310
    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_15

    .line 311
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 313
    :cond_18
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 314
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    .line 315
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 316
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 317
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v1, :cond_2e

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_2e
    const/4 v1, 0x0

    .line 318
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 319
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 321
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clearChildren()V

    return-void
.end method

.method public columnDefaults(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 6

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-le v0, p1, :cond_10

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-nez v0, :cond_39

    .line 377
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 379
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_34

    .line 380
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_24
    if-ge v2, p1, :cond_2e

    .line 381
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 382
    :cond_2e
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_39

    .line 384
    :cond_34
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    :cond_39
    :goto_39
    return-object v0
.end method

.method public bridge synthetic debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 1

    .line 578
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p0
.end method

.method public debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    .line 619
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, p1, :cond_1b

    .line 621
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 622
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne p1, v0, :cond_18

    .line 623
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    goto :goto_1b

    .line 625
    :cond_18
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public debugActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    const/4 v0, 0x1

    .line 609
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_11

    .line 611
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 612
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_11
    return-object p0
.end method

.method public bridge synthetic debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 1

    .line 583
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public debugCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    const/4 v0, 0x1

    .line 599
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 600
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_11

    .line 601
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 602
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_11
    return-object p0
.end method

.method public debugTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    const/4 v0, 0x1

    .line 589
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 590
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_11

    .line 591
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 592
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_11
    return-object p0
.end method

.method public defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 8

    .line 101
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->validate()V

    .line 102
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 105
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_4f

    .line 106
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 109
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 108
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 111
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    goto :goto_52

    .line 115
    :cond_4f
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 116
    :cond_52
    :goto_52
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_64

    .line 118
    :cond_56
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 119
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :goto_64
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .registers 15

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 127
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 128
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 129
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v9

    move-object v5, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 7

    .line 1214
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1215
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1216
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1217
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_4f

    .line 1218
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 1219
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    .line 1220
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_41

    .line 1221
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    .line 1222
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    .line 1223
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v3

    sub-float/2addr v0, v4

    .line 1224
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    .line 1226
    :goto_42
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1227
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1228
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    goto :goto_52

    .line 1231
    :cond_4f
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1232
    :cond_52
    :goto_52
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_5c

    .line 1234
    :cond_56
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1235
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :goto_5c
    return-void
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 2

    return-void
.end method

.method public getAlign()I
    .registers 2

    .line 677
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 392
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_15

    .line 393
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 394
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p1, :cond_12

    return-object v3

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCells()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getClip()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    return v0
.end method

.method public getColumnMinWidth(I)F
    .registers 3

    .line 740
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 741
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    aget p1, v0, p1

    return p1
.end method

.method public getColumnPrefWidth(I)F
    .registers 3

    .line 746
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 747
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    aget p1, v0, p1

    return p1
.end method

.method public getColumnWidth(I)F
    .registers 3

    .line 734
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 735
    :cond_6
    aget p1, v0, p1

    return p1
.end method

.method public getColumns()I
    .registers 2

    .line 711
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    return v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 424
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 425
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 419
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 420
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    return v0
.end method

.method public getPadBottom()F
    .registers 2

    .line 655
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .registers 2

    .line 647
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .registers 2

    .line 663
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .registers 3

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .registers 3

    .line 412
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 413
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 414
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_15
    return v0
.end method

.method public getPrefWidth()F
    .registers 3

    .line 405
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 406
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 407
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_15
    return v0
.end method

.method public getRow(F)I
    .registers 10

    .line 683
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 685
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v1

    add-float/2addr p1, v1

    .line 686
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_d

    const/4 p1, -0x1

    return p1

    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    return v2

    :cond_12
    const/4 v4, 0x0

    :goto_13
    if-ge v2, v1, :cond_2f

    add-int/lit8 v5, v2, 0x1

    .line 690
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 691
    iget v6, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v7, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v6, v7

    cmpg-float v6, v6, p1

    if-gez v6, :cond_27

    goto :goto_2f

    .line 692
    :cond_27
    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v2, :cond_2d

    add-int/lit8 v4, v4, 0x1

    :cond_2d
    move v2, v5

    goto :goto_13

    .line 694
    :cond_2f
    :goto_2f
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    sub-int/2addr p1, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getRowHeight(I)F
    .registers 3

    .line 716
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 717
    :cond_6
    aget p1, v0, p1

    return p1
.end method

.method public getRowMinHeight(I)F
    .registers 3

    .line 722
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 723
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    aget p1, v0, p1

    return p1
.end method

.method public getRowPrefHeight(I)F
    .registers 3

    .line 728
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 729
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    aget p1, v0, p1

    return p1
.end method

.method public getRows()I
    .registers 2

    .line 707
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    return v0
.end method

.method public getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .registers 2

    .line 1260
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method public getTableDebug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .registers 7

    .line 169
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    if-eqz p3, :cond_10

    .line 170
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_10

    return-object v0

    :cond_10
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_29

    .line 171
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_29

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_29

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2a

    :cond_29
    return-object v0

    .line 173
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 190
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    return-void
.end method

.method public layout()V
    .registers 11

    .line 758
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v0

    .line 759
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    .line 761
    invoke-direct {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout(FFFF)V

    .line 763
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 764
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4a

    .line 765
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_6d

    .line 766
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 767
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 768
    iget v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 769
    iget v8, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 770
    iget v9, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v1, v9

    sub-float/2addr v9, v7

    .line 771
    invoke-virtual {v5, v8, v9, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActorBounds(FFFF)V

    .line 772
    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v5, :cond_47

    .line 773
    invoke-virtual {v5, v8, v9, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 776
    :cond_4a
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_4d
    if-ge v4, v2, :cond_6d

    .line 777
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 778
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 779
    iget v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    sub-float v7, v1, v7

    sub-float/2addr v7, v6

    .line 780
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActorY(F)V

    .line 781
    iget-object v8, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v8, :cond_6a

    .line 782
    iget v9, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-virtual {v8, v9, v7, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 786
    :cond_6d
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    .line 787
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_73
    if-ge v3, v1, :cond_87

    .line 788
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 789
    instance-of v4, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v4, :cond_84

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_87
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 554
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 555
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 491
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 5

    .line 496
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 497
    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 498
    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 499
    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 500
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    if-eqz p1, :cond_e

    .line 436
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 437
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 438
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 439
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 440
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 435
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pad cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 5

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_24

    if-eqz p3, :cond_1c

    if-eqz p4, :cond_14

    .line 449
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 450
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 451
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 452
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 453
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 448
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "right cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "left cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 445
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "top cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 520
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 521
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    if-eqz p1, :cond_8

    .line 476
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 477
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 475
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padBottom cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 513
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 514
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    if-eqz p1, :cond_8

    .line 468
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 467
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padLeft cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 527
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    if-eqz p1, :cond_8

    .line 484
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 485
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 483
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padRight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 506
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 507
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 3

    if-eqz p1, :cond_8

    .line 460
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 461
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 459
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padTop cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .registers 3

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p1

    return p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .registers 3

    .line 299
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    .line 300
    :cond_8
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    if-eqz p1, :cond_11

    const/4 p2, 0x0

    .line 301
    iput-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method public reset()V
    .registers 5

    .line 327
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearChildren()V

    .line 328
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 329
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 330
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 331
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 v0, 0x1

    .line 332
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 333
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->reset()V

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_39

    .line 336
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_36

    .line 337
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 339
    :cond_39
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 568
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 569
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1f

    .line 346
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    if-nez v0, :cond_1c

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0

    .line 348
    :cond_19
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 350
    :cond_1c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_1f
    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v0, :cond_2b

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 354
    :cond_2b
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 356
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 11

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_5

    return-void

    .line 143
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v3

    .line 144
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 145
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v6

    add-float v7, v0, v2

    add-float v8, p1, v5

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4c

    add-float v7, v1, v3

    add-float v8, v4, v6

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_38

    goto :goto_4c

    :cond_38
    cmpl-float p1, v0, p1

    if-nez p1, :cond_48

    cmpl-float p1, v1, v4

    if-nez p1, :cond_48

    cmpl-float p1, v2, v5

    if-nez p1, :cond_48

    cmpl-float p1, v3, v6

    if-eqz p1, :cond_4f

    .line 149
    :cond_48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    goto :goto_4f

    .line 147
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidateHierarchy()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_c

    .line 137
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-void

    .line 136
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Table must have a skin set to use this method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setClip(Z)V
    .registers 2

    .line 179
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    .line 180
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 574
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_7
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-void
.end method

.method public setRound(Z)V
    .registers 2

    .line 703
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    return-void
.end method

.method public setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 2

    .line 698
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-void
.end method

.method public varargs stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    if-eqz p1, :cond_13

    const/4 v1, 0x0

    .line 288
    array-length v2, p1

    :goto_9
    if-ge v1, v2, :cond_13

    .line 289
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 291
    :cond_13
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .registers 2

    .line 547
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 548
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method
