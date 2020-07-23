.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    }
.end annotation


# instance fields
.field draggingPointer:I

.field mouseOver:Z

.field private snapValues:[F

.field private threshold:F

.field private visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 12

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_f

    const-string v1, "vertical"

    goto :goto_11

    :cond_f
    const-string v1, "horizontal"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 13

    .line 53
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .registers 6

    .line 66
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 44
    sget-object p1, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 68
    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method


# virtual methods
.method calculatePositionAndValue(FF)Z
    .registers 11

    .line 125
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    .line 127
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_13

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_15

    :cond_13
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 130
    :goto_15
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 132
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMinValue()F

    move-result v3

    .line 133
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMaxValue()F

    move-result v4

    .line 135
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-eqz v5, :cond_6d

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getHeight()F

    move-result p1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v5

    sub-float/2addr p1, v5

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    sub-float/2addr p1, v5

    if-nez v1, :cond_38

    const/4 v1, 0x0

    goto :goto_3c

    .line 137
    :cond_38
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    .line 138
    :goto_3c
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    sub-float/2addr p2, v5

    mul-float v6, v6, v1

    sub-float/2addr p2, v6

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float/2addr v4, v3

    .line 139
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float/2addr p1, v1

    div-float/2addr v5, p1

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p2

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 140
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result p2

    invoke-static {v7, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 141
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    goto :goto_b3

    .line 143
    :cond_6d
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getWidth()F

    move-result p2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    sub-float/2addr p2, v5

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v5

    sub-float/2addr p2, v5

    if-nez v1, :cond_7f

    const/4 v1, 0x0

    goto :goto_83

    .line 144
    :cond_7f
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    .line 145
    :goto_83
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    sub-float/2addr p1, v5

    mul-float v6, v6, v1

    sub-float/2addr p1, v6

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float/2addr v4, v3

    .line 146
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    sub-float/2addr p2, v1

    div-float/2addr v5, p2

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p1

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    .line 147
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result p1

    invoke-static {v7, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 148
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 152
    :goto_b3
    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 p2, 0x3b

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-nez p1, :cond_cc

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 p2, 0x3c

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-nez p1, :cond_cc

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snap(F)F

    move-result p1

    goto :goto_cd

    :cond_cc
    move p1, v3

    .line 153
    :goto_cd
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)Z

    move-result p2

    cmpl-float p1, p1, v3

    if-nez p1, :cond_d7

    .line 154
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    :cond_d7
    return p2
.end method

.method protected getKnobDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 3

    .line 118
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    .line 119
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_f

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_29

    .line 120
    :cond_f
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1c

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_29

    :cond_1c
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->mouseOver:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_27

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knobOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_29

    :cond_27
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_29
    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    .registers 2

    .line 114
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    return-object v0
.end method

.method public isDragging()Z
    .registers 3

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setSnapToValues([FF)V
    .registers 3

    .line 178
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    .line 179
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->threshold:F

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 107
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    if-eqz v0, :cond_a

    .line 108
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    return-void

    .line 107
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style must be a SliderStyle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "style cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisualInterpolationInverse(Lcom/badlogic/gdx/math/Interpolation;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method protected snap(F)F
    .registers 9

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    if-eqz v0, :cond_35

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_35

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 162
    :goto_f
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->snapValues:[F

    array-length v5, v4

    if-ge v1, v5, :cond_2f

    .line 163
    aget v4, v4, v1

    sub-float v5, p1, v4

    .line 164
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 165
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->threshold:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_2c

    cmpl-float v6, v0, v2

    if-eqz v6, :cond_2a

    cmpg-float v6, v5, v0

    if-gez v6, :cond_2c

    :cond_2a
    move v3, v4

    move v0, v5

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2f
    cmpl-float v0, v0, v2

    if-nez v0, :cond_34

    goto :goto_35

    :cond_34
    move p1, v3

    :cond_35
    :goto_35
    return p1
.end method
