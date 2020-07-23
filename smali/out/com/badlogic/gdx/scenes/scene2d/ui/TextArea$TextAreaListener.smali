.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextAreaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    return-void
.end method


# virtual methods
.method protected goEnd(Z)V
    .registers 4

    if-nez p1, :cond_32

    .line 455
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v0

    if-lt p1, v0, :cond_f

    goto :goto_32

    .line 457
    :cond_f
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_3c

    .line 458
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_3c

    .line 456
    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    :cond_3c
    :goto_3c
    return-void
.end method

.method protected goHome(Z)V
    .registers 4

    if-eqz p1, :cond_8

    .line 447
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_26

    .line 448
    :cond_8
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_26

    .line 449
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    :cond_26
    :goto_26
    return-void
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .registers 6

    .line 397
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result p1

    .line 398
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasKeyboardFocus()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 400
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v0, 0x3b

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_25

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x3c

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x1

    :goto_26
    const/16 v2, 0x14

    if-ne p2, v2, :cond_4c

    if-eqz p1, :cond_3d

    .line 403
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    if-nez p1, :cond_42

    .line 404
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    .line 405
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iput-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    goto :goto_42

    .line 408
    :cond_3d
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->clearSelection()V

    .line 410
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveCursorLine(I)V

    :goto_4a
    const/4 v0, 0x1

    goto :goto_77

    :cond_4c
    const/16 v2, 0x13

    if-ne p2, v2, :cond_71

    if-eqz p1, :cond_63

    .line 415
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    if-nez p1, :cond_68

    .line 416
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    .line 417
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iput-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    goto :goto_68

    .line 420
    :cond_63
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->clearSelection()V

    .line 422
    :cond_68
    :goto_68
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveCursorLine(I)V

    goto :goto_4a

    .line 426
    :cond_71
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    :goto_77
    if-eqz v0, :cond_7c

    .line 429
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->scheduleKeyRepeatTask(I)V

    .line 431
    :cond_7c
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    return v1

    :cond_82
    return p1
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .registers 3

    .line 439
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z

    move-result p1

    .line 440
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    return p1
.end method

.method protected setCursorPosition(FF)V
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 374
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 375
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 377
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v2

    if-eqz v0, :cond_22

    .line 380
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    sub-float/2addr v2, v3

    .line 381
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    sub-float/2addr p1, v3

    :cond_22
    const/4 v3, 0x0

    .line 383
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    if-eqz v0, :cond_2e

    .line 385
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    sub-float/2addr p2, v0

    .line 388
    :cond_2e
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    sub-float/2addr v2, p2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v1

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/4 v1, 0x0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 391
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    .line 392
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    return-void
.end method
