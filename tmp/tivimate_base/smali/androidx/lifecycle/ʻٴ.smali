.class public final Landroidx/lifecycle/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:Landroidx/lifecycle/יـ;

.field public ﹳٴ:Landroidx/lifecycle/ᵔʾ;


# virtual methods
.method public final ﹳٴ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 3

    .prologue
    invoke-virtual {p2}, Landroidx/lifecycle/ˉʿ;->ﹳٴ()Landroidx/lifecycle/ᵔʾ;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    iget-object v1, p0, Landroidx/lifecycle/ʻٴ;->ⁱˊ:Landroidx/lifecycle/יـ;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/יـ;->ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V

    iput-object v0, p0, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    return-void
.end method
