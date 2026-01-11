.class public final Landroidx/lifecycle/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/יـ;
.implements Lᴵי/ـˆ;


# instance fields
.field public final ʾˋ:Landroidx/lifecycle/ـˆ;

.field public final ᴵˊ:Lˈי/ᵔᵢ;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ـˆ;Lˈי/ᵔᵢ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ʼᐧ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    iput-object p2, p0, Landroidx/lifecycle/ʼᐧ;->ᴵˊ:Lˈי/ᵔᵢ;

    iget-object p1, p1, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v0, Landroidx/lifecycle/ᵔʾ;->ʾˋ:Landroidx/lifecycle/ᵔʾ;

    if-ne p1, v0, :cond_0

    sget-object p1, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {p2, p1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    check-cast p1, Lᴵי/ᴵˑ;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ʾˋ()Lˈי/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/ʼᐧ;->ᴵˊ:Lˈי/ᵔᵢ;

    return-object v0
.end method

.method public final ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 1

    .prologue
    iget-object p1, p0, Landroidx/lifecycle/ʼᐧ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    iget-object p2, p1, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v0, Landroidx/lifecycle/ᵔʾ;->ʾˋ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gtz p2, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    sget-object p1, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    iget-object p2, p0, Landroidx/lifecycle/ʼᐧ;->ᴵˊ:Lˈי/ᵔᵢ;

    invoke-interface {p2, p1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    check-cast p1, Lᴵי/ᴵˑ;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method
