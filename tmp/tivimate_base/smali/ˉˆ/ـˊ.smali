.class public final Lˉˆ/ـˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public final synthetic ﹳٴ:Lˉˆ/ʿـ;


# direct methods
.method public constructor <init>(Lˉˆ/ʿـ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˆ/ـˊ;->ﹳٴ:Lˉˆ/ʿـ;

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    iget-object p1, p0, Lˉˆ/ـˊ;->ﹳٴ:Lˉˆ/ʿـ;

    iget-object v0, p1, Lˉˆ/ʿـ;->ˊˋ:Lˉˆ/ᐧˎ;

    iget-object v1, p1, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lˉˆ/ʿـ;->ˈⁱ:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lˉˆ/ᐧˎ;->run()V

    :cond_1
    return-void
.end method
