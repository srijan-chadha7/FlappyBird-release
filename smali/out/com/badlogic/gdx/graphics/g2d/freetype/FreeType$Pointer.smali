.class Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pointer"
.end annotation


# instance fields
.field address:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    return-void
.end method
