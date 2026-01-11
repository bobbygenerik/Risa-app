.class public final Lᵔʾ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔʾ/ʽﹳ;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public ʽʽ:Lᵔʾ/ˆʾ;

.field public ʾˋ:Landroid/content/Context;

.field public ˈٴ:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public ˊʻ:Lᵔʾ/ˑﹳ;

.field public ᴵˊ:Landroid/view/LayoutInflater;

.field public ᴵᵔ:Lᵔʾ/ˏי;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔʾ/ﾞᴵ;->ʾˋ:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lᵔʾ/ﾞᴵ;->ᴵˊ:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lᵔʾ/ﾞᴵ;->ʽʽ:Lᵔʾ/ˆʾ;

    iget-object p2, p0, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    invoke-virtual {p2, p3}, Lᵔʾ/ˑﹳ;->ⁱˊ(I)Lᵔʾ/ﾞʻ;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lᵔʾ/ˆʾ;->ᵔﹳ(Landroid/view/MenuItem;Lᵔʾ/ʽﹳ;I)Z

    return-void
.end method

.method public final ʼˎ(Landroid/content/Context;Lᵔʾ/ˆʾ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔʾ/ﾞᴵ;->ʾˋ:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lᵔʾ/ﾞᴵ;->ʾˋ:Landroid/content/Context;

    iget-object v0, p0, Lᵔʾ/ﾞᴵ;->ᴵˊ:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lᵔʾ/ﾞᴵ;->ᴵˊ:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lᵔʾ/ﾞᴵ;->ʽʽ:Lᵔʾ/ˆʾ;

    iget-object p1, p0, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lᵔʾ/ˑﹳ;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final ʽ(Lᵔʾ/ˆʾ;Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔʾ/ﾞᴵ;->ᴵᵔ:Lᵔʾ/ˏי;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lᵔʾ/ˏי;->ʽ(Lᵔʾ/ˆʾ;Z)V

    :cond_0
    return-void
.end method

.method public final ˆʾ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lᵔʾ/ˑﹳ;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final ٴﹶ(Lᵔʾ/ﾞʻ;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ᵎﹶ(Lᵔʾ/ʾˋ;)Z
    .locals 5

    .prologue
    invoke-virtual {p1}, Lᵔʾ/ˆʾ;->hasVisibleItems()Z

    move-result v0

    iget-object v1, p1, Lᵔʾ/ˆʾ;->ﹳٴ:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lᵔʾ/ٴﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lᵔʾ/ٴﹶ;->ʾˋ:Lᵔʾ/ʾˋ;

    new-instance v2, Lᵔᵢ/ᵎﹶ;

    invoke-direct {v2, v1}, Lᵔᵢ/ᵎﹶ;-><init>(Landroid/content/Context;)V

    new-instance v3, Lᵔʾ/ﾞᴵ;

    invoke-virtual {v2}, Lᵔᵢ/ᵎﹶ;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lᵔʾ/ﾞᴵ;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lᵔʾ/ٴﹶ;->ʽʽ:Lᵔʾ/ﾞᴵ;

    iput-object v0, v3, Lᵔʾ/ﾞᴵ;->ᴵᵔ:Lᵔʾ/ˏי;

    invoke-virtual {p1, v3, v1}, Lᵔʾ/ˆʾ;->ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V

    iget-object v1, v0, Lᵔʾ/ٴﹶ;->ʽʽ:Lᵔʾ/ﾞᴵ;

    iget-object v3, v1, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    if-nez v3, :cond_1

    new-instance v3, Lᵔʾ/ˑﹳ;

    invoke-direct {v3, v1}, Lᵔʾ/ˑﹳ;-><init>(Lᵔʾ/ﾞᴵ;)V

    iput-object v3, v1, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    :cond_1
    iget-object v1, v1, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    iget-object v3, v2, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iput-object v1, v3, Lᵔᵢ/ˈ;->ˉʿ:Ljava/lang/Object;

    iput-object v0, v3, Lᵔᵢ/ˈ;->ᵔʾ:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p1, Lᵔʾ/ˆʾ;->ˉˆ:Landroid/view/View;

    if-eqz v1, :cond_2

    iput-object v1, v3, Lᵔᵢ/ˈ;->ˑﹳ:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lᵔʾ/ˆʾ;->ᵔʾ:Landroid/graphics/drawable/Drawable;

    iput-object v1, v3, Lᵔᵢ/ˈ;->ʽ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lᵔʾ/ˆʾ;->ˉʿ:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lᵔᵢ/ᵎﹶ;->setTitle(Ljava/lang/CharSequence;)Lᵔᵢ/ᵎﹶ;

    :goto_0
    iput-object v0, v3, Lᵔᵢ/ˈ;->ٴﹶ:Lᵔʾ/ٴﹶ;

    invoke-virtual {v2}, Lᵔᵢ/ᵎﹶ;->create()Lᵔᵢ/ᵔᵢ;

    move-result-object v1

    iput-object v1, v0, Lᵔʾ/ٴﹶ;->ᴵˊ:Lᵔᵢ/ᵔᵢ;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lᵔʾ/ٴﹶ;->ᴵˊ:Lᵔᵢ/ᵔᵢ;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lᵔʾ/ٴﹶ;->ᴵˊ:Lᵔᵢ/ᵔᵢ;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lᵔʾ/ﾞᴵ;->ᴵᵔ:Lᵔʾ/ˏי;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lᵔʾ/ˏי;->ˉˆ(Lᵔʾ/ˆʾ;)Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final ᵔᵢ(Lᵔʾ/ˏי;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final ⁱˊ(Lᵔʾ/ﾞʻ;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
