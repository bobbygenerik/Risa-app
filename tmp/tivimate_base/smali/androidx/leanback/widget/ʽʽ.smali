.class public final Landroidx/leanback/widget/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic ⁱˊ:Landroidx/leanback/widget/ˊʻ;

.field public ﹳٴ:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ˊʻ;Landroidx/leanback/app/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ʽʽ;->ⁱˊ:Landroidx/leanback/widget/ˊʻ;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ʽʽ;->ⁱˊ:Landroidx/leanback/widget/ˊʻ;

    iget-object v1, v0, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    iget-object v0, v0, Landroidx/leanback/widget/ˊʻ;->ˈ:Landroidx/leanback/widget/VerticalGridView;

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->ـˏ:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ˈʿ;

    if-eqz p2, :cond_1

    iput-object p1, p0, Landroidx/leanback/widget/ʽʽ;->ﹳٴ:Landroid/view/View;

    iget-object p1, v0, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/leanback/widget/ʽʽ;->ﹳٴ:Landroid/view/View;

    if-ne p2, p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ˈʿ;->יـ(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/ʽʽ;->ﹳٴ:Landroid/view/View;

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
