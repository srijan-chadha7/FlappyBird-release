.class final Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1285
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .registers 2

    .line 1287
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    .line 1288
    :cond_8
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result p1

    :goto_c
    return p1
.end method
