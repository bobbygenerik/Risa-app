.class public Landroidx/leanback/widget/TitleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Landroidx/leanback/widget/SearchOrbView;

.field public final ʾˋ:Landroid/widget/ImageView;

.field public final ˈٴ:I

.field public final ˊʻ:Landroidx/leanback/widget/ˑ;

.field public final ᴵˊ:Landroid/widget/TextView;

.field public ᴵᵔ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400aa

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x6

    iput p2, p0, Landroidx/leanback/widget/TitleView;->ˈٴ:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/leanback/widget/TitleView;->ᴵᵔ:Z

    new-instance v0, Landroidx/leanback/widget/ˑ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/TitleView;->ˊʻ:Landroidx/leanback/widget/ˑ;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e00ca

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b03ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/leanback/widget/TitleView;->ʾˋ:Landroid/widget/ImageView;

    const v0, 0x7f0b03b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/leanback/widget/TitleView;->ᴵˊ:Landroid/widget/TextView;

    const v0, 0x7f0b03ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/SearchOrbView;

    iput-object p1, p0, Landroidx/leanback/widget/TitleView;->ʽʽ:Landroidx/leanback/widget/SearchOrbView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/TitleView;->ʾˋ:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceColors()Landroidx/leanback/widget/ˑʼ;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/TitleView;->ʽʽ:Landroidx/leanback/widget/SearchOrbView;

    invoke-virtual {v0}, Landroidx/leanback/widget/SearchOrbView;->getOrbColors()Landroidx/leanback/widget/ˑʼ;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/TitleView;->ʽʽ:Landroidx/leanback/widget/SearchOrbView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/TitleView;->ᴵˊ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleViewAdapter()Landroidx/leanback/widget/ʼـ;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/TitleView;->ˊʻ:Landroidx/leanback/widget/ˑ;

    return-object v0
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/TitleView;->ʾˋ:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v1, 0x8

    iget-object v2, p0, Landroidx/leanback/widget/TitleView;->ᴵˊ:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroidx/leanback/widget/TitleView;->ᴵᵔ:Z

    iget-object v1, p0, Landroidx/leanback/widget/TitleView;->ʽʽ:Landroidx/leanback/widget/SearchOrbView;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/SearchOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Landroidx/leanback/widget/TitleView;->ᴵᵔ:Z

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/leanback/widget/TitleView;->ˈٴ:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSearchAffordanceColors(Landroidx/leanback/widget/ˑʼ;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/TitleView;->ʽʽ:Landroidx/leanback/widget/SearchOrbView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/ˑʼ;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/TitleView;->ᴵˊ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/leanback/widget/TitleView;->ʾˋ:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
