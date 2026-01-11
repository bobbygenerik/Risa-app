.class public final Lˉˆ/ـʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final ʾˋ:Lᵔʾ/ﹳٴ;

.field public final synthetic ᴵˊ:Lˉˆ/ˏⁱ;


# direct methods
.method public constructor <init>(Lˉˆ/ˏⁱ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˆ/ـʻ;->ᴵˊ:Lˉˆ/ˏⁱ;

    new-instance v0, Lᵔʾ/ﹳٴ;

    iget-object v1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lˉˆ/ˏⁱ;->ᵔᵢ:Ljava/lang/CharSequence;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x1000

    iput v2, v0, Lᵔʾ/ﹳٴ;->ˑﹳ:I

    iput v2, v0, Lᵔʾ/ﹳٴ;->ᵎﹶ:I

    const/4 v2, 0x0

    iput-object v2, v0, Lᵔʾ/ﹳٴ;->ﾞʻ:Landroid/content/res/ColorStateList;

    iput-object v2, v0, Lᵔʾ/ﹳٴ;->ˉʿ:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lᵔʾ/ﹳٴ;->ᵔʾ:Z

    iput-boolean v2, v0, Lᵔʾ/ﹳٴ;->ˉˆ:Z

    const/16 v2, 0x10

    iput v2, v0, Lᵔʾ/ﹳٴ;->ʼᐧ:I

    iput-object v1, v0, Lᵔʾ/ﹳٴ;->ʼˎ:Landroid/content/Context;

    iput-object p1, v0, Lᵔʾ/ﹳٴ;->ﹳٴ:Ljava/lang/CharSequence;

    iput-object v0, p0, Lˉˆ/ـʻ;->ʾˋ:Lᵔʾ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    iget-object p1, p0, Lˉˆ/ـʻ;->ᴵˊ:Lˉˆ/ˏⁱ;

    iget-object v0, p1, Lˉˆ/ˏⁱ;->ٴﹶ:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lˉˆ/ˏⁱ;->ﾞʻ:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object v1, p0, Lˉˆ/ـʻ;->ʾˋ:Lᵔʾ/ﹳٴ;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
