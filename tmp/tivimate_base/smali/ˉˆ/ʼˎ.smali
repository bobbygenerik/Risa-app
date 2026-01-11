.class public final Lˉˆ/ʼˎ;
.super Lˉˆ/ˎᐧ;
.source "SourceFile"


# instance fields
.field public final synthetic ٴʼ:I

.field public final synthetic ᵎˊ:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˉˆ/ʼˎ;->ٴʼ:I

    iput-object p1, p0, Lˉˆ/ʼˎ;->ᵎˊ:Landroid/view/View;

    invoke-direct {p0, p1}, Lˉˆ/ˎᐧ;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lˉˆ/ˆʾ;Lˉˆ/ˆʾ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˉˆ/ʼˎ;->ٴʼ:I

    iput-object p1, p0, Lˉˆ/ʼˎ;->ᵎˊ:Landroid/view/View;

    invoke-direct {p0, p2}, Lˉˆ/ˎᐧ;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 2

    .prologue
    iget v0, p0, Lˉˆ/ʼˎ;->ٴʼ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˆ/ʼˎ;->ᵎˊ:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->ᵎˊ:Lᵔʾ/ʼˎ;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->ˉٴ:Lᵔʾ/ﾞʻ;

    invoke-interface {v1, v0}, Lᵔʾ/ʼˎ;->ʽ(Lᵔʾ/ﾞʻ;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˉˆ/ʼˎ;->ⁱˊ()Lᵔʾ/ʼʼ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lᵔʾ/ʼʼ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lˉˆ/ʼˎ;->ᵎˊ:Landroid/view/View;

    check-cast v0, Lˉˆ/ˆʾ;

    iget-object v0, v0, Lˉˆ/ˆʾ;->ˈٴ:Lˉˆ/ٴﹶ;

    invoke-virtual {v0}, Lˉˆ/ٴﹶ;->ﾞʻ()Z

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ˈ()Z
    .locals 2

    .prologue
    iget v0, p0, Lˉˆ/ʼˎ;->ٴʼ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lˉˆ/ˎᐧ;->ˈ()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lˉˆ/ʼˎ;->ᵎˊ:Landroid/view/View;

    check-cast v0, Lˉˆ/ˆʾ;

    iget-object v0, v0, Lˉˆ/ˆʾ;->ˈٴ:Lˉˆ/ٴﹶ;

    iget-object v1, v0, Lˉˆ/ٴﹶ;->ﹳـ:Lˉˆ/ᵔᵢ;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lˉˆ/ٴﹶ;->ˑﹳ()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()Lᵔʾ/ʼʼ;
    .locals 1

    .prologue
    iget v0, p0, Lˉˆ/ʼˎ;->ٴʼ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˆ/ʼˎ;->ᵎˊ:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->ˆﾞ:Lᵔʾ/ⁱˊ;

    if-eqz v0, :cond_0

    check-cast v0, Lˉˆ/ᵎﹶ;

    iget-object v0, v0, Lˉˆ/ᵎﹶ;->ﹳٴ:Lˉˆ/ٴﹶ;

    iget-object v0, v0, Lˉˆ/ٴﹶ;->ـˏ:Lˉˆ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lᵔʾ/יـ;->ﹳٴ()Lᵔʾ/ﹳᐧ;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˉˆ/ʼˎ;->ᵎˊ:Landroid/view/View;

    check-cast v0, Lˉˆ/ˆʾ;

    iget-object v0, v0, Lˉˆ/ˆʾ;->ˈٴ:Lˉˆ/ٴﹶ;

    iget-object v0, v0, Lˉˆ/ٴﹶ;->ʼˈ:Lˉˆ/ﾞᴵ;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lᵔʾ/יـ;->ﹳٴ()Lᵔʾ/ﹳᐧ;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
