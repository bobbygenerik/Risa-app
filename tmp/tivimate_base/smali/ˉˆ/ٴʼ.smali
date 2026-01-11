.class public final Lˉˆ/ٴʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˉˆ/ˈʿ;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public ʽʽ:Ljava/lang/CharSequence;

.field public ʾˋ:Lᵔᵢ/ᵔᵢ;

.field public final synthetic ˈٴ:Lˉˆ/ˑٴ;

.field public ᴵˊ:Lˉˆ/ᵎˊ;


# direct methods
.method public constructor <init>(Lˉˆ/ˑٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˆ/ٴʼ;->ˈٴ:Lˉˆ/ˑٴ;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ٴʼ;->ʾˋ:Lᵔᵢ/ᵔᵢ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lᵔᵢ/ᵔᵢ;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lˉˆ/ٴʼ;->ʾˋ:Lᵔᵢ/ᵔᵢ;

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    iget-object p1, p0, Lˉˆ/ٴʼ;->ˈٴ:Lˉˆ/ˑٴ;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˉˆ/ٴʼ;->ᴵˊ:Lˉˆ/ᵎˊ;

    invoke-virtual {v0, p2}, Lˉˆ/ᵎˊ;->getItemId(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Lˉˆ/ٴʼ;->dismiss()V

    return-void
.end method

.method public final ʼˎ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    nop

    return-void
.end method

.method public final ʼᐧ(Landroid/widget/ListAdapter;)V
    .locals 0

    check-cast p1, Lˉˆ/ᵎˊ;

    iput-object p1, p0, Lˉˆ/ٴʼ;->ᴵˊ:Lˉˆ/ᵎˊ;

    return-void
.end method

.method public final ʽ()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ˆʾ(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    nop

    return-void
.end method

.method public final ˉʿ(II)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˉˆ/ٴʼ;->ᴵˊ:Lˉˆ/ᵎˊ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lᵔᵢ/ᵎﹶ;

    iget-object v1, p0, Lˉˆ/ٴʼ;->ˈٴ:Lˉˆ/ˑٴ;

    invoke-virtual {v1}, Lˉˆ/ˑٴ;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lᵔᵢ/ᵎﹶ;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lˉˆ/ٴʼ;->ʽʽ:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lᵔᵢ/ᵎﹶ;->setTitle(Ljava/lang/CharSequence;)Lᵔᵢ/ᵎﹶ;

    :cond_1
    iget-object v2, p0, Lˉˆ/ٴʼ;->ᴵˊ:Lˉˆ/ᵎˊ;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    iget-object v3, v0, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iput-object v2, v3, Lᵔᵢ/ˈ;->ˉʿ:Ljava/lang/Object;

    iput-object p0, v3, Lᵔᵢ/ˈ;->ᵔʾ:Landroid/content/DialogInterface$OnClickListener;

    iput v1, v3, Lᵔᵢ/ˈ;->יـ:I

    const/4 v1, 0x1

    iput-boolean v1, v3, Lᵔᵢ/ˈ;->ﹳᐧ:Z

    invoke-virtual {v0}, Lᵔᵢ/ᵎﹶ;->create()Lᵔᵢ/ᵔᵢ;

    move-result-object v0

    iput-object v0, p0, Lˉˆ/ٴʼ;->ʾˋ:Lᵔᵢ/ᵔᵢ;

    iget-object v0, v0, Lᵔᵢ/ᵔᵢ;->ˊʻ:Lᵔᵢ/ﾞᴵ;

    iget-object v0, v0, Lᵔᵢ/ﾞᴵ;->ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p1, p0, Lˉˆ/ٴʼ;->ʾˋ:Lᵔᵢ/ᵔᵢ;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final ˉˆ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lˉˆ/ٴʼ;->ʽʽ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final ٴﹶ(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    nop

    return-void
.end method

.method public final ᵎﹶ(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lˉˆ/ٴʼ;->ʽʽ:Ljava/lang/CharSequence;

    return-void
.end method

.method public final ᵔʾ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ٴʼ;->ʾˋ:Lᵔᵢ/ᵔᵢ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞʻ(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    nop

    return-void
.end method
