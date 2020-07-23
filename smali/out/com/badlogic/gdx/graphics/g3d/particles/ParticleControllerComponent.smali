.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
.super Ljava/lang/Object;
.source "ParticleControllerComponent.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/badlogic/gdx/utils/Json$Serializable;
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;


# static fields
.field protected static final TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

.field protected static final TMP_M4:Lcom/badlogic/gdx/math/Matrix4;

.field protected static final TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

.field protected static final TMP_Q2:Lcom/badlogic/gdx/math/Quaternion;

.field protected static final TMP_V1:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V2:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V3:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V4:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V5:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V6:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field protected controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V4:Lcom/badlogic/gdx/math/Vector3;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V5:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_Q2:Lcom/badlogic/gdx/math/Quaternion;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->TMP_M4:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .registers 3

    return-void
.end method

.method public allocateChannels()V
    .registers 1

    return-void
.end method

.method public abstract copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public end()V
    .registers 1

    return-void
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public killParticles(II)V
    .registers 3

    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .registers 3

    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 3

    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .registers 3

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public update()V
    .registers 1

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .registers 2

    return-void
.end method
