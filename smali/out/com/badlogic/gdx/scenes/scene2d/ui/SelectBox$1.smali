.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SelectBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .registers 6

    const/4 p1, 0x0

    if-nez p4, :cond_6

    if-eqz p5, :cond_6

    return p1

    .line 87
    :cond_6
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-boolean p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->disabled:Z

    if-eqz p2, :cond_d

    return p1

    .line 88
    :cond_d
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hasParent()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 89
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->hideList()V

    goto :goto_22

    .line 91
    :cond_1d
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->showList()V

    :goto_22
    const/4 p1, 0x1

    return p1
.end method
