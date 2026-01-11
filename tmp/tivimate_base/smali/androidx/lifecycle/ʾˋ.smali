.class public final Landroidx/lifecycle/ʾˋ;
.super Landroidx/lifecycle/ᴵˊ;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/יـ;


# instance fields
.field public final synthetic ˊʻ:Landroidx/lifecycle/ʽʽ;

.field public final ᴵᵔ:Landroidx/lifecycle/ʽﹳ;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ʽʽ;Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ٴᵢ;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/ʾˋ;->ˊʻ:Landroidx/lifecycle/ʽʽ;

    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/ᴵˊ;-><init>(Landroidx/lifecycle/ʽʽ;Landroidx/lifecycle/ٴᵢ;)V

    iput-object p2, p0, Landroidx/lifecycle/ʾˋ;->ᴵᵔ:Landroidx/lifecycle/ʽﹳ;

    return-void
.end method


# virtual methods
.method public final ʽ(Landroidx/lifecycle/ʽﹳ;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ʾˋ;->ᴵᵔ:Landroidx/lifecycle/ʽﹳ;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˈ()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/ʾˋ;->ᴵᵔ:Landroidx/lifecycle/ʽﹳ;

    invoke-interface {v0}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v0

    iget-object v0, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ˈٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result v0

    return v0
.end method

.method public final ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 2

    .prologue
    iget-object p1, p0, Landroidx/lifecycle/ʾˋ;->ᴵᵔ:Landroidx/lifecycle/ʽﹳ;

    invoke-interface {p1}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p2

    iget-object p2, p2, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v0, Landroidx/lifecycle/ᵔʾ;->ʾˋ:Landroidx/lifecycle/ᵔʾ;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/ʾˋ;->ˊʻ:Landroidx/lifecycle/ʽʽ;

    iget-object p2, p0, Landroidx/lifecycle/ᴵˊ;->ʾˋ:Landroidx/lifecycle/ٴᵢ;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ʽʽ;->ˆʾ(Landroidx/lifecycle/ٴᵢ;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/ʾˋ;->ˈ()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ᴵˊ;->ﹳٴ(Z)V

    invoke-interface {p1}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v0

    iget-object v0, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ⁱˊ()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/ʾˋ;->ᴵᵔ:Landroidx/lifecycle/ʽﹳ;

    invoke-interface {v0}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    return-void
.end method
