.class public final Lʻᐧ/יـ;
.super Lˋˋ/ʿ;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

.field public final ﹳٴ:Lʻᐧ/ـˆ;


# direct methods
.method public constructor <init>(Lʻᐧ/ـˆ;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻᐧ/יـ;->ﹳٴ:Lʻᐧ/ـˆ;

    iput-object p2, p0, Lʻᐧ/יـ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lʻᐧ/יـ;->ʽ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ʽ(II)V
    .locals 0

    invoke-virtual {p0}, Lʻᐧ/יـ;->ᵎﹶ()V

    return-void
.end method

.method public final ˈ(II)V
    .locals 0

    invoke-virtual {p0}, Lʻᐧ/יـ;->ᵎﹶ()V

    return-void
.end method

.method public final ˑﹳ(II)V
    .locals 0

    invoke-virtual {p0}, Lʻᐧ/יـ;->ᵎﹶ()V

    return-void
.end method

.method public final ᵎﹶ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʻᐧ/יـ;->ﹳٴ:Lʻᐧ/ـˆ;

    iget-object v1, v0, Lˋˋ/ᴵˑ;->ﹳٴ:Lˋˋ/ˉـ;

    invoke-virtual {v1, p0}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v1, p0, Lʻᐧ/יـ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lʻᐧ/ـˆ;->ᵔﹳ(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lʻᐧ/יـ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ(I)V

    :cond_0
    return-void
.end method

.method public final ⁱˊ(IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lʻᐧ/יـ;->ᵎﹶ()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    invoke-virtual {p0}, Lʻᐧ/יـ;->ᵎﹶ()V

    return-void
.end method
