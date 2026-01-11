.class public final Landroidx/leanback/widget/ʿᵢ;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroidx/leanback/widget/ʿᵢ;->ﹳٴ:I

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ʿᵢ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/view/View;

    sget-object v0, Lˑʿ/ٴᵢ;->ﹳٴ:Lˑʿ/ᵔי;

    invoke-virtual {v0, p1}, Lˈˊ/ᵔʾ;->ᵔʾ(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_2
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_3
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_4
    check-cast p1, Lˑʿ/ﾞᴵ;

    const/4 p1, 0x0

    return-object p1

    :pswitch_5
    check-cast p1, Lˑʿ/ﾞᴵ;

    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_7
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_8
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_9
    check-cast p1, Lˑʿ/ˈ;

    const/4 p1, 0x0

    return-object p1

    :pswitch_a
    check-cast p1, Lˑʿ/ˈ;

    const/4 p1, 0x0

    return-object p1

    :pswitch_b
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget p1, p1, Landroidx/appcompat/widget/SwitchCompat;->ʿᵢ:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Landroidx/leanback/widget/ʾˊ;

    invoke-virtual {p1}, Landroidx/leanback/widget/ʾˊ;->getStreamPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    check-cast p1, Landroidx/leanback/widget/ᵎᵔ;

    iget p1, p1, Landroidx/leanback/widget/ᵎᵔ;->ʽ:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_e
    check-cast p1, Landroidx/leanback/widget/ᵎᵔ;

    iget p1, p1, Landroidx/leanback/widget/ᵎᵔ;->ˑﹳ:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p1, Landroidx/leanback/widget/ᵎᵔ;

    iget p1, p1, Landroidx/leanback/widget/ᵎᵔ;->ﹳٴ:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ʿᵢ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sget-object v0, Lˑʿ/ٴᵢ;->ﹳٴ:Lˑʿ/ᵔי;

    invoke-virtual {v0, p1, p2}, Lˈˊ/ᵔʾ;->ᵢˏ(Landroid/view/View;F)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {p1, v0, p2, v1, v2}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {p1, v0, p2, v1, v2}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    return-void

    :pswitch_3
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, v0, v1, v2, p2}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    return-void

    :pswitch_4
    check-cast p1, Lˑʿ/ﾞᴵ;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lˑʿ/ﾞᴵ;->ʽ:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lˑʿ/ﾞᴵ;->ˈ:I

    iget v0, p1, Lˑʿ/ﾞᴵ;->ᵎﹶ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lˑʿ/ﾞᴵ;->ᵎﹶ:I

    iget v1, p1, Lˑʿ/ﾞᴵ;->ﾞᴵ:I

    if-ne v1, v0, :cond_0

    iget-object v0, p1, Lˑʿ/ﾞᴵ;->ˑﹳ:Landroid/view/View;

    iget v1, p1, Lˑʿ/ﾞᴵ;->ﹳٴ:I

    iget v2, p1, Lˑʿ/ﾞᴵ;->ⁱˊ:I

    iget v3, p1, Lˑʿ/ﾞᴵ;->ʽ:I

    invoke-static {v0, v1, v2, v3, p2}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    iput p2, p1, Lˑʿ/ﾞᴵ;->ﾞᴵ:I

    iput p2, p1, Lˑʿ/ﾞᴵ;->ᵎﹶ:I

    :cond_0
    return-void

    :pswitch_5
    check-cast p1, Lˑʿ/ﾞᴵ;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lˑʿ/ﾞᴵ;->ﹳٴ:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lˑʿ/ﾞᴵ;->ⁱˊ:I

    iget v0, p1, Lˑʿ/ﾞᴵ;->ﾞᴵ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lˑʿ/ﾞᴵ;->ﾞᴵ:I

    iget v1, p1, Lˑʿ/ﾞᴵ;->ᵎﹶ:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lˑʿ/ﾞᴵ;->ˑﹳ:Landroid/view/View;

    iget v1, p1, Lˑʿ/ﾞᴵ;->ﹳٴ:I

    iget v2, p1, Lˑʿ/ﾞᴵ;->ʽ:I

    iget v3, p1, Lˑʿ/ﾞᴵ;->ˈ:I

    invoke-static {v0, v1, p2, v2, v3}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    iput p2, p1, Lˑʿ/ﾞᴵ;->ﾞᴵ:I

    iput p2, p1, Lˑʿ/ﾞᴵ;->ᵎﹶ:I

    :cond_1
    return-void

    :pswitch_6
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {p1, v0, p2, v1, v2}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    return-void

    :pswitch_7
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {p1, v0, p2, v1, v2}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    return-void

    :pswitch_8
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, v0, v1, v2, p2}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    return-void

    :pswitch_9
    check-cast p1, Lˑʿ/ˈ;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lˑʿ/ˈ;->ʽ:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lˑʿ/ˈ;->ˈ:I

    iget v0, p1, Lˑʿ/ˈ;->ᵎﹶ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lˑʿ/ˈ;->ᵎﹶ:I

    iget v1, p1, Lˑʿ/ˈ;->ﾞᴵ:I

    if-ne v1, v0, :cond_2

    iget-object v0, p1, Lˑʿ/ˈ;->ˑﹳ:Landroid/view/View;

    iget v1, p1, Lˑʿ/ˈ;->ﹳٴ:I

    iget v2, p1, Lˑʿ/ˈ;->ⁱˊ:I

    iget v3, p1, Lˑʿ/ˈ;->ʽ:I

    invoke-static {v0, v1, v2, v3, p2}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    iput p2, p1, Lˑʿ/ˈ;->ﾞᴵ:I

    iput p2, p1, Lˑʿ/ˈ;->ᵎﹶ:I

    :cond_2
    return-void

    :pswitch_a
    check-cast p1, Lˑʿ/ˈ;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lˑʿ/ˈ;->ﹳٴ:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lˑʿ/ˈ;->ⁱˊ:I

    iget v0, p1, Lˑʿ/ˈ;->ﾞᴵ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lˑʿ/ˈ;->ﾞᴵ:I

    iget v1, p1, Lˑʿ/ˈ;->ᵎﹶ:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lˑʿ/ˈ;->ˑﹳ:Landroid/view/View;

    iget v1, p1, Lˑʿ/ˈ;->ﹳٴ:I

    iget v2, p1, Lˑʿ/ˈ;->ʽ:I

    iget v3, p1, Lˑʿ/ˈ;->ˈ:I

    invoke-static {v0, v1, p2, v2, v3}, Lˑʿ/ٴᵢ;->ﹳٴ(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    iput p2, p1, Lˑʿ/ˈ;->ﾞᴵ:I

    iput p2, p1, Lˑʿ/ˈ;->ᵎﹶ:I

    :cond_3
    return-void

    :pswitch_b
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void

    :pswitch_c
    check-cast p1, Landroidx/leanback/widget/ʾˊ;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ʾˊ;->setStreamPosition(I)V

    return-void

    :pswitch_d
    check-cast p1, Landroidx/leanback/widget/ᵎᵔ;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget v0, p1, Landroidx/leanback/widget/ᵎᵔ;->ᵔᵢ:F

    mul-float/2addr p2, v0

    iget v0, p1, Landroidx/leanback/widget/ᵎᵔ;->ʼˎ:F

    mul-float/2addr p2, v0

    iput p2, p1, Landroidx/leanback/widget/ᵎᵔ;->ʽ:F

    iget-object p1, p1, Landroidx/leanback/widget/ᵎᵔ;->ˆʾ:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_e
    check-cast p1, Landroidx/leanback/widget/ᵎᵔ;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroidx/leanback/widget/ᵎᵔ;->ˑﹳ:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p1, Landroidx/leanback/widget/ᵎᵔ;->ﾞᴵ:F

    iget-object v0, p1, Landroidx/leanback/widget/ᵎᵔ;->ˆʾ:Landroidx/leanback/widget/PagingIndicator;

    iget v1, v0, Landroidx/leanback/widget/PagingIndicator;->ˈⁱ:F

    mul-float/2addr p2, v1

    iput p2, p1, Landroidx/leanback/widget/ᵎᵔ;->ᵎﹶ:F

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_f
    check-cast p1, Landroidx/leanback/widget/ᵎᵔ;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroidx/leanback/widget/ᵎᵔ;->ﹳٴ:F

    invoke-virtual {p1}, Landroidx/leanback/widget/ᵎᵔ;->ﹳٴ()V

    iget-object p1, p1, Landroidx/leanback/widget/ᵎᵔ;->ˆʾ:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
