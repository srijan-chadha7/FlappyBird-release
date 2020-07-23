.class final Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters$5;
.super Ljava/lang/Object;
.source "ParticleShader.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isGlobal(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;I)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .registers 5

    .line 171
    sget-object p3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p3}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->set(IF)Z

    return-void
.end method
