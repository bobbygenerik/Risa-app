.class public final Lˑʼ/ـﹶ;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˑʼ/ـﹶ;->ﹳٴ:I

    iput-object p2, p0, Lˑʼ/ـﹶ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    iget p1, p0, Lˑʼ/ـﹶ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lˑʼ/ـﹶ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lﹳʽ/ˊʻ;

    iget-object v0, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ˑٴ;

    iget v1, v0, Landroidx/leanback/widget/ˑٴ;->ˏי:F

    iget-object v0, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    iget-object p1, p1, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lˑʼ/ـﹶ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1

    :pswitch_1
    iget-object p1, p0, Lˑʼ/ـﹶ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
