.class public final Lⁱᵎ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎﾞ/ˈ;


# instance fields
.field public final ﹳٴ:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱᵎ/ˈ;->ﹳٴ:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˑᵎ/ﹳᐧ;)Z
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lⁱᵎ/ˈ;->ﹳٴ(Lˑᵎ/ﹳᐧ;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn\'t supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ(Lᴵˋ/ˑﹳ;)Lᵎˈ/ʽ;
    .locals 4

    new-instance v0, Lʼˋ/ᵔʾ;

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-direct {v0, p1, p0, v1, v2}, Lʼˋ/ᵔʾ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    new-instance p1, Lᵎˈ/ʽ;

    const/4 v1, -0x2

    const/4 v2, 0x1

    sget-object v3, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-direct {p1, v0, v3, v1, v2}, Lᵎˈ/ʽ;-><init>(Lᴵⁱ/ʼᐧ;Lˈי/ᵔᵢ;II)V

    return-object p1
.end method

.method public final ﹳٴ(Lˑᵎ/ﹳᐧ;)Z
    .locals 0

    .prologue
    iget-object p1, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    invoke-virtual {p1}, Lᴵˋ/ˑﹳ;->ﹳٴ()Landroid/net/NetworkRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
