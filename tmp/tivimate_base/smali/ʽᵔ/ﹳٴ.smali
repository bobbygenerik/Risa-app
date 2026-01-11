.class public abstract Lʽᵔ/ﹳٴ;
.super Lʻᐧ/ˏי;
.source "SourceFile"


# instance fields
.field public ـᵢ:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lʻᐧ/ˏי;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʿ()Landroid/content/Context;
    .locals 4

    .prologue
    iget-object v0, p0, Lʽᵔ/ﹳٴ;->ـᵢ:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0404fb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    const v0, 0x7f1401b3

    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lʽᵔ/ﹳٴ;->ـᵢ:Landroid/view/ContextThemeWrapper;

    :cond_1
    iget-object v0, p0, Lʽᵔ/ﹳٴ;->ـᵢ:Landroid/view/ContextThemeWrapper;

    return-object v0
.end method

.method public final ˈـ()Lˑʼ/ᴵᵔ;
    .locals 1

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    return-object v0
.end method

.method public final ˑˆ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    const v0, 0x7f0e00da

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ᵔᵢ;->setWindowAlignment(I)V

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/ᵔᵢ;->setFocusScrollStrategy(I)V

    new-instance p2, Lʻᐧ/ᵢˏ;

    invoke-direct {p2, p1}, Lʻᐧ/ᵢˏ;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lˋˋ/יﹳ;)V

    return-object p1
.end method
