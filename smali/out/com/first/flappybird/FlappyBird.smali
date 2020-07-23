.class public Lcom/first/flappybird/FlappyBird;
.super Lcom/badlogic/gdx/ApplicationAdapter;
.source "FlappyBird.java"


# instance fields
.field background:Lcom/badlogic/gdx/graphics/Texture;

.field backgroundMusic:Lcom/badlogic/gdx/audio/Music;

.field batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field birdCircle:Lcom/badlogic/gdx/math/Circle;

.field birdY:F

.field birds:[Lcom/badlogic/gdx/graphics/Texture;

.field blank:Lcom/badlogic/gdx/audio/Music;

.field bottomTube:Lcom/badlogic/gdx/graphics/Texture;

.field bottomTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

.field distanceBetweenTubes:F

.field flap:Lcom/badlogic/gdx/audio/Music;

.field flapState:I

.field font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field font1:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field gameOver:Lcom/badlogic/gdx/graphics/Texture;

.field gameState:I

.field gap:F

.field gravity:F

.field list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field logo:Lcom/badlogic/gdx/graphics/Texture;

.field maxTubeOffset:F

.field numberOfTubes:I

.field point:Lcom/badlogic/gdx/audio/Music;

.field randomGenerator:Ljava/util/Random;

.field score:I

.field scoringTube:I

.field shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field tap:Lcom/badlogic/gdx/graphics/Texture;

.field temp:I

.field topTube:Lcom/badlogic/gdx/graphics/Texture;

.field topTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

.field tubeOffset:[F

.field tubeVelocity:F

.field tubeX:[F

.field velocity:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Lcom/badlogic/gdx/ApplicationAdapter;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/first/flappybird/FlappyBird;->flapState:I

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/first/flappybird/FlappyBird;->birdY:F

    .line 51
    iput v1, p0, Lcom/first/flappybird/FlappyBird;->velocity:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 52
    iput v1, p0, Lcom/first/flappybird/FlappyBird;->gravity:F

    const/high16 v1, 0x43c80000    # 400.0f

    .line 53
    iput v1, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    .line 62
    iput v0, p0, Lcom/first/flappybird/FlappyBird;->gameState:I

    .line 63
    iput v0, p0, Lcom/first/flappybird/FlappyBird;->score:I

    .line 64
    iput v0, p0, Lcom/first/flappybird/FlappyBird;->scoringTube:I

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->list:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public create()V
    .registers 5

    .line 75
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "bgm.mp3"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->backgroundMusic:Lcom/badlogic/gdx/audio/Music;

    .line 76
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->backgroundMusic:Lcom/badlogic/gdx/audio/Music;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 77
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "sfx_point.wav"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->point:Lcom/badlogic/gdx/audio/Music;

    .line 78
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->point:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 79
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "sfx_wing.wav"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->flap:Lcom/badlogic/gdx/audio/Music;

    .line 80
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->flap:Lcom/badlogic/gdx/audio/Music;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 81
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "blank.mp3"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->blank:Lcom/badlogic/gdx/audio/Music;

    .line 82
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->blank:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    const-string v1, "bg.png"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->background:Lcom/badlogic/gdx/graphics/Texture;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    const-string v1, "logo.png"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->logo:Lcom/badlogic/gdx/graphics/Texture;

    .line 87
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    const-string v1, "tap.png"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->tap:Lcom/badlogic/gdx/graphics/Texture;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    const-string v1, "gameover.png"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->gameOver:Lcom/badlogic/gdx/graphics/Texture;

    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>()V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 91
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 92
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>()V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->font1:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 94
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->font1:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->YELLOW:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->font1:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v0, 0x2

    .line 98
    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->birds:[Lcom/badlogic/gdx/graphics/Texture;

    .line 99
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->birds:[Lcom/badlogic/gdx/graphics/Texture;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    const-string v2, "bird.png"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 100
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->birds:[Lcom/badlogic/gdx/graphics/Texture;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    const-string v2, "bird2.png"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 103
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/first/flappybird/FlappyBird;->distanceBetweenTubes:F

    .line 104
    iput v1, p0, Lcom/first/flappybird/FlappyBird;->numberOfTubes:I

    .line 105
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->numberOfTubes:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/first/flappybird/FlappyBird;->tubeOffset:[F

    .line 106
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    .line 107
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    const-string v1, "toptube.png"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->topTube:Lcom/badlogic/gdx/graphics/Texture;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    const-string v1, "bottomtube.png"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->bottomTube:Lcom/badlogic/gdx/graphics/Texture;

    .line 109
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/first/flappybird/FlappyBird;->maxTubeOffset:F

    .line 110
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->randomGenerator:Ljava/util/Random;

    const/high16 v0, 0x40800000    # 4.0f

    .line 111
    iput v0, p0, Lcom/first/flappybird/FlappyBird;->tubeVelocity:F

    .line 113
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/math/Circle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Circle;-><init>()V

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->birdCircle:Lcom/badlogic/gdx/math/Circle;

    .line 115
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->numberOfTubes:I

    new-array v1, v0, [Lcom/badlogic/gdx/math/Rectangle;

    iput-object v1, p0, Lcom/first/flappybird/FlappyBird;->topTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

    .line 116
    new-array v0, v0, [Lcom/badlogic/gdx/math/Rectangle;

    iput-object v0, p0, Lcom/first/flappybird/FlappyBird;->bottomTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

    .line 118
    invoke-virtual {p0}, Lcom/first/flappybird/FlappyBird;->startGame()V

    return-void
.end method

.method public dispose()V
    .registers 2

    .line 262
    invoke-super {p0}, Lcom/badlogic/gdx/ApplicationAdapter;->dispose()V

    .line 263
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->backgroundMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    .line 264
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->flap:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    .line 265
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->point:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    return-void
.end method

.method public render()V
    .registers 14

    .line 136
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->backgroundMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 138
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 139
    iget-object v1, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v2, p0, Lcom/first/flappybird/FlappyBird;->background:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v5, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 141
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->gameState:I

    const/4 v1, 0x0

    const/high16 v2, 0x43480000    # 200.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v4, :cond_1a9

    .line 143
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    iget v6, p0, Lcom/first/flappybird/FlappyBird;->scoringTube:I

    aget v0, v0, v6

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    cmpg-float v0, v0, v6

    if-gez v0, :cond_61

    .line 145
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->score:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/first/flappybird/FlappyBird;->score:I

    .line 146
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->point:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 147
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget v6, p0, Lcom/first/flappybird/FlappyBird;->score:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Score "

    invoke-interface {v0, v7, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->scoringTube:I

    iget v6, p0, Lcom/first/flappybird/FlappyBird;->numberOfTubes:I

    sub-int/2addr v6, v4

    if-ge v0, v6, :cond_5f

    add-int/2addr v0, v4

    .line 149
    iput v0, p0, Lcom/first/flappybird/FlappyBird;->scoringTube:I

    goto :goto_61

    .line 151
    :cond_5f
    iput v3, p0, Lcom/first/flappybird/FlappyBird;->scoringTube:I

    .line 154
    :cond_61
    :goto_61
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->justTouched()Z

    move-result v0

    if-eqz v0, :cond_72

    const/high16 v0, -0x3e100000    # -30.0f

    .line 156
    iput v0, p0, Lcom/first/flappybird/FlappyBird;->velocity:F

    .line 157
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->flap:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    :cond_72
    const/4 v0, 0x0

    .line 159
    :goto_73
    iget v6, p0, Lcom/first/flappybird/FlappyBird;->numberOfTubes:I

    if-ge v0, v6, :cond_184

    .line 161
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    aget v6, v6, v0

    iget-object v7, p0, Lcom/first/flappybird/FlappyBird;->topTube:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b0

    .line 163
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    aget v7, v6, v0

    iget v8, p0, Lcom/first/flappybird/FlappyBird;->numberOfTubes:I

    int-to-float v8, v8

    iget v9, p0, Lcom/first/flappybird/FlappyBird;->distanceBetweenTubes:F

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v0

    .line 164
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->tubeOffset:[F

    iget-object v7, p0, Lcom/first/flappybird/FlappyBird;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v8, v9

    sub-float/2addr v8, v2

    mul-float v7, v7, v8

    aput v7, v6, v0

    goto :goto_b9

    .line 168
    :cond_b0
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    aget v7, v6, v0

    iget v8, p0, Lcom/first/flappybird/FlappyBird;->tubeVelocity:F

    sub-float/2addr v7, v8

    aput v7, v6, v0

    .line 171
    :goto_b9
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v7, p0, Lcom/first/flappybird/FlappyBird;->topTube:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v8, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    aget v8, v8, v0

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    iget v10, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/first/flappybird/FlappyBird;->tubeOffset:[F

    aget v10, v10, v0

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 172
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v7, p0, Lcom/first/flappybird/FlappyBird;->bottomTube:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v8, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    aget v8, v8, v0

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    iget v10, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/first/flappybird/FlappyBird;->bottomTube:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/first/flappybird/FlappyBird;->tubeOffset:[F

    aget v10, v10, v0

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 174
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->topTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

    new-instance v7, Lcom/badlogic/gdx/math/Rectangle;

    iget-object v8, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    aget v8, v8, v0

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    iget v10, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/first/flappybird/FlappyBird;->tubeOffset:[F

    aget v10, v10, v0

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/first/flappybird/FlappyBird;->topTube:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v12, p0, Lcom/first/flappybird/FlappyBird;->topTube:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v7, v8, v9, v10, v12}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    aput-object v7, v6, v0

    .line 175
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->bottomTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

    new-instance v7, Lcom/badlogic/gdx/math/Rectangle;

    iget-object v8, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    aget v8, v8, v0

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    iget v10, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/first/flappybird/FlappyBird;->bottomTube:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/first/flappybird/FlappyBird;->tubeOffset:[F

    aget v10, v10, v0

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/first/flappybird/FlappyBird;->bottomTube:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/first/flappybird/FlappyBird;->bottomTube:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    aput-object v7, v6, v0

    .line 177
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget v8, p0, Lcom/first/flappybird/FlappyBird;->score:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    iget v10, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x43af0000    # 350.0f

    add-float/2addr v9, v10

    sget-object v10, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v10}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_73

    .line 182
    :cond_184
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->birdY:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1a5

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a5

    .line 184
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->velocity:F

    iget v1, p0, Lcom/first/flappybird/FlappyBird;->gravity:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/first/flappybird/FlappyBird;->velocity:F

    .line 185
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->birdY:F

    iget v1, p0, Lcom/first/flappybird/FlappyBird;->velocity:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/first/flappybird/FlappyBird;->birdY:F

    goto/16 :goto_30b

    .line 190
    :cond_1a5
    iput v5, p0, Lcom/first/flappybird/FlappyBird;->gameState:I

    goto/16 :goto_30b

    :cond_1a9
    const/high16 v6, 0x3fc00000    # 1.5f

    if-nez v0, :cond_1f6

    .line 196
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/first/flappybird/FlappyBird;->logo:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    iget-object v8, p0, Lcom/first/flappybird/FlappyBird;->logo:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    mul-float v9, v9, v6

    sub-float/2addr v8, v9

    invoke-virtual {v0, v1, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 197
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/first/flappybird/FlappyBird;->tap:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    div-int/2addr v6, v5

    iget-object v7, p0, Lcom/first/flappybird/FlappyBird;->tap:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v7, v2

    invoke-virtual {v0, v1, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 198
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->justTouched()Z

    move-result v0

    if-eqz v0, :cond_30b

    .line 200
    iput v4, p0, Lcom/first/flappybird/FlappyBird;->gameState:I

    goto/16 :goto_30b

    :cond_1f6
    if-ne v0, v5, :cond_30b

    .line 207
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->backgroundMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    .line 209
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v7, p0, Lcom/first/flappybird/FlappyBird;->gameOver:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    iget-object v9, p0, Lcom/first/flappybird/FlappyBird;->gameOver:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v9

    div-int/2addr v9, v5

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    mul-float v10, v10, v6

    sub-float/2addr v9, v10

    invoke-virtual {v0, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 210
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->font1:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Final Score : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/first/flappybird/FlappyBird;->score:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    iget v9, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x42aa0000    # 85.0f

    add-float/2addr v8, v9

    sget-object v10, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v10}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x43960000    # 300.0f

    sub-float/2addr v10, v11

    invoke-virtual {v0, v6, v7, v8, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 212
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->list:Ljava/util/LinkedList;

    iget v6, p0, Lcom/first/flappybird/FlappyBird;->score:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 214
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->list:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    const/4 v6, 0x0

    .line 215
    :goto_275
    array-length v7, v0

    if-ge v6, v7, :cond_2a5

    add-int/lit8 v7, v6, 0x1

    move v8, v7

    .line 217
    :goto_27b
    array-length v10, v0

    if-ge v8, v10, :cond_2a3

    .line 219
    aget-object v10, v0, v8

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v11, v0, v6

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v10, v11, :cond_2a0

    .line 221
    aget-object v10, v0, v6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/first/flappybird/FlappyBird;->temp:I

    .line 222
    aget-object v10, v0, v8

    aput-object v10, v0, v6

    .line 223
    iget v10, p0, Lcom/first/flappybird/FlappyBird;->temp:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v8

    :cond_2a0
    add-int/lit8 v8, v8, 0x1

    goto :goto_27b

    :cond_2a3
    move v6, v7

    goto :goto_275

    .line 227
    :cond_2a5
    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->font1:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "High Score : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v0

    sub-int/2addr v10, v4

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    iget v10, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v8, v10

    add-float/2addr v8, v9

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x43fa0000    # 500.0f

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v0, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 229
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v6, p0, Lcom/first/flappybird/FlappyBird;->tap:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    iget-object v8, p0, Lcom/first/flappybird/FlappyBird;->tap:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v8, v2

    invoke-virtual {v0, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 231
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->justTouched()Z

    move-result v0

    if-eqz v0, :cond_30b

    .line 233
    iput v4, p0, Lcom/first/flappybird/FlappyBird;->gameState:I

    .line 234
    invoke-virtual {p0}, Lcom/first/flappybird/FlappyBird;->startGame()V

    .line 235
    iput v3, p0, Lcom/first/flappybird/FlappyBird;->score:I

    .line 236
    iput v3, p0, Lcom/first/flappybird/FlappyBird;->scoringTube:I

    .line 237
    iput v1, p0, Lcom/first/flappybird/FlappyBird;->velocity:F

    .line 241
    :cond_30b
    :goto_30b
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->flapState:I

    if-nez v0, :cond_312

    .line 242
    iput v4, p0, Lcom/first/flappybird/FlappyBird;->flapState:I

    goto :goto_314

    .line 244
    :cond_312
    iput v3, p0, Lcom/first/flappybird/FlappyBird;->flapState:I

    .line 246
    :goto_314
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/first/flappybird/FlappyBird;->birds:[Lcom/badlogic/gdx/graphics/Texture;

    iget v2, p0, Lcom/first/flappybird/FlappyBird;->flapState:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    div-int/2addr v2, v5

    iget-object v4, p0, Lcom/first/flappybird/FlappyBird;->birds:[Lcom/badlogic/gdx/graphics/Texture;

    iget v6, p0, Lcom/first/flappybird/FlappyBird;->flapState:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    div-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/first/flappybird/FlappyBird;->birdY:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 248
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 250
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->birdCircle:Lcom/badlogic/gdx/math/Circle;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    int-to-float v1, v1

    iget v2, p0, Lcom/first/flappybird/FlappyBird;->birdY:F

    iget-object v4, p0, Lcom/first/flappybird/FlappyBird;->birds:[Lcom/badlogic/gdx/graphics/Texture;

    iget v6, p0, Lcom/first/flappybird/FlappyBird;->flapState:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/first/flappybird/FlappyBird;->birds:[Lcom/badlogic/gdx/graphics/Texture;

    iget v6, p0, Lcom/first/flappybird/FlappyBird;->flapState:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Circle;->set(FFF)V

    .line 252
    :goto_362
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->numberOfTubes:I

    if-ge v3, v0, :cond_383

    .line 254
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->birdCircle:Lcom/badlogic/gdx/math/Circle;

    iget-object v1, p0, Lcom/first/flappybird/FlappyBird;->topTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Intersector;->overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-nez v0, :cond_37e

    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->birdCircle:Lcom/badlogic/gdx/math/Circle;

    iget-object v1, p0, Lcom/first/flappybird/FlappyBird;->bottomTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Intersector;->overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_380

    .line 255
    :cond_37e
    iput v5, p0, Lcom/first/flappybird/FlappyBird;->gameState:I

    :cond_380
    add-int/lit8 v3, v3, 0x1

    goto :goto_362

    :cond_383
    return-void
.end method

.method public startGame()V
    .registers 6

    .line 123
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/first/flappybird/FlappyBird;->birds:[Lcom/badlogic/gdx/graphics/Texture;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/first/flappybird/FlappyBird;->birdY:F

    .line 124
    :goto_17
    iget v0, p0, Lcom/first/flappybird/FlappyBird;->numberOfTubes:I

    if-ge v2, v0, :cond_6f

    .line 126
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->tubeOffset:[F

    iget-object v1, p0, Lcom/first/flappybird/FlappyBird;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v1, v3

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/first/flappybird/FlappyBird;->gap:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    aput v1, v0, v2

    .line 127
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->tubeX:[F

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/first/flappybird/FlappyBird;->topTube:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v3, v2

    iget v4, p0, Lcom/first/flappybird/FlappyBird;->distanceBetweenTubes:F

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    aput v1, v0, v2

    .line 128
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->topTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    aput-object v1, v0, v2

    .line 129
    iget-object v0, p0, Lcom/first/flappybird/FlappyBird;->bottomTubeRectangles:[Lcom/badlogic/gdx/math/Rectangle;

    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_6f
    return-void
.end method
