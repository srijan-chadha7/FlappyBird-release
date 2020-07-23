.class Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 6

    .line 192
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p4, 0x43160000    # 150.0f

    cmpl-float p1, p1, p4

    if-lez p1, :cond_23

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz p1, :cond_23

    .line 193
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    .line 194
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 195
    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus:Z

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus()V

    .line 197
    :cond_23
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_45

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz p1, :cond_45

    .line 198
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    .line 199
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    neg-float p2, p3

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 200
    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus:Z

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus()V

    :cond_45
    return-void
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .registers 3

    .line 205
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 206
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    if-ne p1, v0, :cond_15

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    :cond_15
    const/4 p1, 0x1

    return p1

    .line 208
    :cond_17
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    if-eqz v0, :cond_28

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isTouchFocusCancel()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 209
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancel()V

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V
    .registers 6

    .line 184
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    .line 185
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    sub-float/2addr p2, p4

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 186
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    add-float/2addr p2, p5

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 187
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp()V

    .line 188
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus:Z

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2a

    cmpl-float p1, p4, p2

    if-nez p1, :cond_34

    :cond_2a
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz p1, :cond_39

    cmpl-float p1, p5, p2

    if-eqz p1, :cond_39

    :cond_34
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus()V

    :cond_39
    return-void
.end method
