.class public final Lᐧⁱ/ˉʿ;
.super Lˋˋ/ᴵˑ;
.source "SourceFile"


# instance fields
.field public final ˈ:[Ljava/lang/String;

.field public final ˑﹳ:[F

.field public final synthetic ᵎﹶ:Lᐧⁱ/ˏי;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lᐧⁱ/ˏי;[Ljava/lang/String;[F)V
    .locals 0

    iput-object p1, p0, Lᐧⁱ/ˉʿ;->ᵎﹶ:Lᐧⁱ/ˏי;

    invoke-direct {p0}, Lˋˋ/ᴵˑ;-><init>()V

    iput-object p2, p0, Lᐧⁱ/ˉʿ;->ˈ:[Ljava/lang/String;

    iput-object p3, p0, Lᐧⁱ/ˉʿ;->ˑﹳ:[F

    return-void
.end method


# virtual methods
.method public final ᵔᵢ(Landroid/view/ViewGroup;I)Lˋˋ/ʼـ;
    .locals 2

    iget-object p2, p0, Lᐧⁱ/ˉʿ;->ᵎﹶ:Lᐧⁱ/ˏי;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0040

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lᐧⁱ/ʼᐧ;

    invoke-direct {p2, p1}, Lᐧⁱ/ʼᐧ;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˉʿ;->ˈ:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final ﾞᴵ(Lˋˋ/ʼـ;I)V
    .locals 4

    .prologue
    check-cast p1, Lᐧⁱ/ʼᐧ;

    iget-object v0, p1, Lᐧⁱ/ʼᐧ;->ˈⁱ:Landroid/view/View;

    iget-object v1, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v2, p0, Lᐧⁱ/ˉʿ;->ˈ:[Ljava/lang/String;

    array-length v3, v2

    if-ge p2, v3, :cond_0

    iget-object p1, p1, Lᐧⁱ/ʼᐧ;->ﹳـ:Landroid/widget/TextView;

    aget-object v2, v2, p2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget p1, p0, Lᐧⁱ/ˉʿ;->ﾞᴵ:I

    const/4 v2, 0x0

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance p1, Lᐧⁱ/ﾞʻ;

    invoke-direct {p1, p0, p2}, Lᐧⁱ/ﾞʻ;-><init>(Lᐧⁱ/ˉʿ;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
