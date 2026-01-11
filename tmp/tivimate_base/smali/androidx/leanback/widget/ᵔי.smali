.class public final Landroidx/leanback/widget/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ʾˋ:Landroidx/leanback/widget/ˈʿ;

.field public final synthetic ᴵˊ:Landroidx/leanback/widget/ˑٴ;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ˑٴ;Landroidx/leanback/widget/ˈʿ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ᵔי;->ᴵˊ:Landroidx/leanback/widget/ˑٴ;

    iput-object p2, p0, Landroidx/leanback/widget/ᵔי;->ʾˋ:Landroidx/leanback/widget/ˈʿ;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    iget-object p1, p0, Landroidx/leanback/widget/ᵔי;->ᴵˊ:Landroidx/leanback/widget/ˑٴ;

    iget-object v0, p1, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ˊʻ;

    iget-object p1, p1, Landroidx/leanback/widget/ˊʻ;->ٴﹶ:Landroidx/leanback/widget/ᴵᵔ;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔי;->ʾˋ:Landroidx/leanback/widget/ˈʿ;

    iget-object v0, v0, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    invoke-interface {p1, v0}, Landroidx/leanback/widget/ᴵᵔ;->ﹳٴ(Landroidx/leanback/widget/ʾᵎ;)V

    :cond_1
    return-void
.end method
