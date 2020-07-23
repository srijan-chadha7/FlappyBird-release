.class Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .registers 6

    const/4 p1, -0x1

    if-nez p4, :cond_7

    .line 155
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    :cond_7
    if-ne p4, p1, :cond_d

    .line 156
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    :cond_d
    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .registers 4

    .line 150
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result p2

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    const/4 p1, 0x0

    return p1
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 6

    const/4 p1, 0x1

    if-nez p4, :cond_4a

    if-eqz p5, :cond_6

    goto :goto_4a

    .line 130
    :cond_6
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled()Z

    move-result p2

    if-eqz p2, :cond_11

    return p1

    .line 131
    :cond_11
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p2

    if-eqz p2, :cond_24

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p2

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 132
    :cond_24
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p2, :cond_2d

    return p1

    .line 133
    :cond_2d
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_37

    return p1

    .line 135
    :cond_37
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p3, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p4, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p4, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->choose(Ljava/lang/Object;)V

    .line 136
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput p2, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    :cond_4a
    :goto_4a
    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .registers 5

    .line 146
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result p2

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .registers 6

    if-nez p4, :cond_a

    if-eqz p5, :cond_5

    goto :goto_a

    .line 142
    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    const/4 p2, -0x1

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    :cond_a
    :goto_a
    return-void
.end method
