.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "Button.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    }
.end annotation


# instance fields
.field buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field focused:Z

.field isChecked:Z

.field isDisabled:Z

.field private programmaticChangeEvents:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 86
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 72
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 74
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 75
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 4

    .line 117
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 5

    .line 67
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 79
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 81
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 54
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 55
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 56
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    .line 61
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 62
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 63
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 4

    .line 105
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 5

    .line 109
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 5

    .line 113
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-void
.end method

.method private initialize()V
    .registers 2

    .line 90
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 91
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 97
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 10

    .line 212
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->validate()V

    .line 214
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v0

    .line 215
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed()Z

    move-result v1

    .line 216
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked()Z

    move-result v2

    .line 217
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isOver()Z

    move-result v3

    if-eqz v0, :cond_20

    .line 220
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_20

    .line 221
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_7e

    :cond_20
    if-eqz v1, :cond_2d

    .line 222
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_2d

    .line 223
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_7e

    :cond_2d
    if-eqz v2, :cond_56

    .line 224
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_56

    .line 225
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_42

    if-eqz v3, :cond_42

    .line 226
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_7e

    .line 227
    :cond_42
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedFocused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_51

    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->focused:Z

    if-eqz v3, :cond_51

    .line 228
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedFocused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_7e

    .line 230
    :cond_51
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_7e

    :cond_56
    if-eqz v3, :cond_63

    .line 232
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_63

    .line 233
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_7e

    .line 234
    :cond_63
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->focused:Z

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->focused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_72

    .line 235
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->focused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_7e

    .line 236
    :cond_72
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_7d

    .line 238
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_7e

    :cond_7d
    const/4 v3, 0x0

    .line 240
    :goto_7e
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    if-eqz v1, :cond_8e

    if-nez v0, :cond_8e

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetX:F

    .line 245
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetY:F

    goto :goto_a3

    :cond_8e
    if-eqz v2, :cond_9b

    if-nez v0, :cond_9b

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOffsetX:F

    .line 248
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOffsetY:F

    goto :goto_a3

    .line 250
    :cond_9b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetX:F

    .line 251
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetY:F

    .line 254
    :goto_a3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 255
    :goto_a9
    iget v6, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_b9

    .line 256
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->moveBy(FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    .line 257
    :cond_b9
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 258
    :goto_bc
    iget p1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, p1, :cond_ce

    .line 259
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    neg-float p2, v0

    neg-float v5, v2

    invoke-virtual {p1, p2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->moveBy(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    .line 261
    :cond_ce
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_e7

    .line 262
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result p1

    if-eqz p1, :cond_e7

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isPressed()Z

    move-result p1

    if-eq v1, p1, :cond_e7

    .line 263
    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_e7
    return-void
.end method

.method public getButtonGroup()Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    return-object v0
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-object v0
.end method

.method public getMinHeight()F
    .registers 2

    .line 287
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .registers 2

    .line 283
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .registers 3

    .line 275
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 277
    :cond_16
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 278
    :cond_28
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_3a
    return v0
.end method

.method public getPrefWidth()F
    .registers 3

    .line 267
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 269
    :cond_16
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 270
    :cond_28
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_3a
    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    return v0
.end method

.method public isDisabled()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    return v0
.end method

.method public isOver()Z
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isVisualPressed()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3

    .line 121
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(ZZ)V

    return-void
.end method

.method setChecked(ZZ)V
    .registers 4

    .line 125
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->canCheck(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Z)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 127
    :cond_10
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-eqz p2, :cond_29

    .line 130
    const-class p2, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 131
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    if-eqz v0, :cond_26

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    .line 132
    :cond_26
    invoke-static {p2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public setDisabled(Z)V
    .registers 2

    .line 164
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .registers 2

    .line 170
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->programmaticChangeEvents:Z

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .registers 3

    if-eqz p1, :cond_68

    .line 175
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 178
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 179
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_17

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_64

    :cond_17
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_64

    .line 181
    :cond_1a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_27

    .line 182
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_64

    .line 183
    :cond_27
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4a

    .line 184
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isOver()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_3c

    .line 185
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_64

    .line 186
    :cond_3c
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->focused:Z

    if-eqz v0, :cond_47

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedFocused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_47

    .line 187
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedFocused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_64

    .line 189
    :cond_47
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_64

    .line 190
    :cond_4a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isOver()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_57

    .line 191
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_64

    .line 192
    :cond_57
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->focused:Z

    if-eqz v0, :cond_62

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->focused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_62

    .line 193
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->focused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_64

    .line 195
    :cond_62
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 197
    :goto_64
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-void

    .line 174
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toggle()V
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    return-void
.end method
