.class public final Landroidx/leanback/widget/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public ʾˋ:Z

.field public final synthetic ᴵˊ:Landroidx/leanback/widget/ˊʻ;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ˊʻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ˈٴ;->ᴵˊ:Landroidx/leanback/widget/ˊʻ;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/leanback/widget/ˈٴ;->ʾˋ:Z

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ˈٴ;->ᴵˊ:Landroidx/leanback/widget/ˊʻ;

    iget-object v1, v0, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    iget-object v0, v0, Landroidx/leanback/widget/ˊʻ;->ˈ:Landroidx/leanback/widget/VerticalGridView;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ـˏ:Z

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x17

    if-eq p2, v3, :cond_1

    const/16 v3, 0x42

    if-eq p2, v3, :cond_1

    const/16 v3, 0xa0

    if-eq p2, v3, :cond_1

    const/16 v3, 0x63

    if-eq p2, v3, :cond_1

    const/16 v3, 0x64

    if-eq p2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ˈʿ;

    iget-object p2, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {p2}, Landroidx/leanback/widget/ʾᵎ;->ˈ()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget p2, p2, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    const/16 v0, 0x8

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Landroidx/leanback/widget/ˈٴ;->ʾˋ:Z

    if-eqz p2, :cond_6

    iput-boolean v2, p0, Landroidx/leanback/widget/ˈٴ;->ʾˋ:Z

    invoke-virtual {v1, p1, v2}, Landroidx/leanback/widget/ˑٴ;->ⁱˊ(Landroidx/leanback/widget/ˈʿ;Z)V

    return v2

    :cond_4
    iget-boolean p2, p0, Landroidx/leanback/widget/ˈٴ;->ʾˋ:Z

    if-nez p2, :cond_6

    iput-boolean v3, p0, Landroidx/leanback/widget/ˈٴ;->ʾˋ:Z

    invoke-virtual {v1, p1, v3}, Landroidx/leanback/widget/ˑٴ;->ⁱˊ(Landroidx/leanback/widget/ˈʿ;Z)V

    return v2

    :cond_5
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    return v3

    :cond_6
    :goto_1
    return v2
.end method
