.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "TextField.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;
    }
.end annotation


# static fields
.field private static final BACKSPACE:C = '\u0008'

.field private static final BULLET:C = '\u0095'

.field private static final DELETE:C = '\u007f'

.field protected static final ENTER_ANDROID:C = '\n'

.field protected static final ENTER_DESKTOP:C = '\r'

.field private static final TAB:C = '\t'

.field public static keyRepeatInitialTime:F

.field public static keyRepeatTime:F

.field private static final tmp1:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp2:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp3:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field final blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

.field blinkTime:F

.field clipboard:Lcom/badlogic/gdx/utils/Clipboard;

.field protected cursor:I

.field cursorOn:Z

.field disabled:Z

.field protected displayText:Ljava/lang/CharSequence;

.field filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

.field focusTraversal:Z

.field focused:Z

.field protected fontOffset:F

.field protected final glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

.field protected hasSelection:Z

.field inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field final keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

.field keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

.field lastChangeTime:J

.field protected final layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

.field private maxLength:I

.field private messageText:Ljava/lang/String;

.field onlyFontChars:Z

.field private passwordBuffer:Ljava/lang/StringBuilder;

.field private passwordCharacter:C

.field passwordMode:Z

.field programmaticChangeEvents:Z

.field renderOffset:F

.field protected selectionStart:I

.field private selectionWidth:F

.field private selectionX:F

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

.field protected text:Ljava/lang/String;

.field private textHAlign:I

.field protected textHeight:F

.field protected textOffset:F

.field undoText:Ljava/lang/String;

.field private visibleTextEnd:I

.field private visibleTextStart:I

.field protected writeEnters:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    const v0, 0x3ecccccd    # 0.4f

    .line 77
    sput v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatInitialTime:F

    const v0, 0x3dcccccd    # 0.1f

    .line 78
    sput v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTime:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 4

    .line 125
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 5

    .line 129
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .registers 4

    .line 132
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 85
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    .line 94
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    const/16 v0, 0x8

    .line 96
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->undoText:Ljava/lang/String;

    const/16 v0, 0x95

    .line 104
    iput-char v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    const v0, 0x3ea3d70a    # 0.32f

    .line 113
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    .line 114
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 121
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    .line 133
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 134
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p2}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    .line 135
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->initialize()V

    .line 136
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSize(FF)V

    return-void
.end method

