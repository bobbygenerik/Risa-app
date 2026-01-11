.class public final Lʻˈ/ˑﹳ;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʻˈ/ˑﹳ;->ﹳٴ:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p2, p0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getChangingConfigurations()I
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    iget v0, p0, Lʻˈ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lᴵﹶ/ⁱˊ;

    invoke-direct {v0, p0}, Lᴵﹶ/ⁱˊ;-><init>(Lʻˈ/ˑﹳ;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lʻˈ/ﾞᴵ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lʻˈ/ﾞᴵ;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lʻˈ/ﾞᴵ;->ˊʻ:Lʻˈ/ʽ;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    iget v0, p0, Lʻˈ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lᴵﹶ/ⁱˊ;

    invoke-direct {p1, p0}, Lᴵﹶ/ⁱˊ;-><init>(Lʻˈ/ˑﹳ;)V

    return-object p1

    :pswitch_0
    new-instance v0, Lʻˈ/ﾞᴵ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lʻˈ/ﾞᴵ;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lʻˈ/ﾞᴵ;->ˊʻ:Lʻˈ/ʽ;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    iget v0, p0, Lʻˈ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Lʻˈ/ﾞᴵ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lʻˈ/ﾞᴵ;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    iget-object p2, v0, Lʻˈ/ﾞᴵ;->ˊʻ:Lʻˈ/ʽ;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
