.class Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    return-void
.end method


# virtual methods
.method protected changed()V
    .registers 3

    .line 69
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->size()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_1a

    .line 74
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_1a

    .line 71
    :cond_15
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    :goto_1a
    return-void
.end method