.method private findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;"
        }
    .end annotation

    .line 536
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    move-object v4, p2

    const/4 p2, 0x0

    :goto_5
    if-ge p2, v0, :cond_cf

    .line 537
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 538
    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-eqz v3, :cond_b8

    if-ne v2, p0, :cond_15

    goto/16 :goto_cb

    .line 540
    :cond_15
    move-object v3, v2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    .line 541
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isDisabled()Z

    move-result v5

    if-nez v5, :cond_cb

    iget-boolean v5, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    if-eqz v5, :cond_cb

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->ancestorsVisible()Z

    move-result v5

    if-nez v5, :cond_2a

    goto/16 :goto_cb

    .line 542
    :cond_2a
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v2

    invoke-virtual {v6, v7, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 543
    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v7, 0x1

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_59

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_53

    const/4 v5, 0x1

    goto :goto_54

    :cond_53
    const/4 v5, 0x0

    :goto_54
    xor-int/2addr v5, p5

    if-eqz v5, :cond_59

    const/4 v5, 0x1

    goto :goto_5a

    :cond_59
    const/4 v5, 0x0

    .line 544
    :goto_5a
    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_72

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6c

    const/4 v6, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v6, 0x0

    :goto_6d
    xor-int/2addr v6, p5

    if-eqz v6, :cond_72

    const/4 v6, 0x1

    goto :goto_73

    :cond_72
    const/4 v6, 0x0

    :goto_73
    if-nez v5, :cond_78

    if-nez v6, :cond_78

    goto :goto_cb

    :cond_78
    if-eqz v4, :cond_93

    .line 546
    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_91

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8c

    const/4 v5, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v5, 0x0

    :goto_8d
    xor-int/2addr v5, p5

    if-eqz v5, :cond_91

    goto :goto_93

    :cond_91
    const/4 v5, 0x0

    goto :goto_94

    :cond_93
    :goto_93
    const/4 v5, 0x1

    :goto_94
    if-nez v5, :cond_af

    .line 547
    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_ae

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a8

    const/4 v5, 0x1

    goto :goto_a9

    :cond_a8
    const/4 v5, 0x0

    :goto_a9
    xor-int/2addr v5, p5

    if-eqz v5, :cond_ae

    const/4 v5, 0x1

    goto :goto_af

    :cond_ae
    const/4 v5, 0x0

    :cond_af
    :goto_af
    if-eqz v5, :cond_b5

    .line 550
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_b6

    :cond_b5
    move-object v3, v4

    :goto_b6
    move-object v4, v3

    goto :goto_cb

    .line 552
    :cond_b8
    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v3, :cond_cb

    .line 553
    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v3

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v2

    move-object v4, v2

    :cond_cb
    :goto_cb
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_5

    :cond_cf
    return-object v4
.end method

.method private getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 3

    .line 290
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasKeyboardFocus()Z

    move-result v0

    .line 291
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_24

    :cond_13
    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_24

    :cond_20
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_24
    return-object v0
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_4

    const-string p1, ""

    .line 596
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 597
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 598
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste(Ljava/lang/String;Z)V

    return-void
.end method

.method protected calculateOffsets()V
    .registers 11

    .line 227
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getWidth()F

    move-result v0

    .line 228
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 229
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    add-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 231
    :cond_14
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 232
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 235
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget v3, v2, v3

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    add-float/2addr v3, v5

    const/4 v6, 0x0

    cmpg-float v7, v3, v6

    if-gtz v7, :cond_33

    sub-float/2addr v5, v3

    .line 237
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    goto :goto_4a

    :cond_33
    add-int/lit8 v3, v1, -0x1

    .line 239
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 240
    aget v3, v2, v3

    sub-float/2addr v3, v0

    .line 241
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    neg-float v5, v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_4a

    neg-float v3, v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    :cond_4a
    :goto_4a
    add-int/lit8 v3, v1, -0x1

    .line 246
    aget v3, v2, v3

    add-int/lit8 v5, v1, -0x2

    const/4 v7, 0x0

    :goto_51
    if-ltz v5, :cond_60

    .line 248
    aget v8, v2, v5

    sub-float v9, v3, v8

    cmpl-float v9, v9, v0

    if-lez v9, :cond_5c

    goto :goto_60

    :cond_5c
    add-int/lit8 v5, v5, -0x1

    move v7, v8

    goto :goto_51

    .line 252
    :cond_60
    :goto_60
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    neg-float v3, v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_6a

    neg-float v3, v7

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    .line 255
    :cond_6a
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    const/4 v3, 0x0

    :goto_6d
    if-ge v3, v1, :cond_80

    .line 258
    aget v5, v2, v3

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    neg-float v7, v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_7d

    .line 259
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 260
    aget v6, v2, v3

    goto :goto_80

    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 266
    :cond_80
    :goto_80
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    add-int/lit8 v3, v3, 0x1

    .line 267
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    sub-float v5, v0, v5

    .line 268
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_92
    if-gt v3, v1, :cond_9e

    .line 269
    aget v7, v2, v3

    cmpl-float v7, v7, v5

    if-lez v7, :cond_9b

    goto :goto_9e

    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    :cond_9e
    :goto_9e
    add-int/lit8 v3, v3, -0x1

    .line 270
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    .line 272
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    and-int/lit8 v3, v1, 0x8

    if-nez v3, :cond_c7

    .line 273
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    aget v3, v2, v3

    sub-float/2addr v3, v6

    sub-float v3, v0, v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_cc

    .line 274
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    goto :goto_cc

    .line 276
    :cond_c7
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 279
    :cond_cc
    :goto_cc
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v1, :cond_10c

    .line 280
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 281
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 282
    aget v1, v2, v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    aget v4, v2, v4

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    neg-float v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 283
    aget v3, v2, v3

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    aget v2, v2, v4

    sub-float/2addr v3, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    sub-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 284
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    sub-float/2addr v0, v1

    .line 285
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionWidth:F

    :cond_10c
    return-void
.end method

.method changeText(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 622
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 623
    :cond_8
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 624
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 625
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1a

    :cond_19
    move-object p1, p2

    .line 626
    :goto_1a
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 627
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    xor-int/lit8 p1, v1, 0x1

    return p1
.end method

.method public clearSelection()V
    .registers 2

    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    return-void
.end method

.method protected continueCursor(II)Z
    .registers 4

    .line 774
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 775
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isWordCharacter(C)Z

    move-result p1

    return p1
.end method

.method public copy()V
    .registers 6

    .line 437
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-nez v0, :cond_23

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method protected createInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .registers 2

    .line 145
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    return-object v0
.end method

.method public cut()V
    .registers 2

    .line 445
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cut(Z)V

    return-void
.end method

.method cut(Z)V
    .registers 3

    .line 449
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-nez v0, :cond_14

    .line 450
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    .line 451
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 452
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    :cond_14
    return-void
.end method

.method delete(Z)I
    .registers 8

    .line 489
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 490
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 491
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 492
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    if-lez v2, :cond_1d

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 494
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_33

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_42

    .line 496
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->changeText(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_44

    .line 498
    :cond_42
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 499
    :goto_44
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    return v2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasKeyboardFocus()Z

    move-result v8

    .line 297
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focused:Z

    if-eq v8, v0, :cond_25

    .line 298
    iput-boolean v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focused:Z

    .line 299
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 300
    iput-boolean v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    if-eqz v8, :cond_1f

    .line 302
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    invoke-static {v0, v1, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_2a

    .line 304
    :cond_1f
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->cancel()V

    goto :goto_2a

    :cond_25
    if-nez v8, :cond_2a

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 308
    :cond_2a
    :goto_2a
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 309
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v0, :cond_3d

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_3d

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4e

    :cond_3d
    if-eqz v8, :cond_4a

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_4a

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4e

    :cond_4a
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    :goto_4e
    move-object v10, v0

    .line 311
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 312
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v13

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getX()F

    move-result v15

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getY()F

    move-result v16

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getWidth()F

    move-result v17

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getHeight()F

    move-result v5

    .line 321
    iget v0, v14, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v14, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    invoke-interface {v7, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    const/16 v18, 0x0

    if-eqz v13, :cond_98

    move-object v0, v13

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    .line 324
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 325
    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    .line 326
    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    move/from16 v19, v0

    move/from16 v20, v1

    goto :goto_9c

    :cond_98
    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 329
    :goto_9c
    invoke-virtual {v6, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getTextY(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F

    move-result v13

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->calculateOffsets()V

    if-eqz v8, :cond_b8

    .line 332
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_b8

    if-eqz v11, :cond_b8

    add-float v4, v15, v19

    add-float v5, v16, v13

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v9

    .line 333
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    .line 336
    :cond_b8
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v0

    if-eqz v0, :cond_c2

    iget v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    neg-float v0, v0

    goto :goto_c3

    :cond_c2
    const/4 v0, 0x0

    .line 337
    :goto_c3
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_122

    if-nez v8, :cond_13b

    .line 338
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    if-eqz v1, :cond_13b

    .line 339
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v1, :cond_dd

    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-object v2, v1

    goto :goto_de

    :cond_dd
    move-object v2, v9

    .line 340
    :goto_de
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_106

    .line 341
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v8, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v5, v5, v8

    mul-float v5, v5, p2

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    goto :goto_110

    .line 344
    :cond_106
    iget v1, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v1, v1, p2

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    :goto_110
    add-float v3, v15, v19

    add-float v1, v16, v13

    add-float v4, v1, v0

    sub-float v17, v17, v19

    sub-float v5, v17, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 345
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawMessageText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFF)V

    goto :goto_13b

    .line 348
    :cond_122
    iget v1, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v5, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, v5

    mul-float v4, v4, p2

    invoke-virtual {v9, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    add-float v1, v15, v19

    add-float v2, v16, v13

    add-float/2addr v2, v0

    .line 349
    invoke-virtual {v6, v7, v9, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    .line 351
    :cond_13b
    :goto_13b
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-nez v0, :cond_152

    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    if-eqz v0, :cond_152

    if-eqz v12, :cond_152

    add-float v4, v15, v19

    add-float v5, v16, v13

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v9

    .line 352
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->drawCursor(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    :cond_152
    return-void
.end method

.method protected drawCursor(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .registers 13

    .line 384
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 385
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    sub-float/2addr p4, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    add-float/2addr p4, v0

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    add-float v3, p4, v0

    iget p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    sub-float/2addr p5, p4

    .line 386
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result p3

    sub-float v4, p5, p3

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    move-object v1, p1

    move-object v2, p2

    .line 384
    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method protected drawMessageText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFF)V
    .registers 18

    move-object v0, p0

    .line 380
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v11, "..."

    move-object v1, p2

    move-object v2, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    return-void
.end method

.method protected drawSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .registers 13

    .line 371
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float/2addr p4, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    add-float/2addr p4, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    add-float v3, p4, v0

    iget p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    sub-float/2addr p5, p4

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result p3

    sub-float v4, p5, p3

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionWidth:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .registers 15

    .line 376
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float v3, p3, v0

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v0, p2

    move-object v1, p1

    move v4, p4

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    return-void
.end method

.method public getAlignment()I
    .registers 2

    .line 732
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    return v0
.end method

.method public getCursorPosition()I
    .registers 2

    .line 686
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return v0
.end method

.method public getDefaultInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .registers 2

    .line 559
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    return-object v0
.end method

.method public getMaxLength()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    return v0
.end method

.method public getMessageText()Ljava/lang/String;
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    return-object v0
.end method

.method public getOnscreenKeyboard()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;
    .registers 2

    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    return-object v0
.end method

.method public getPrefHeight()F
    .registers 5

    .line 708
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 709
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 710
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 712
    :goto_2a
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_51

    .line 713
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 714
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 713
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 715
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 717
    :cond_51
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_78

    .line 718
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 719
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 718
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 720
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 722
    :cond_78
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    add-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getPrefWidth()F
    .registers 2

    const/high16 v0, 0x43160000    # 150.0f

    return v0
.end method

.method public getProgrammaticChangeEvents()Z
    .registers 2

    .line 638
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .registers 5

    .line 646
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_1b
    const-string v0, ""

    :goto_1d
    return-object v0
.end method

.method public getSelectionStart()I
    .registers 2

    .line 642
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFieldFilter()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    return-object v0
.end method

.method protected getTextY(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F
    .registers 7

    .line 357
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getHeight()F

    move-result v0

    .line 358
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    add-float/2addr v1, v3

    if-eqz p2, :cond_1e

    .line 360
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    .line 361
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result p2

    sub-float/2addr v0, p2

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    add-float/2addr v1, v3

    goto :goto_20

    :cond_1e
    div-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 365
    :goto_20
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result p1

    if-eqz p1, :cond_28

    float-to-int p1, v1

    int-to-float v1, p1

    :cond_28
    return v1
.end method

.method protected initialize()V
    .registers 2

    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->createInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->inputListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 484
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 485
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDisabled()Z
    .registers 2

    .line 762
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    return v0
.end method

.method public isPasswordMode()Z
    .registers 2

    .line 743
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    return v0
.end method

.method protected isWordCharacter(C)Z
    .registers 2

    .line 164
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p1

    return p1
.end method

.method protected letterUnderCursor(F)I
    .registers 7

    .line 149
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 150
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getBackgroundDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    sub-float/2addr p1, v0

    .line 152
    :cond_29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 153
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_33
    if-ge v3, v0, :cond_4c

    .line 155
    aget v4, v1, v3

    cmpl-float v4, v4, p1

    if-lez v4, :cond_49

    .line 156
    aget v0, v1, v3

    sub-float/2addr v0, p1

    add-int/lit8 v2, v3, -0x1

    aget v1, v1, v2

    sub-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_48

    return v3

    :cond_48
    return v2

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_4c
    sub-int/2addr v0, v2

    return v0
.end method

.method protected moveCursor(ZZ)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 766
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, -0x1

    :cond_f
    :goto_f
    if-eqz p1, :cond_1a

    .line 768
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-ge v2, v1, :cond_2c

    goto :goto_22

    :cond_1a
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-le v2, v1, :cond_2c

    :goto_22
    if-eqz p2, :cond_2c

    .line 769
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->continueCursor(II)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_2c
    return-void
.end method

.method public next(Z)V
    .registers 12

    .line 506
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 509
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 510
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    move-object v9, p0

    .line 512
    :goto_20
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, v9

    move-object v6, v2

    move-object v7, v1

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v3

    if-nez v3, :cond_4b

    if-eqz p1, :cond_38

    const v3, -0x800001

    .line 515
    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_3e

    :cond_38
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 517
    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 518
    :goto_3e
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, v9

    move-object v6, v2

    move-object v7, v1

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->findNextTextField(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v3

    :cond_4b
    move-object v9, v3

    if-nez v9, :cond_55

    .line 521
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    goto :goto_5e

    .line 524
    :cond_55
    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 525
    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    :goto_5e
    return-void

    .line 529
    :cond_5f
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_20
.end method

.method paste(Ljava/lang/String;Z)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 458
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 460
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v2, :cond_1c

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 461
    :cond_1c
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const/4 v3, 0x0

    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_29
    if-ge v3, v4, :cond_68

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->withinMaxLength(I)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_68

    .line 464
    :cond_37
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 465
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->writeEnters:Z

    const/16 v7, 0xa

    const/16 v8, 0xd

    if-eqz v6, :cond_47

    if-eq v5, v7, :cond_62

    if-eq v5, v8, :cond_62

    :cond_47
    if-eq v5, v8, :cond_65

    if-ne v5, v7, :cond_4c

    goto :goto_65

    .line 467
    :cond_4c
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    if-eqz v6, :cond_57

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v6

    if-nez v6, :cond_57

    goto :goto_65

    .line 468
    :cond_57
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    if-eqz v6, :cond_62

    invoke-interface {v6, p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;->acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_65

    .line 470
    :cond_62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 472
    :cond_68
    :goto_68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 474
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_76

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    :cond_76
    if-eqz p2, :cond_84

    .line 476
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->changeText(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8e

    .line 478
    :cond_84
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 479
    :goto_8e
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 480
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return-void
.end method

.method public selectAll()V
    .registers 3

    .line 671
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    return-void
.end method

.method public setAlignment(I)V
    .registers 2

    .line 728
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHAlign:I

    return-void
.end method

.method public setBlinkTime(F)V
    .registers 2

    .line 754
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    return-void
.end method

.method public setClipboard(Lcom/badlogic/gdx/utils/Clipboard;)V
    .registers 2

    .line 699
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    return-void
.end method

.method public setCursorPosition(I)V
    .registers 3

    if-ltz p1, :cond_12

    .line 681
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return-void

    .line 680
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cursorPosition must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisabled(Z)V
    .registers 2

    .line 758
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    return-void
.end method

.method public setFocusTraversal(Z)V
    .registers 2

    .line 578
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    return-void
.end method

.method public setMaxLength(I)V
    .registers 2

    .line 199
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->messageText:Ljava/lang/String;

    return-void
.end method

.method public setOnlyFontChars(Z)V
    .registers 2

    .line 210
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    return-void
.end method

.method public setOnscreenKeyboard(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;)V
    .registers 2

    .line 695
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    return-void
.end method

.method public setPasswordCharacter(C)V
    .registers 2

    .line 749
    iput-char p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    .line 750
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    :cond_9
    return-void
.end method

.method public setPasswordMode(Z)V
    .registers 2

    .line 738
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    .line 739
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .registers 2

    .line 634
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    return-void
.end method

.method public setSelection(II)V
    .registers 5

    if-ltz p1, :cond_33

    if-ltz p2, :cond_2b

    .line 653
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 654
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ne p2, p1, :cond_1e

    .line 656
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    return-void

    :cond_1e
    if-ge p2, p1, :cond_23

    move v1, p2

    move p2, p1

    move p1, v1

    :cond_23
    const/4 v0, 0x1

    .line 665
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 666
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 667
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return-void

    .line 652
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selectionEnd must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 651
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selectionStart must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .registers 4

    if-eqz p1, :cond_1b

    .line 215
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 216
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textHeight:F

    .line 217
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->invalidateHierarchy()V

    return-void

    .line 214
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    .line 604
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 606
    :cond_e
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 607
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 608
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste(Ljava/lang/String;Z)V

    .line 610
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->programmaticChangeEvents:Z

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->changeText(Ljava/lang/String;Ljava/lang/String;)Z

    .line 611
    :cond_22
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return-void
.end method

.method public setTextFieldFilter(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;)V
    .registers 2

    .line 569
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    return-void
.end method

.method public setTextFieldListener(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;)V
    .registers 2

    .line 564
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    return-void
.end method

.method updateDisplayText()V
    .registers 10

    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 391
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 393
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_14
    const/16 v6, 0x20

    if-ge v5, v3, :cond_29

    .line 397
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 398
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v8

    if-eqz v8, :cond_23

    move v6, v7

    :cond_23
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 400
    :cond_29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-eqz v4, :cond_6d

    iget-char v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 403
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    if-nez v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    .line 404
    :cond_48
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v3, :cond_56

    .line 405
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_68

    .line 407
    :cond_56
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_5c
    if-ge v1, v3, :cond_68

    .line 408
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    iget-char v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordCharacter:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 410
    :cond_68
    :goto_68
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordBuffer:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    goto :goto_6f

    .line 412
    :cond_6d
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    .line 414
    :goto_6f
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->displayText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_bc

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 419
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 420
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->first()F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    .line 421
    iget v5, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v1, 0x1

    const/4 v6, 0x0

    :goto_ab
    if-ge v1, v5, :cond_ba

    .line 422
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 423
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    add-float/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_ba
    move v1, v6

    goto :goto_be

    .line 426
    :cond_bc
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fontOffset:F

    .line 427
    :goto_be
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 429
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 430
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v5, v4

    invoke-static {v0, v1, v5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    .line 432
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_e9

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    :cond_e9
    return-void
.end method

.method withinMaxLength(I)Z
    .registers 3

    .line 195
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->maxLength:I

    if-lez v0, :cond_9

    if-ge p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method wordUnderCursor(F)[I
    .registers 2

    .line 191
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->letterUnderCursor(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->wordUnderCursor(I)[I

    move-result-object p1

    return-object p1
.end method

.method protected wordUnderCursor(I)[I
    .registers 8

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt p1, v2, :cond_14

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    goto :goto_3a

    :cond_14
    move v2, p1

    :goto_15
    if-ge v2, v1, :cond_26

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isWordCharacter(C)Z

    move-result v5

    if-nez v5, :cond_23

    move v1, v2

    goto :goto_26

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_26
    :goto_26
    sub-int/2addr p1, v4

    :goto_27
    const/4 v2, -0x1

    if-le p1, v2, :cond_39

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isWordCharacter(C)Z

    move-result v2

    if-nez v2, :cond_36

    add-int/2addr p1, v4

    goto :goto_3a

    :cond_36
    add-int/lit8 p1, p1, -0x1

    goto :goto_27

    :cond_39
    const/4 p1, 0x0

    :goto_3a
    const/4 v0, 0x2

    .line 187
    new-array v0, v0, [I

    aput p1, v0, v3

    aput v1, v0, v4

    return-object v0
.end method
