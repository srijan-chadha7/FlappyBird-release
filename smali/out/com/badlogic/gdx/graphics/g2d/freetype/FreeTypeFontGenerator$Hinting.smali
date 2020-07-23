.class public final enum Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;
.super Ljava/lang/Enum;
.source "FreeTypeFontGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Hinting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

.field public static final enum AutoFull:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

.field public static final enum AutoMedium:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

.field public static final enum AutoSlight:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

.field public static final enum Full:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

.field public static final enum Medium:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

.field public static final enum None:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

.field public static final enum Slight:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 708
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->None:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    .line 710
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    const/4 v2, 0x1

    const-string v3, "Slight"

    invoke-direct {v0, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->Slight:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    .line 712
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    const/4 v3, 0x2

    const-string v4, "Medium"

    invoke-direct {v0, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->Medium:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    .line 714
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    const/4 v4, 0x3

    const-string v5, "Full"

    invoke-direct {v0, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->Full:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    .line 716
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    const/4 v5, 0x4

    const-string v6, "AutoSlight"

    invoke-direct {v0, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->AutoSlight:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    .line 718
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    const/4 v6, 0x5

    const-string v7, "AutoMedium"

    invoke-direct {v0, v7, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->AutoMedium:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    .line 720
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    const/4 v7, 0x6

    const-string v8, "AutoFull"

    invoke-direct {v0, v8, v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->AutoFull:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    const/4 v0, 0x7

    .line 706
    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->None:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    aput-object v8, v0, v1

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->Slight:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->Medium:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->Full:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->AutoSlight:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->AutoMedium:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->AutoFull:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    aput-object v1, v0, v7

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->$VALUES:[Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 706
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;
    .registers 2

    .line 706
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;
    .registers 1

    .line 706
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->$VALUES:[Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    return-object v0
.end method
