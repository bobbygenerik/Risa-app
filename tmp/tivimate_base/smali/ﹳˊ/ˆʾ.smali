.class public final Lﹳˊ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lᴵˈ/ˈ;

.field public final ﹳٴ:Lﹳˊ/ﹳٴ;


# direct methods
.method public synthetic constructor <init>(Lﹳˊ/ﹳٴ;Lᴵˈ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˊ/ˆʾ;->ﹳٴ:Lﹳˊ/ﹳٴ;

    iput-object p2, p0, Lﹳˊ/ˆʾ;->ⁱˊ:Lᴵˈ/ˈ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lﹳˊ/ˆʾ;

    if-eqz v1, :cond_0

    check-cast p1, Lﹳˊ/ˆʾ;

    iget-object v1, p0, Lﹳˊ/ˆʾ;->ﹳٴ:Lﹳˊ/ﹳٴ;

    iget-object v2, p1, Lﹳˊ/ˆʾ;->ﹳٴ:Lﹳˊ/ﹳٴ;

    invoke-static {v1, v2}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lﹳˊ/ˆʾ;->ⁱˊ:Lᴵˈ/ˈ;

    iget-object p1, p1, Lﹳˊ/ˆʾ;->ⁱˊ:Lᴵˈ/ˈ;

    invoke-static {v1, p1}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lﹳˊ/ˆʾ;->ﹳٴ:Lﹳˊ/ﹳٴ;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lﹳˊ/ˆʾ;->ⁱˊ:Lᴵˈ/ˈ;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lˑʼ/ᵎˊ;

    invoke-direct {v0, p0}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;)V

    const-string v1, "key"

    iget-object v2, p0, Lﹳˊ/ˆʾ;->ﹳٴ:Lﹳˊ/ﹳٴ;

    invoke-virtual {v0, v2, v1}, Lˑʼ/ᵎˊ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feature"

    iget-object v2, p0, Lﹳˊ/ˆʾ;->ⁱˊ:Lᴵˈ/ˈ;

    invoke-virtual {v0, v2, v1}, Lˑʼ/ᵎˊ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lˑʼ/ᵎˊ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
