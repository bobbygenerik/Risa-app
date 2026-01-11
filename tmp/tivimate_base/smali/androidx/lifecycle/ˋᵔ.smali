.class public final Landroidx/lifecycle/ˋᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/יـ;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Ljava/lang/String;

.field public final ᴵˊ:Landroidx/lifecycle/ˑٴ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/lifecycle/ˑٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ˋᵔ;->ʾˋ:Ljava/lang/String;

    iput-object p2, p0, Landroidx/lifecycle/ˋᵔ;->ᴵˊ:Landroidx/lifecycle/ˑٴ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final ʽ(Lˑʼ/ᵎˊ;Landroidx/lifecycle/ـˆ;)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/lifecycle/ˋᵔ;->ʽʽ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ˋᵔ;->ʽʽ:Z

    invoke-virtual {p2, p0}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    iget-object p2, p0, Landroidx/lifecycle/ˋᵔ;->ᴵˊ:Landroidx/lifecycle/ˑٴ;

    iget-object p2, p2, Landroidx/lifecycle/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/ʻٴ;

    iget-object p2, p2, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lʽ/ˈ;

    iget-object v0, p0, Landroidx/lifecycle/ˋᵔ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lˑʼ/ᵎˊ;->ˊˋ(Ljava/lang/String;Lᵎ/ˈ;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 1

    .prologue
    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/ˋᵔ;->ʽʽ:Z

    invoke-interface {p1}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    :cond_0
    return-void
.end method
