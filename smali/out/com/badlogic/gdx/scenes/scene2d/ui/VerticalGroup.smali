.class public Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "VerticalGroup.java"


# instance fields
.field private align:I

.field private columnAlign:I

.field private columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

.field private expand:Z

.field private fill:F

.field private lastPrefWidth:F

.field private padBottom:F

.field private padLeft:F

.field private padRight:F

.field private padTop:F

.field private prefHeight:F

.field private prefWidth:F

.field private reverse:Z

.field private round:Z

.field private sizeInvalid:Z

.field private space:F

.field private wrap:Z

.field private wrapSpace:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    const/4 v1, 0x2

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 46
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 50
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method

.method private computeSize()V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    .line 61
    iget v3, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v4, 0x0

    .line 62
    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 63
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    if-eqz v5, :cond_c3

    .line 64
    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 65
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    if-nez v5, :cond_20

    .line 66
    new-instance v5, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    goto :goto_23

    .line 68
    :cond_20
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 69
    :goto_23
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 70
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    .line 71
    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v9

    sub-float/2addr v9, v8

    .line 73
    iget-boolean v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    const/4 v11, -0x1

    if-eqz v10, :cond_40

    add-int/lit8 v1, v3, -0x1

    const/4 v3, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    goto :goto_45

    :cond_40
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_45
    if-eq v1, v3, :cond_a5

    .line 79
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 82
    instance-of v15, v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_68

    .line 83
    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 84
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v15

    .line 85
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v16

    cmpl-float v17, v16, v9

    if-lez v17, :cond_70

    .line 86
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v16

    goto :goto_70

    .line 88
    :cond_68
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v15

    .line 89
    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v16

    :cond_70
    :goto_70
    cmpl-float v14, v10, v4

    if-lez v14, :cond_76

    move v14, v6

    goto :goto_77

    :cond_76
    const/4 v14, 0x0

    :goto_77
    add-float v14, v16, v14

    add-float v17, v10, v14

    cmpl-float v17, v17, v9

    if-lez v17, :cond_9b

    cmpl-float v17, v10, v4

    if-lez v17, :cond_9b

    .line 94
    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 95
    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 96
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    add-float/2addr v10, v8

    invoke-static {v14, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    cmpl-float v10, v12, v4

    if-lez v10, :cond_97

    add-float/2addr v12, v7

    :cond_97
    add-float/2addr v12, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_9d

    :cond_9b
    move/from16 v16, v14

    :goto_9d
    add-float v10, v10, v16

    .line 104
    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-int/2addr v1, v13

    goto :goto_45

    .line 106
    :cond_a5
    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 107
    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 108
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    add-float/2addr v10, v8

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    cmpl-float v1, v12, v4

    if-lez v1, :cond_b9

    add-float/2addr v12, v7

    .line 110
    :cond_b9
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    add-float/2addr v12, v11

    invoke-static {v1, v12}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    goto :goto_10e

    .line 112
    :cond_c3
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float/2addr v4, v5

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    :goto_d2
    if-ge v1, v3, :cond_10e

    .line 114
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 115
    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v5, :cond_f6

    .line 116
    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 117
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 118
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v4

    add-float/2addr v5, v4

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    goto :goto_10b

    .line 120
    :cond_f6
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 121
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    add-float/2addr v5, v4

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    :goto_10b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d2

    .line 125
    :cond_10e
    :goto_10e
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 126
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    if-eqz v1, :cond_12e

    .line 127
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 128
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    :cond_12e
    return-void
.end method

.method private layoutWrapped()V
    .registers 27

    move-object/from16 v0, p0

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getPrefWidth()F

    move-result v1

    .line 207
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->lastPrefWidth:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_11

    .line 208
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->lastPrefWidth:F

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->invalidateHierarchy()V

    .line 212
    :cond_11
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 213
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 214
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    .line 215
    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v8, v9

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    sub-float/2addr v8, v9

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v9

    .line 217
    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v10, v11

    add-float/2addr v10, v4

    and-int/lit8 v11, v2, 0x10

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v11, :cond_3c

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v11

    sub-float/2addr v11, v1

    :goto_3a
    add-float/2addr v5, v11

    goto :goto_47

    :cond_3c
    and-int/lit8 v11, v2, 0x8

    if-nez v11, :cond_47

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v11

    sub-float/2addr v11, v1

    div-float/2addr v11, v12

    goto :goto_3a

    :cond_47
    :goto_47
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_51

    .line 225
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float v1, v9, v1

    :goto_4f
    add-float/2addr v10, v1

    goto :goto_5b

    :cond_51
    and-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_5b

    .line 227
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float v1, v9, v1

    div-float/2addr v1, v12

    goto :goto_4f

    .line 229
    :cond_5b
    :goto_5b
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v9, v1

    .line 230
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 232
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnSizes:Lcom/badlogic/gdx/utils/FloatArray;

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v11

    .line 234
    iget v13, v11, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 235
    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    const/4 v15, -0x1

    const/16 v16, 0x0

    if-eqz v14, :cond_73

    add-int/lit8 v13, v13, -0x1

    const/4 v14, -0x1

    goto :goto_77

    :cond_73
    const/4 v15, 0x1

    move v15, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_77
    const/16 v17, 0x0

    move/from16 v19, v5

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    :goto_7f
    if-eq v13, v15, :cond_170

    .line 241
    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v11

    move-object/from16 v11, v20

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/16 v20, 0x0

    move/from16 v22, v15

    .line 245
    instance-of v15, v11, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_ae

    .line 246
    move-object/from16 v20, v11

    check-cast v20, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 247
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v15

    .line 248
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v23

    cmpl-float v24, v23, v9

    if-lez v24, :cond_b6

    move/from16 v24, v15

    .line 249
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(FF)F

    move-result v23

    goto :goto_b8

    .line 251
    :cond_ae
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v15

    .line 252
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v23

    :cond_b6
    move/from16 v24, v15

    :goto_b8
    move/from16 v15, v23

    sub-float v23, v5, v15

    sub-float v23, v23, v4

    move/from16 v25, v5

    .line 255
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    cmpg-float v5, v23, v5

    if-ltz v5, :cond_cc

    if-nez v12, :cond_c9

    goto :goto_cc

    :cond_c9
    move/from16 v5, v25

    goto :goto_f9

    :cond_cc
    :goto_cc
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_d9

    .line 258
    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    sub-float v5, v8, v5

    :goto_d6
    sub-float v5, v10, v5

    goto :goto_e9

    :cond_d9
    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_e8

    .line 260
    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    sub-float v5, v8, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v5, v5, v16

    goto :goto_d6

    :cond_e8
    move v5, v10

    :goto_e9
    if-lez v12, :cond_ef

    add-float v19, v19, v7

    add-float v19, v19, v18

    :cond_ef
    add-int/lit8 v0, v12, 0x1

    .line 265
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    add-int/lit8 v12, v12, 0x2

    move/from16 v18, v0

    :goto_f9
    cmpl-float v0, v6, v17

    if-lez v0, :cond_ff

    mul-float v24, v18, v6

    :cond_ff
    move/from16 v0, v24

    if-eqz v20, :cond_11b

    move-object/from16 v23, v2

    .line 272
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 273
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v2

    cmpl-float v24, v2, v17

    if-lez v24, :cond_11d

    cmpl-float v24, v0, v2

    if-lez v24, :cond_11d

    move v0, v2

    goto :goto_11d

    :cond_11b
    move-object/from16 v23, v2

    :cond_11d
    :goto_11d
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_128

    sub-float v2, v18, v0

    add-float v2, v19, v2

    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_139

    :cond_128
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_135

    sub-float v2, v18, v0

    const/high16 v16, 0x40000000    # 2.0f

    div-float v2, v2, v16

    add-float v2, v19, v2

    goto :goto_139

    :cond_135
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v2, v19

    :goto_139
    add-float v24, v15, v4

    sub-float v5, v5, v24

    if-eqz v3, :cond_159

    .line 285
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v24, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v11, v2, v1, v0, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_15e

    :cond_159
    move/from16 v24, v1

    .line 287
    invoke-virtual {v11, v2, v5, v0, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    :goto_15e
    if-eqz v20, :cond_163

    .line 289
    invoke-interface/range {v20 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_163
    add-int/2addr v13, v14

    move-object/from16 v0, p0

    move-object/from16 v11, v21

    move/from16 v15, v22

    move-object/from16 v2, v23

    move/from16 v1, v24

    goto/16 :goto_7f

    :cond_170
    return-void
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 401
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 427
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 428
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    const/4 v0, 0x1

    .line 407
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public columnAlign(I)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 508
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    return-object p0
.end method

.method public columnBottom()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 536
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 537
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    return-object p0
.end method

.method public columnCenter()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    const/4 v0, 0x1

    .line 514
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    return-object p0
.end method

.method public columnLeft()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 528
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 529
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    return-object p0
.end method

.method public columnRight()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 543
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 544
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    return-object p0
.end method

.method public columnTop()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 521
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 522
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    return-object p0
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .registers 14

    .line 549
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 550
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getDebug()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 551
    :cond_a
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 552
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 553
    :cond_20
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getX()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    add-float v3, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getY()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float v4, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getOriginX()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getOriginY()F

    move-result v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float v7, v0, v1

    .line 554
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float v8, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getScaleX()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getScaleY()F

    move-result v10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getRotation()F

    move-result v11

    move-object v2, p1

    .line 553
    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    return-void
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    const/4 v0, 0x1

    .line 459
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    return-object p0
.end method

.method public expand(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 465
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 444
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return-object p0
.end method

.method public fill(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 450
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return-object p0
.end method

.method public getAlign()I
    .registers 2

    .line 440
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return v0
.end method

.method public getExpand()Z
    .registers 2

    .line 470
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    return v0
.end method

.method public getFill()F
    .registers 2

    .line 455
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return v0
.end method

.method public getPadBottom()F
    .registers 2

    .line 391
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    return v0
.end method

.method public getPadLeft()F
    .registers 2

    .line 387
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    return v0
.end method

.method public getPadRight()F
    .registers 2

    .line 395
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return v0
.end method

.method public getPadTop()F
    .registers 2

    .line 383
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    return v0
.end method

.method public getPrefHeight()F
    .registers 2

    .line 299
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 300
    :cond_6
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 301
    :cond_d
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    .line 294
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 295
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    return v0
.end method

.method public getReverse()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    return v0
.end method

.method public getSpace()F
    .registers 2

    .line 332
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    return v0
.end method

.method public getWrap()Z
    .registers 2

    .line 501
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    return v0
.end method

.method public getWrapSpace()F
    .registers 2

    .line 342
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 476
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return-object p0
.end method

.method public invalidate()V
    .registers 2

    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    return-void
.end method

.method public layout()V
    .registers 21

    move-object/from16 v0, p0

    .line 133
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 135
    :cond_9
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    if-eqz v1, :cond_11

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->layoutWrapped()V

    return-void

    .line 140
    :cond_11
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 141
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 142
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 143
    iget-boolean v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->expand:Z

    if-eqz v6, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v6

    goto :goto_26

    :cond_24
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    :goto_26
    sub-float/2addr v6, v4

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v7, v8

    add-float/2addr v7, v3

    and-int/lit8 v8, v2, 0x2

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_3f

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float/2addr v8, v10

    :goto_3d
    add-float/2addr v7, v8

    goto :goto_4c

    :cond_3f
    and-int/lit8 v8, v2, 0x4

    if-nez v8, :cond_4c

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v8

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    sub-float/2addr v8, v10

    div-float/2addr v8, v9

    goto :goto_3d

    :cond_4c
    :goto_4c
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_51

    goto :goto_6a

    :cond_51
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5f

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v2

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v2, v4

    sub-float v4, v2, v6

    goto :goto_6a

    .line 156
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v2

    sub-float/2addr v2, v4

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v2, v8

    sub-float/2addr v2, v6

    div-float/2addr v2, v9

    add-float/2addr v4, v2

    .line 158
    :goto_6a
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->columnAlign:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v8

    const/4 v10, 0x0

    .line 161
    iget v11, v8, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 162
    iget-boolean v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    const/4 v13, -0x1

    if-eqz v12, :cond_7c

    add-int/lit8 v10, v11, -0x1

    const/4 v11, -0x1

    goto :goto_7d

    :cond_7c
    const/4 v13, 0x1

    :goto_7d
    if-eq v10, v11, :cond_116

    .line 168
    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v14, 0x0

    .line 172
    instance-of v15, v12, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v15, :cond_96

    .line 173
    move-object v14, v12

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 174
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v15

    .line 175
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v16

    goto :goto_9e

    .line 177
    :cond_96
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v15

    .line 178
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v16

    :goto_9e
    move/from16 v17, v16

    const/16 v16, 0x0

    cmpl-float v18, v5, v16

    if-lez v18, :cond_a8

    mul-float v15, v6, v5

    :cond_a8
    if-eqz v14, :cond_bf

    .line 184
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 185
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v9

    cmpl-float v16, v9, v16

    if-lez v16, :cond_bf

    cmpl-float v16, v15, v9

    if-lez v16, :cond_bf

    move v15, v9

    :cond_bf
    and-int/lit8 v9, v2, 0x10

    if-eqz v9, :cond_cf

    sub-float v9, v6, v15

    add-float/2addr v9, v4

    const/high16 v16, 0x40000000    # 2.0f

    :goto_c8
    move/from16 v19, v17

    move/from16 v17, v9

    move/from16 v9, v19

    goto :goto_e1

    :cond_cf
    and-int/lit8 v9, v2, 0x8

    if-nez v9, :cond_db

    sub-float v9, v6, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v9, v9, v16

    add-float/2addr v9, v4

    goto :goto_c8

    :cond_db
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v9, v17

    move/from16 v17, v4

    :goto_e1
    add-float v18, v9, v3

    sub-float v7, v7, v18

    if-eqz v1, :cond_101

    .line 197
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    move/from16 v17, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v12, v0, v1, v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_108

    :cond_101
    move/from16 v0, v17

    move/from16 v17, v1

    .line 199
    invoke-virtual {v12, v0, v7, v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    :goto_108
    if-eqz v14, :cond_10d

    .line 201
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_10d
    add-int/2addr v10, v13

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto/16 :goto_7d

    :cond_116
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 420
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 421
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 347
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 348
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 349
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 350
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 5

    .line 355
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 356
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 357
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 358
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 373
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 368
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 378
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 363
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    return-object p0
.end method

.method public reverse()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    return-object p0
.end method

.method public reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 317
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    return-object p0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 434
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 435
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public setRound(Z)V
    .registers 2

    .line 306
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    return-void
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 327
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->space:F

    return-object p0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 413
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 414
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public wrap()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    return-object p0
.end method

.method public wrap(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 496
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrap:Z

    return-object p0
.end method

.method public wrapSpace(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .registers 2

    .line 337
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->wrapSpace:F

    return-object p0
.end method
